+++
date = "2015-12-17T18:36:00+01:00"
draft = false
title = "Elixir vs Ruby - Code quality"
author = "mindreframer"
+++


A non-scientific and quick comparison of code quality between Ruby and Elixir ecosystems.

This is just a snapshot in time of current bugs / issues for each language + the most prominent web framework in that ecosystem. Yeah, in theory they should not be related, but in practice it plays a huge role in driving developer adoption if you get the web framework right, so we consider it too.

### Elixir

{{< post_image src="2015/status_elixir_20151217.png" >}}


Issues: 32, Pull Requests: 7

<hr>

### Phoenix
{{< post_image src="2015/status_phoenix_20151217.png" >}}

Issues: 5, Pull Requests: 2

<hr>

### Erlang (Bugs are kinda hard to find and report - http://bugs.erlang.org/secure/Dashboard.jspa)

{{< post_image src="2015/status_erlang_20151217.png" >}}
{{< post_image src="2015/status_erlang_github_20151217.png" >}}

Issues: 16, Pull Requests: 69

<hr>

### Ruby
{{< post_image src="2015/status_ruby_20151217.png" >}}
{{< post_image src="2015/status_ruby_github_20151217.png" >}}


Issues (only bugs): 871, Pull Requests: 119

<hr>

### Rails
{{< post_image src="2015/status_rails_20151217.png" >}}

Issues: 412, Pull Requests: 464



## Summary:

##### Erlang + Elixir + Phoenix
   - (32+5+16)   = **53 Issues**,   (7+2+69) = **78 Pull Requests**

##### Ruby + Rails:
  - (871 + 412) = **1283 Issues**, (119 + 464) = **583 Pull Requests**
