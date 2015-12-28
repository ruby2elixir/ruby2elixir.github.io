+++
date = "2015-12-18T18:36:00+01:00"
draft = false
title = "Response to Negative Feedback for Post Yesterday: Open Letter to Piotr Solnica"
author = "mindreframer"
+++

EDIT:
{{< post_image src="2015/tweet_1_josevalim.png" >}}
{{< post_image src="2015/tweet_2_josevalim.png" >}}

Apologies to anybody offended by the following post and especially to Piotr Solnic. I feel his energy and creativity would have a more productive foundation if he chose to express his code in Elixir, but it was certainly not my intention to intimidate him. If there is public interest to take this post down, I will.

Sorry for confusion!


<hr>
Original post:

My blogpost from yesterday [Elixir vs Ruby - Code Quality]({{< relref "post/2015/12-17-elixir-vs-ruby-code-quality.md" >}}) seems to have upset quite some people due to its unscientific way of comparing 2 programming language code bases. Most of the criticism is right, number of open issues and outstanding pull request alone do not make a convincing argument... But it got me some valuable ideas, how to convey the real facts, that I personally find fascinating and intriguing...


The real metric I wanted to underline is the speed of issue resolving. And the factors that play into it, like ease of bug reproduction, the speed of test suites and conceptual code flexibility.

I understood this while writing a response to Piotr Solnic (http://solnic.eu/).

While speed of issue resolving as metric is not analysed here further, I'd like to include my response to the critique of yesterday's blog post.

<hr>
<quote>
originally posted on reddit/r/ruby
  https://www.reddit.com/r/ruby/comments/3x7m4h/ruby_vs_elixir_code_quality_on_github/
</quote>



Yes, the title is misleading, it should be more like: **the speed of issue resolving in Ruby vs Elixir core languages**. By proxy this metric says something about the quality of code, but it is not directly "quality of code". It's hard to give precise metrics for "quality"... You start to understand quality when you interact with the object in question.



First commit to Elixir was in 2011/01 (https://github.com/elixir-lang/elixir/commits/master?page=289), so it is widely considered a "young" language.


Elixir while being seemingly a "young" language, is getting all the benefits of 30 years old Erlang VM and the not many but very solid libraries in the Erlang ecosystem. That is a much more solid foundation than Ruby VM can ever get.

Most of Elixir is implemented in Elixir, making contribution quite easy. Due to its functional nature you as developer are encouraged to structure your code in side-effect free functions transforming immutable datastructures. While being unfamiliar to most OOP programmers, this leads to more explicit and robust code.

The test suite for the **whole elixir language** passes in **3 1/2 minutes** on travis-ci
  - https://travis-ci.org/elixir-lang/elixir/builds/97507754.

The **core takes only 42.3 seconds** (time you need to run tests locally, without fresh installation):
  - https://travis-ci.org/elixir-lang/elixir/builds/97507754#L383

The test suite for **phoenix** passes in **1 min 38** sec on travis:
  https://travis-ci.org/phoenixframework/phoenix/builds/97573360

The actual suite for the **phoenix core** takes only **around 20 sec**:
  https://travis-ci.org/phoenixframework/phoenix/builds/97573360#L381


It seems like nobody ever bothered to **compare open source programming languages by the speed of issue resolving**... I have a strong conviction that **this little metric is a strong indicator for the future success** of that particular language. And surely it is not reflected in the numbers presented in the article yesterday because it would require much more effort to statistically evaluate a meaningful value for each resolved issue on Github. So yeah, that article is probably mostly meaningless for any serious statistical evaluation. But it emphasises something that most developers **neglect to consider** when picking a new language to learn:

- **number of currenly known and unresolved bugs/issues** in a language
- **how fast** are those issues resolved


To take your argument further, one would believe that a young programming language has **by default much less open issues due to its lesser popularity**...

What about Rust: https://github.com/rust-lang/rust ?

It currently has **2286 open issues and 94 outstanding pull requests**.

First commit is from 2010/06 (https://github.com/rust-lang/rust/commits/master?page=1395), only 6 months older than Elixir.

Is Rust more popular? If we consider the number of stars, it is **3x more popular than Elixir**. But the number of open issues is ca. **70x (2286 / 32) higher than for Elixir. What's going on here?**


If you check the last build for Rust

  https://travis-ci.org/rust-lang/rust/builds/97619789

it took **51 min 30 sec.**


Just imagine the **developer ergonomics**... You make some changes... You push to Github... After nearly **1h waiting comes the response: failed build**. Every attempt to fix the build will cost you ca. 1h of your life... How **many productive hours** do you think you will have in that kind of environment?


Now contast this with the Elixir test suite. It take much less time to **verify your changes locally** and it is much **more fun to keep the build green on travis**, because the **cost per iteration is intentionally kept very low**. This makes **contribution by community much more likely***. And the core team has much **more time to close outstanding issues and merge pull requests**. You as developer can be **in "flow" state more often** because the **feedback loop is so quick**.

<hr>

### Personal appeal

Piotr, I have read you blog posts quite often and you come across as quite controversial and forward-thinking person.

If we take that quite recent post of yours:
  http://solnic.eu/2015/03/04/8-things-i-learned-during-8-years-of-ruby-and-rails.html



- TDD: is of paramount importance, right? Elixir makes it even easier than Ruby

- World outside of Rails:  maybe also outside Ruby?

   I have tested ALL the Ruby web microframeworks out there.... They don't help that much, but require much more time investement -> https://github.com/luislavena/bench-micro/commits/master?page=2

- Immutability: now we are talking! **Immutability in Ruby** is well... Awkward. Inefficient. Against the language philosophy. Not fun at all.

- No rules, just guidelines: Right! You should be free to structure your application in a way that is meaningful to you. Sadly most companies are embracing the "Rails Way" of doing things... You'll fight always an uphill battle to change it.

- Convenience has a big price: Right, if you're talking about Rails! With Elixir / Phoenix you can keep convenience without making sacrifices in speed and developer productivity, even longterm.

- Mutation testing: This is not needed in Elixir, because all the data is immutable! But you can use QuickCheck for property based testing, see http://www.erlang-factory.com/sfbay2015/thomas-arts


- Ideas behind ORM are a fallacy: RIGHT!

  >"I want simple data processing. I want immutable data. When I need to build a UI it should efficiently write changes back to the database when a client sends a request to do so. And that is not an ORM."

  Take a look at Ecto - https://github.com/elixir-lang/ecto + some links here: https://github.com/mindreframer/getoffrails/blob/master/ecto.md

  You get back simple data-structures. Without magic. Validation happen in changesets.


  It that is too much for your taste, try that one:
    https://github.com/robconery/moebius (only for PostgreSQL). Inspired by Sequel by Jeremy Evans. Since you're writing a book about Roda, you'll know him ;)

<hr>

### The point I'm trying to make is:

  - Do you think you could fix Ruby to accomodate your wishlist outlined above? How long would it take? Is it possible at all?

THIS IS THE SAME QUESTION THAT JOSE VALIM HAD FACED. Then he tried to **bring concepts from Erlang language to Ruby and failed**, unsurprisingly...
So he chose to **bring the good parts of Ruby to the Erlang VM**. That gave birth to Elixir. Despite being considered a "young" language, Elixir is already right now a **rock-solid foundation to build any ambitious web application**.


You know, if you would spend even one third of the efforts and time you're spending right now to fix Ruby to try your ideas in Elixir, you would see a much greater ROI. Promised. You would complain less, you would sleep better and you'll feel more productive.

I think it is nice to increase the quality of your life by switching languages, don't you think?


Anywhoo, no hard feelings... I was in your position a couple years ago, defending Ruby. And you have invested over 8 years of your life into that community, so its hard to see new opportunities outside of it... I can totally relate to that.

Please invest 5 minutes of your time and try following:
  ```text
  # try to install Elixir on your system:
  #   http://elixir-lang.org/install.html (2-3 minutes)
  # checkout Phoenix
  $ git clone https://github.com/phoenixframework/phoenix.git
  $ cd phoenix
  $ mix deps.get
  $ mix test

  # see the tests passing...
  # open the folder in a text editor and try to break anything...
  # run tests and see if they catch that error you introduce and how quickly that happens...

  # Now, this is a high level webframework with a similar initial productivity curve like Rails, so you get from idea to something running quite fast... But it does not slow down later, and you can fix any issue with the framework itself quite fast, because of the rapid feedback cycle...

  ```



Sorry for so much text to read. I think it is important to realize that at a certain point **investing more time does not yield better results**... It's a better strategy to switch to an alternative, that provides **greater return for any invested time unit**.


When I have started Ruby / Rails, nobody in my local community knew it and used it, so **I was that Ruby fanboy back then, before it was cool**. I loved it, but now the tide has turned... I have faced **quite a few teams fighting the "Rails Way"**, plagued by **slow tests suites**, contemplating **microservices architecture**... If your language does not provide the neccessary primitives to build distributed systems, **you'll end up reimplementing half of Erlang OTP, poorly, riddled with bugs**... And you won't have a good time maintaining that system... Been there, done that. ;)


So Piotr, I really hope you consider investing your creativity and energy at least partially into Elixir, you might come to like it.


All the best, Roman



<hr>

P.S:

After writing that response I cared to google some videos by Piotr Solnica, and this is what I've found - published on 2015/11:



{{< youtube KiIukkDvn8o >}}
{{< youtube rMxurF4oqsc >}}

It looks like Piotr is already feeling the need for a better language than Ruby... Give Elixir a try ;)
