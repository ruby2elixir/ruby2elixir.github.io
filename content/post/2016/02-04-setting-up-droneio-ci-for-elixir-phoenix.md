+++
date = "2016-02-04T18:36:00+01:00"
draft = false
title = "Setting Up Drone.io CI for Elixir and Phoenix"
author = "mindreframer"
tags = ["testing", "phoenix"]
+++

Running your CI tests for opensource project on Travis.Ci seems like a no-brainer. Travis offers quite robust integration into Github and boasts with impressive feature set, that's flexible and very convenient.

But their offering for private projects is kinda steep, especially when you're just starting out, like Steve Domin recently noticed.

<!-- {{< tweet 695173772740026368 >}} -->
{{< post_image src="2016/tweet_travisci_private_expensive.png" >}}


There are some great hosted alternatives that are cheaper and might work for you, like


- https://buddy.works/pricing
- https://semaphoreci.com/pricing
- https://circleci.com/pricing/
- https://drone.io/pricing -> less expensive than jenkins+ec2


Then there is always your trusted [Jenkins](https://jenkins-ci.org/) for old-style control-freaks, who like to host everything themselves.


Is there another opensource solution?

Indeed, there is. [Drone.io](https://drone.io/) (the last one in the alternatives list) also offers an [opensource version](http://readme.drone.io/) that you can host yourself. It was just recently endowed with a really cool matrix build feature.


<!-- {{< tweet 689842872632246272 >}} -->
{{< post_image src="2016/tweet_droneio_matrix_build.png" >}}


The information about it is scattered around and is sometimes a bit outdated, so here are some links to get you started:

- https://twitter.com/droneio
- http://blog.drone.io/
- http://readme.drone.io/


Today we're going to setup a CI for a Phoenix project hosted on Github (or Bitbucket, both at same time is not possible) with a ridiculous fast turn-around time and total cost of 10$/m + some initial time investment.

It's gonna be a fun and rewarding experience, so let's get started!


### Requirements

- [DigitalOcean account](http://digitalocean.com) --> [Get 10$ credit on signing up (referral link)](https://m.do.co/c/2f7f898f4040)
- Github account / Bitbucket account
- A Phoenix application, that you want to run CI for



### Setup Digital Ocean

We could cheat here and just install one of the provides App-Images on Digital Ocean:

{{< post_image src="2016/drone_setup_digital_ocean_pick_one_click_vm.png" >}}

<hr>

If you want to have more details, it's not that hard to install the real thing on a plain Ubuntu VM (> 14.04).

#### Install Docker following the instructions here: https://docs.docker.com/engine/installation/ubuntulinux/

```bash
## we assume Ubuntu Trusty 14.04
# update APT sources
$ sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
$ sudo touch /etc/apt/sources.list.d/docker.list
$ sudo echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list

## update sources
$ apt-get update

## install docker
$ sudo apt-get install docker-engine

## start docker daemon
$ sudo service docker start

## test that it was installed
$ sudo docker run hello-world
```

#### Install Drone.io following the instructions here: http://readme.drone.io/setup/overview/

```bash
$ sudo docker pull drone/drone:0.4
```

#### Configure Github Application

Github Setting -> Applications -> Developer Applications (https://github.com/settings/developers)

{{< post_image src="2016/drone_setup_github_register_new_application.png" width="550" >}}

- Application Name: Drone CI
- Homepage URL: IP from you DO Droplet, like: http://111.11.111.11/
- Authorization callback URL: http://111.11.111.11/authorize


{{< post_image src="2016/drone_setup_github_application_data.png" width="550" >}}




#### Contunue Drone.io Configuration


```bash
$ sudo mkdir -p /etc/drone/
$ sudo vim /etc/drone/dronerc
```

```vim
REMOTE_DRIVER=github
REMOTE_CONFIG=https://github.com?client_id=XXXX&client_secret=XXXX
```

```bash
# now start your Drone.io container
sudo docker run \
  --volume /var/lib/drone:/var/lib/drone \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --env-file /etc/drone/dronerc \
  --restart=always \
  --publish=80:8000 \
  --detach=true \
  --name=drone \
  drone/drone:0.4
```

Open in the browser the IP of your Drone DO Droplet and after a short authorization you will be greated with a list of your projects on Github.

### Auth Github
{{< post_image src="2016/drone_setup_github_drone_authorization.png" width="550" >}}

### List of projects
{{< post_image src="2016/drone_setup_projects_dropdown.png" width="550" >}}





### Configure a Phoenix project to work with Drone

Now we are ready to setup our project to run on Drone.io. In similar fashion to Travis.ci it reads its configuration from a YAML file named  <code>.drone.yml</code> in the root of the project.

The simplest config for an Elixir project would look like that:
```bash
$ cat .drone.yml
build:
  image: bitwalker/alpine-elixir-phoenix:2.0
  commands:
    - mix deps.get
    - mix test
```

This would be enough to run a tests for a simple library.

To run tests for a **Phoenix project** we need to specify a little bit more.

We'd like:

  - a Postgres database server
  - caching for dependencies (so we don't have to compile them everytime our build runs)

Also in the current version of Ecto (1.1.3 ) it relies on <strong>psql</strong> binary to be present to run the mix commands for DB creation + DB migration.

This dependency will be removed in the upcoming version 2.0, see pull request: https://github.com/elixir-lang/ecto/pull/1163 - Switch pg storage management away from psql

To make it even more interesting we're gonna use an umbrella project with two Phoenix apps with different DB configurations. Somehow there is a bug here, so that the <strong>ecto.migrate</strong> for one of the databases is not executed during a normal <strong>mix test</strong> run. As a workaround I run the commands explicitly before tests.


So, to recap:

  - install postgresql-client (so psql is present)
  - run ecto.migrate for both test DBs
  - use PosgreSQL Docker image in compose block
  - cache the dependencies + the _build folder (maybe too fragile, needs real life experience over longer time...)


```bash
$ cat .drone.yml
cache:
  mount:
    - _build
    - deps

build:
  image: bitwalker/alpine-elixir-phoenix:2.0
  commands:
    - apk update
    - apk add postgresql-client
    - mix deps.get
    - MIX_ENV=test mix ecto.create  -r Back.Repo
    - MIX_ENV=test mix ecto.migrate -r Back.Repo
    - MIX_ENV=test mix ecto.create ecto.migrate -r Front.Repo
    - mix test

compose:
  database:
    image: postgres:9.5
    environment:
    - POSTGRES_USER=postgres
    - POSTGRES_PASSWORD=postgres
    - POSTGRES_DB=postgres
```

Here is the example application, that we're going to test - https://github.com/ruby2elixir/phoenix_crud_benchmark_60_controllers.

It executes full real CRUD controller tests for 60 controllers in one application.

An uncached initial CI test takes something around 2 minutes.
{{< post_image src="2016/drone_setup_drone_uncached_run.png" width="550" >}}

<hr>

After we have some "warm" caches, it takes less than 1m 15sec to get feedback. For 60 real controllers with DB tests ;)

{{< post_image src="2016/drone_setup_failed_build_with_timing.png" width="550" >}}
{{< post_image src="2016/drone_setup_fixed_build_with_timing.png" width="550" >}}


Those initial results make me smile. A broken build in the evening is much faster to fix if it takes only a few minutes to get the results back.


Also you don't have to break the bank to foster best practices for running Continious Integration on a tight budget.

Please leave any feedback whether you've found that article helpful or if there are some improvements / mistakes.

Best,
Roman

<hr>

#### More links about Drone.io:

Plugins:

  - http://addons.drone.io/
  - https://github.com/drone-plugins


Community:

  - https://gitter.im/drone/drone
  - https://discuss.drone.io/


Examples:

 - https://github.com/drone-demos/drone-with-elixir
