+++
date = "2015-12-17T18:36:00+01:00"
draft = false
title = "Elixir vs Ruby - Code quality"
author = "mindreframer"
tags = ["code-quality", "controversion"]
+++


EDIT - 2016/01/15:

Due to mostly unsupportive feedback the comments for this article are now closed.

Originally I tried to make a statement pro Elixir/Phoenix for developers by comparing the number of open issues / pull requests with respect to Ruby by summing them up.

This went "south" and caused some unreasonable backlash against Elixir community as whole, which was not my intention at all.

To prevent further flaming this is just kept online as reminder for myself to pick my words more carefully next time. I still believe the reasons outlined in the article are valid, but my presentation style and argumentation skills require more polish. Thanks for understanding.


**Original Article**



A non-scientific and quick comparison of code quality between Ruby and Elixir ecosystems.

This is just a snapshot in time of current bugs / issues for each language + the most prominent web framework in that ecosystem. Yeah, in theory they should not be related, but in practice it plays a huge role in driving developer adoption if you get the web framework right, so we consider it too.

### Elixir

{{< post_image full_scale="true" src="2015/status_elixir_20151217.png" >}}


Issues: 32, Pull Requests: 7

<hr>

### Phoenix
{{< post_image full_scale="true" src="2015/status_phoenix_20151217.png" >}}

Issues: 5, Pull Requests: 2

<hr>

### Ecto
{{< post_image  full_scale="true" src="2015/status_ecto_20151217.png" >}}

Issues: 22, Pull Requests: 6

<hr>


### Erlang (Bugs are kinda hard to find and report - http://bugs.erlang.org/secure/Dashboard.jspa)

{{< post_image full_scale="true" src="2015/status_erlang_20151217.png" >}}
{{< post_image full_scale="true" src="2015/status_erlang_github_20151217.png" >}}

Issues: 16, Pull Requests: 69

<hr>

### Ruby
{{< post_image full_scale="true" src="2015/status_ruby_20151217.png" >}}
{{< post_image full_scale="true" src="2015/status_ruby_github_20151217.png" >}}


Issues (only bugs): 871, Pull Requests: 119

<hr>

### Rails
{{< post_image full_scale="true" src="2015/status_rails_20151217.png" >}}

Issues: 412, Pull Requests: 464


<hr>

## Summary:

##### Erlang + Elixir + Phoenix + Ecto
   - (32+5+16+22)   = **75 Issues**,   (7+2+69+6) = **84 Pull Requests**

##### Ruby + Rails:
  - (871 + 412) = **1283 Issues**, (119 + 464) = **583 Pull Requests**


<hr>

Feel free to draw your own conclusions on presented facts. I'm biased and you should be careful just taking my words as the only valid perspective.


I'll try my short resume:

  - Because of the functional nature of Elixir the resulting code makes **bugs easier to find and fix**, while at the same time the Erlang VM makes **fast and highly robust unit tests possible**.

  - The language designer (Jose Valim) is also shaping the web framework, that results in **high cohesion and interdependent influence of Elixir and Phoenix**.

Considered alone any of those facts does not make a big difference, but combined they allow to reach **extraordinary developer productivity without sacrificing code quality in long term**.


<hr>

### Elixir provides a unique and unprecedented opportunity for any web developer:


  - **prolific, energetic and humble** language designer who left one of the "hottest" developer communities to build the language for future web applications
  - **battle-tested and highly optimized for robust distributed soft-realtime systems** runtime (BEAM - Erlang VM)
  - huge focus on **developer happiness**
  - makes the right trade-offs between easy and simple, so you can always **build more complex systems by combining simpler blocks**
  - **fanatic and enthusiastic developer community**, welcoming beginners and making sure you get that experience of **success by small baby steps**


Many developers are afraid when they hear the word "functional programming"... You shouldn't be.


Just go to http://elixir-lang.org/ and try it out.

It takes only **5 minutes to run your first Elixir code**.

**Watch videos, work with tutorials**.

Ask questions on **Slack**.

Become active contributer.

Join your local **Elixir Meetup**.

Solve your next problem with Elixir and be amazed how it **shapes your thinking**.

Be prepared for the **multi-core, parallel, concurrent, real-time future of software development**! Don't miss out, because it is already here!

All the best,
Roman
