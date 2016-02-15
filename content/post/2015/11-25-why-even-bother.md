+++
date = "2015-11-25T18:36:00+01:00"
draft = false
title = "Why Even Bother to Rewrite Your Rails Application in Elixir"
author = "mindreframer"
tags = ["rails", "devops", "future"]
+++


Hey there, I believe that our future as web software development is going to change soon.
There is a lot of ways to write software and I have chosen to write web applications. **My goal is to build my own SaaS business soon and be responsible for it**. When you have that perspective you treat any superficial level of **complexity as unacceptable**.


This is the reason why in 2007 I have learned Ruby and why I wrote my first web applications in Rails. I had to be able to **maintain my applications in the long run**. To peek behind the curtain, I chose a **path of apprenticeship** and joined a then young startup named **DaWanda and watched it grow from 12 people to 200 people**. It grew from a single largish Rails app deployed on 5 dedicated server to a beast of multiple apps with **slow test suites** and **plenty of moving parts**... To keep the thing running required quite a lot mental effort and it was a dedicated job in itself. You build **abstractions upon abstractions and depend on a hefty amount of third-party libraries just to keep your application alive**.

**Timeouts, network partitions, lots of small inconsistencies, memory leaks, hanging processes** : it all becomes your daily business.


This is not how I envision my own applications in the future... They should **fit into my little brain**. They should grow with grace, be maintainable, resource-efficient, provide just the right abstractions to help me in the beginning, but **get out of the way when I'm going against recommendations**.

Playing with different languages showed some promise, but the **lost productivity compared to Rails was hard to justify**.


That is until Elixir + Phoenix happened.


It was not an instant insight, rather a slow process. You discover the author's intents while solving small problems, you gather all the small bits of wisdom in discussions, you always ask the same question: "Where is the catch? It this too good to be true?". So, I'm a **careful "buyer" into new technogy**, there is just too much "innovation" happening right now.

I'm **in this game for a long run**, so **cutting corners in the beginning only to slow down in the future** is not an option.


I also don't want to buy into the "microservices" craziness that is all the range right now, you need many teams to compensate the trade-offs of that approach.

I want a technology that will help me to ship products with certain guarantees.

It should:

  - be easily composable
  - **scale vertically**
  - **scale horizontally**
  - be reliable
  - be introspectable
  - have great tooling
  - provide **productivity during development**
  - provide **productivity during production**




I am absolutely sure that __Elixir/OTP__ is currently __THE ONLY LANGUAGE / PLATFORM__ that gives you all that in a nice package.

But it is hard to convince fellow developers when they see their cozy "Ruby" world threatened. "Why?" they say. "I'm totally fine with Rails. It solves my problems and that's enough."


Well... The world is evolving. The applications of future demand to be more reliable, more realtime, much faster, cope with much more traffic from many more devices than today.

Rails offers no solution for distributed systems - embrace the **majestic monolith**. No solution for concurrent systems - **background jobs as a poor abstraction** e.g Sidekiq. No reliable solution for realtime systems - **ActionCable is a hack**.

And it is not Rails' fault, really. Ruby as a Virtual Machine helps you in the beginning, but **hinders you when your application matures**. When you outgrow that single Rails app. When it's time to break it apart. Be prepared for the **zoo of technologies** just to keep it somehow alive. And let me tell you one thing: you will probably never feel like you control the system.

But it's ok, you will earn money with it. And Rails is not dying, as some might say.

It just got... Well... Old.

Not appropriate for the future we are about to face.

Ambitious, demanding apps require modern tooling and new approaches. The world is realtime.

It is **hard to scale Rails apps and keep quality up**. Usually you'll end up **hiding behind caching**, like MemCached, Redis, Varnish, Fastly... That's it. And you'll spent a lot of time **ironing all the bugs that occur only in production** and you will have a lot of hard time doing that. You'll have to employ **large teams of developers later in the game to overcome limitation of Rails**. And maybe you'll fine with that, because that is the current state of affairs in the industry. Many decide to **jump ship and build microservice architectures**. But there is **no free lunch** here, you'll still need multiple teams of developers responsible for them. And it certainly requires quite **a lot of unlearning and patience to become even slightly productive with that approach**.

Elixir + Phoenix combo gives you both: **write as monolithic app now, easily split up into several applications later**, use Erlang VM as **operating system to write your application**. Currently there is **no alternative for that approach** that is more elegant and efficient.

Watch this space closely, **Elixir is gaining steam with incredible speed** and will surpass Rails in 2-3 years easily.

Phoenix is **not a clone of Rails**, it is the ultimate combination of years of experience with demanding Rails applications combined into a very **robust, simple, extensible and highly performant package**, standing on shoulders of over 30 years experience building **highly available soft-realtime systems**.

It is very hard to top that.

Think like a professional and **invest in your future now**. Go to http://elixir-lang.org/learning and learn Elixir, you wont regret this decision a single minute. I certainly did not!

Cheers and all the best,
Roman
