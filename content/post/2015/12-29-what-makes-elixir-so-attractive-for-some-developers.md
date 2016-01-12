+++
date = "2015-12-29T18:36:00+01:00"
draft = false
title = "What makes Elixir so attractive for some developers?"
author = "mindreframer"
+++



It seems like my recent blog posts reached quite the opposite of my intentions: instead of convincing people to give Elixir a try most visitors left angry comments about zealotry and stupidness and childishness displayed in my arguments.


{{< post_image src="2015/are-you-serious-wtf-meme-baby-face-600x400.jpg" height="100%" width="200">}}
{{< post_image src="2015/the_fuck_like_twelve.jpg" height="100%" width="200">}}


<p>
Sigh... Well, gotta learn from my mistakes for the next blog post.
</p>
<p>
Until then before 2015 is over I decided to compile a list from other developers who might have done a better job describing why they are so excited to work with Elixir and what problems does it solve for them.
</p>
<p>
The list is chronologically sorted from most recent to oldest articles. I hope this will be useful for anybody thinking what new programming language  to try in 2016.

Cheers and please be awesome!
</p>

<hr>

<div>
<ul>
  <li><a href="#amber">AmberBit - When to choose Elixir over Ruby for 2016 projects? (2015/12)</a></li>
  <li><a href="#akita">Fabio Akita - The Obligatory “Why Elixir?” Personal Take (2015/12)</a></li>
  <li><a href="#clark-kampfe">Clark Kampfe - Elixir is not Ruby (2015/11)</a></li>
  <li><a href="#john-orford">John Orford - 10 Reasons To Use Elixir In Finance (2015/11)</a></li>
  <li><a href="#david-cristofaro">David Cristofaro - Drinking the Elixir (2015/11)</a></li>
  <li><a href="#jerel-unruh">Jerel Unruh - Why I'm excited about Elixir and Phoenix (2015/11)</a></li>
  <li><a href="#rob-conery">Rob Conery - Hello Elixir. Wow. (2015⁄09)</a></li>
  <li><a href="#chris-nelson">Chris Nelson -  4 Reasons We’re Having Fun Programming Elixir (2015/09) </a></li>
  <li><a href="#luc-fueston">Luc Fueston - The (Real) Reason I Like Elixir  (2015⁄09)</a></li>
  <li><a href="#luke-imhoff">Luke Imhoff - Why Elixir? (2015⁄07)</a></li>
  <li><a href="#jan-dudulski">Jan Dudulski - We all are going to meet in the Elixir world (2015⁄06)</a></li>
  <li><a href="#aaron-lebo">Aaron Lebo - The UNIX Philosophy and Elixir as an Alternative to Go (2015⁄06)</a></li>
  <li><a href="#lau-taarnskov">Lau Taarnskov - Elixir - The next big language for the web (2015⁄04) </a></li>
  <li><a href="#josh-smith">Josh Smith - Functional parallel programming in Elixir (2015⁄03)</a></li>
  <li><a href="#ken-mazaika">Ken Mazaika - Why I’m betting on Elixir (2015⁄01)</a></li>
  <li><a href="#paul-schoenfelder">Paul Schoenfelder - What Is Elixir, and Why Do I Care? (2014⁄03)</a></li>
  <li><a href="#sasa-juric">Saša Jurić -  Why Elixir  (2014⁄01)</a></li>
  <li><a href="#renderedtext">Darko Fabijan -  Learn Elixir to stay young  (2014⁄01)</a></li>
  <li><a href="#alexei-sholik">Alexei Sholik - Introducing Elixir (2013⁄08)</a></li>
  <li><a href="#devin-torres">Devin Torres - Elixir: It’s Not About Syntax (2013/06)</a></li>
</ul>
</div>
<hr>


<h4 id="amber">Ruby team at AmberBit  - Announcing Elixir Cocktails + When to choose Elixir over Ruby for 2016 projects?</h4>
- https://www.amberbit.com/blog/2015/7/24/announcing-elixir-cocktails/
- https://www.amberbit.com/blog/2015/12/22/when-choose-elixir-over-ruby-for-2016-projects


<blockquote>
    We are mostly happy with Ruby and Rails, but the language, and the framework are facing some serious problems. Some of us do not believe those problems can be resolved, and there is the need for new platform for more reliable, faster and more concurrent applications.
</blockquote>
...

<blockquote>
    Elixir runs on Erlang VM, and solves some serious problem Ruby has now. It does support actor-model concurrency mechanism. There is no Global Interpreter Lock. It comes with it’s own persistence solutions, handles distributed systems way better than Ruby, provides way to run programs on Windows servers and allows bundling compiled programs into releases. It runs fast, way faster than Ruby code. Does not choke on a hundred concurrent websocket connections. At some point we were missing all of those features when working with Ruby. We can solve those problems now, with Elixir.
</blockquote>

---

<blockquote>
    The web changed a lot since the year 2006.

    Users’ expectations about web apps changed too. People don’t want to wait or reload page to see the effect. They want to see more and more live/instant updates.

    We have been joking about making a “real-time Rails app” template that integrates Faye, share.js and couple of other useful tools into the standard stack. In fact, this is where Rails slowly evolved in the end by introducing ActionCable.

</blockquote>





**When to pick Elixir?**

<blockquote>
    <h5>1. High-traffic systems</h5>

    Elixir applications can respond in microseconds instead. This can be put to great use. You can handle more requests on the same hardware.


    <h5>2. Systems that do stuff asynchronously</h5>

      You can design all sorts of asynchronous systems easier in Elixir. Your developers will have to write less code. They will re-use existing patterns and libraries rather than trying to re-invent the wheel.

    <h5>3. Distributed / clustered systems</h5>

      Erlang and Elixir rely on message passing rather than function calls and sharing state. This makes it perfect for building systems, that are decentralized and fault tolerant.

    <h5>4. High-availability systems with true zero-downtime</h5>
      Elixir can help you maintain 100% up-time, while still delivering updates to the production system.

    <h5>5. Server-side push and real-time applications</h5>
      We do know, that Phoenix channels do scale really nicely already.

    <h5>6. Large applications</h5>

      If the code base of your application is expected to be large, go with Elixir without further thinking. Elixir has a built-in tools, such as umbrella projects that allow you to split the code base into chunks. You can do similar thing with Ruby’s gems, but there is fundamental difference in philosophy behind.
      I found maintaining the large code bases one of the greatest challenges. Developers do appreciate a system that facilitates tools making it easier from day 1.

    <h5>7. When you need smart, experienced developers</h5>
      Your stack of choice can be a filter for the developers you are hiring. I am observing experienced developers migrating from Ruby to Elixir or Clojure these days.
      There is way less Elixir developers out there, but if they took their time to learn new stack, that’s a good sign of their skills.
</blockquote>

<hr>


<div id="akita"></div>
#### Fabio Akita - The Obligatory "Why Elixir?" Personal Take (2015/12) - http://www.akitaonrails.com/2015/12/01/the-obligatory-why-elixir-personal-take

It is a long article with many nuanced details, here are only the Elixir-relevant parts...

<blockquote>

      "Functional" Concepts that Really Matter
        <h6>Immutability and Opaque Message Passing are VERY important</h6>
        <h6>Coroutines and Schedulers</h6>
        <h6>Static vs Dynamic Typing is still controversial</h6>
        <h6>Fault Tolerance: Don't fear your code</h6>
      <hr>
      Erlang has everything, as Joe Armstrong envisioned a fault tolerant system to be.


      <p>

      <strong>Elixir is the missing piece, the Philosopher's Stone</strong> if you will, that can unlock all the 30 years of refinements, maturity, industry battle tested technologies in large scales, to the average programmer.
      </p>

      <p>
      It brings many modern construct such as making macros easier in order to allow for Domain Specific Languages, having testable comments in your code, adding a more modern standard library that is easily recognizable from a Ruby or Clojure point of view, polymorphism through Protocols, and so on.
      </p>
      <p>
      Erlang is a whole system, it has its own scheduling system, it controls living, breathing processes that each has its own garbage collector, it controls system signal trapping and so on. It was designed to be a full server.
      </p>
      <p>
      Also because it prioritizes correctness, rigidly isolated processes communicating just by opaque messages, immutable and non-shared states, it means that Erlang is not suited to hard data science processing.
      </p>
      <br>
      Erlang is good for distributed systems, with high concurrency of opaque message exchange and proxing. The exact scenario where the Web is. Web Applications heavy load of throughput that need real time chats and notifications, heavy and time consuming payment transactions, gathering of data from many sources in order to reduce them to consumable HTML or JSON responses.
      <br>
      <hr>
      Now we can have the comfort of a real modern language with hints of Ruby and Clojure, without the complexities of strong typing but with the security of its built-in Fault Tolerance constructions in order to deliver highly reliable, highly scalable, modern Web applications.
</blockquote>



<hr>

<div id="clark-kampfe"></div>
#### Clark Kampfe - Elixir is not Ruby (2015/11) - https://zeroclarkthirty.com/2015-11-01-elixir-is-not-ruby.html

<blockquote>
  In Ruby, one moves through a monolithic call stack, manipulating objects.


  Elixir (and every other language on the BEAM virutal machine) is built around processes.
  The defining features of a process are its memory independence and the asynchronicity of its execution.
</blockquote>

...
<blockquote>
  To program Elixir is to program in a functional style.

  - the function as the primary abstraction
  - immutability of data
  - referential transparency

</blockquote>

...
<blockquote>

  The idiom in Ruby is overwhelmingly to mutate state.
  The amount of Ruby code I have seen that is concurrent at the application level is vanishingly small, and given the prominence of the above patterns and others, it isn't difficult to see why.


  Ruby and Elixir encourage behaviors as different as prank calls and ballet.
</blockquote>
...

<blockquote>
    Both languages place value on what is known in the Ruby community as "programmer happiness".


    As an Erlang, Elixir and its runtime come from a family whose main concerns are reliability, consistency, and concurrency. It is a community that is obsessed with failure: understanding it, preparing for it, and embracing it. Things fall apart.


    Ruby is hugely popular among solo developers, consultancies, startups and beginners. That is, programmers who are generally concerned more with time-to-market and short-term ROI rather than maintenance.
</blockquote>

...
<blockquote>
    Elixir is poised to walk off with Ruby's bacon, as it fuses these two mentalities: systems that run for years should be as enjoyable to build as a NetHack clone.
</blockquote>


<hr>

<div id="john-orford"></div>
#### John Orford - 10 Reasons To Use Elixir In Finance (2015/11) - http://blog.johnorford.com/2015/11/01/x-reasons-to-use-elixir-in-finance/

<blockquote>
    <h5>1. Syntax</h5>

      Ruby looks and feels right. Elixir has the same mindset and looks beautiful.
    <h5>2. Semantics</h5>
       Elixir's compiles down into the Erlang virtual machine (EVM)
    <h5>3. Massively Parallel</h5>
      Want to keep track of a large portfolio of stocks? Easy. Want to keep track of the whole market? No sweat.
    <h5>4. Stable</h5>
      How? Massive parallelism also results in massive redundancy.
    <h5>5. Distributed</h5>
      Elixir has distributed computing included out of the box.
    <h5>6. Modern</h5>
      Elixir comes without all the cruft but with all the experience.
    <h5>7. Efficiency</h5>
      Why? Because utilising multicore systems is surprisingly tricky for C# or Java developers.
    <h5>8. Future Proof</h5>
      Rather than re-engineering, Elixir gives us a get out.
    <h5>9. Pipes</h5>
      Its pipe operator |> is simple and extremely appealing.
    <h5>10. Young</h5>
      On the one hand this means that there are not many quantitative libraries - but it also means you can get in on the ground floor.

</blockquote>

<hr>


<div id="jerel-unruh"></div>
#### Jerel Unruh - Why I'm excited about Elixir and Phoenix (2015/11) - http://jerel.co/blog/2015/11/why-im-excited-about-elixir-and-phoenix

Jerel Unruh is a Python developer learning Elixir. He is excited about realtime possibilities in Phoenix and the functional approach to structure your applications with Plugs and data transformations of your <strong>conn</strong>-datastructure.


<blockquote>
  <p>Phoenix is functional. Every backend framework I'd used before was object oriented and I assumed functional programming, the GNU project, and Gentoo had a lot in common. It's turning out to be quite user friendly and really nice...
  </p>
  <p>
  As mentioned in the example above you have data (a connection) that you perform transformations on until it reaches the state you want. In Phoenix these steps of transformations are called Plugs which are Elixir modules with functions init (compile time) and call (run time) defined. Plugs are not entirely unlike middleware in other frameworks but in Phoenix almost everything is a plug. CSRF protection in the framework? A plug. Body parsing in the framework? A plug. Authentication in your code? Write a plug. Permissions? Write a plug. Do you want different permissions in a couple controllers? Include a plug in those controllers. If you don't like something that the framework does then swap out that plug. You starting to get the picture? :) And if at any point you wonder what the state of your app is you can IO.inspect(conn) and everything is there, as data.
  </p>
</blockquote>

<hr>

<div id="david-cristofaro"></div>
#### David Cristofaro - DRINKING THE ELIXIR (2015/11) - http://dtcristo.com/drinking-the-elixir

<blockquote>
  <h5>Elixir:</h5>
  <ul>
    <li>A natural syntax inspired by Ruby.</li>
    <li>Lazy evaluation from Haskell.</li>
    <li>Protocols, macros and pipelines from Clojure.</li>
    <li>Functional programming</li>
    <li>Extensibility</li>
    <li>Modern tooling</li>
    <li>Full compatibility with Erlang</li>
  </ul>

  The result of all of this is a truly modern, practical and performant language on a platform capable of supporting even the most ambitious projects.

  <h5>Phoenix rises</h5>

    <p>
    Phoenix is built for speed. Response times are measured in the microsecond. With Phoenix, don’t have to sacrifice performance for the sake of productivity. You can have your cake and eat it.
    </p>
    <p>
    Phoenix is designed with real-time applications in mind, taking full advantage of Elixir’s concurrency model.
    With the help of Phoenix, Elixir is set to be the go-to language for the web and poised to kickstart a real-time web revolution.
    </p>
</blockquote>

<hr>



<span id="rob-conery"></span>
#### Rob Conery - Hello Elixir. Wow. (2015/09) - http://rob.conery.io/2015/09/03/hello-elixir-wow/




<blockquote>
  ....

  <h5>Why Is Elixir Exciting?</h5>
  <p>
  Elixir is exciting to me because it’s fast, fast, my god it’s fast and has many of the nice facilities that Ruby does – with the power of Erlang behind it.
  </p>
  <p>

  I like this.
  </p>

  ...

  <h5>Why I Put Wow In The Title</h5>
  <p>
  Elixir is intimidating to me. I suck as a programmer and really, I’m kind of a hack. But in about 3 hours I was able to take what I read in a book, connect to a database without a framework and execute something in a rather elegant way.
  </p>
  <p>
  Wow. This made me quite happy today. We’ll see about tomorrow.
  </p>
</blockquote>



<hr>


<div id="chris-nelson"></div>
#### Team at Gaslight - 4 Reasons We're Having Fun Programming Elixir (2015/09) by Chris Nelson - https://teamgaslight.com/blog/4-reasons-were-having-fun-programming-elixir

<blockquote>
  <h5>The Community Is Amazing</h5>
    It’s not just Dave Thomas; it’s also the amazing progress of the whole Elixir community. In the last year, the amount of progress has been really impressive.


  <h5>Not Object Oriented, Process Oriented</h5>
    I get to reap some of the key benefits of functional programming on top a runtime that has processes as core level of abstraction.

    <p>
    Processes are light weight, maintain per process state, and communicate purely by passing messages. In a lot of ways, they arguably embody the original vision that the inventors of object oriented had in mind.
    </p>
    <p>
    The other great thing about Elixir (really Erlang) processes is that they finally bring a viable answer to many of the challenges of decomposing a large system into services (microservices architecture).
    </p>
    <p>
    Because OTP has well thought out solutions, it’s possible to break off pieces of a system into services and distribute them with much less ceremony and effort.
    </p>

  <h5>The PEEP stack</h5>
    <p>
    stands for Phoenix, Elixir, Ember, and PostgresSQL.

    It’s very familiar if you’re coming to it with Rails experience, and this is by design

    Phoenix feels just as productive as Rails to jump into, but there a few reasons it feels even better for building “ambitious web applications”
    </p>

    <p>
    Building RESTful JSON APIs feels really natural, and even simpler than it does in Rails.
    </p>

  <h5>It’s Insanely Fast</h5>
    We’ve frankly struggled to get the performance out of Ruby we would like and having to fight with this less would make us very happy.
    <p>
    And lest you think “Does Telco experience translate to web apps?” it’s worth checking out this about the WhatsApp engineering team from a few years back.
    </p>

</blockquote>


<hr>

<div id="luc-fueston"></div>
#### Luc Fueston - The (Real) Reason I Like Elixir  (2015/09) - http://blog.maketogether.com/the-real-reason-i-like-elixir/

  Luc Fueston likes the Lispy-ness of Elixir and thinks that "Macros are the Hammer that Jose Used to Nail It".

<blockquote>
  The real reason, the guilty pleasure reason that I like Elixir so much is because of Lisp-style macros. They're such a healthy way to do 'meta'-programming: by making it go away at compile-time.

Like many programmers, I love Lisp but don't use it day-to-day, and I miss the ways Lisp lets me think about a problem.

I don't simply like Elixir because it's a good-enough substitute for Lisp. But I've been following and experimenting with macros outside of Lisp for a while, and macros are one of the reasons for Elixir's success.
</blockquote>




<hr>
<div id="luke-imhoff"></div>
#### Luke Imhoff - WHY ELIXIR? (2015/07) - https://kronicdeth.github.io/why-elixir/

  Functional Programming:

  - Mathematical functions
  - Avoids changing state
  - Immutable data

  Elixir:

  - Modules + Functions
  - Pattern Matching + Guards
  - Recursion
  - Concurrency

  Tooling:

  - mix
  - ExUnit
  - ExDoc

  Macros:

  - Capture code
  - Compile data into code

  Protocols + Pipes + Process Scaling

<hr>

<div id="aaron-lebo"></div>
#### Aaron Lebo - The UNIX Philosophy and Elixir as an Alternative to Go (2015/06) - http://lebo.io/2015/06/22/the-unix-philosophy-and-elixir-as-an-alternative-to-go.html


<blockquote>
    <h5>Elixir is a very light Ruby-ish layer of syntax that compiles down to run on BEAM, the Erlang VM.</h5>

    <br>
    <p>
    What I do want to touch on are the qualities of Elixir itself. Do you want a modern language? Elixir is functional, immutable, and supports pattern matching, which is like a case or if statement on steroids, only that explanation doesn't begin to touch how much it impacts your entire manner of coding. It also supports macros which means that the core language can remain small but users can extend the syntax to support patterns the designer never dreamed of. As I said before, it does this with a Ruby-ish syntax.
    </p>
    <p>
    Despite the fact that it is a very modern language, it is quite small.
    You can read through the language guide in a few hours and have a pretty good grasp on the core concepts
    This also leads to much quicker mastery. Use 10 constructs 100 times each and you'll get them intuitively much faster than if you use 100 constructs 10 times each.
    </p>
    <hr>
    Elixir brings so many features which will both make you grow as a programmer and will help your programs to grow elegantly in the future.
</blockquote>


<hr>

<div id="jan-dudulski"></div>
#### Codetunes - We all are going to meet in the Elixir world (2015/06) by Jan Dudulski - http://codetunes.com/2015/we-all-are-going-to-meet-in-the-elixir-world/


...
<blockquote>
  <p>
  I attended ElixirConf.eu in April. About 95% of attendees came from the Ruby world. I spoke with many of them and each were speaking the same way - they’re looking for something better. They’re tired of Rails' monolithic design, struggling with thread safety and heavy processes.
  </p>

  <p>
  And Elixir seems to be a perfect solution for us, tired Rubists. Beautiful syntax, functional paradigm, successful Erlang VM, incredible performance, dozens of very smart people behind it - this is just the tip of the iceberg and the reason why a lot of devs are so excited already.
  </p>

  <p>
    During the conference I heard a story from guys who were able to stop worrying about cache completely - Elixir was so fast! About a painful - at first sight - migration because of missing tools, but also about the ease of building support for them or replacing them with a better toolset. I saw real enjoyment about the possibilities and pleasure of hacking around - e.g. playing with lego robots. I enjoyed every talk and, for me, it was the most inspiring conference I’ve ever attended.
  </p>

  <p>
    You will love the fail fast strategy. You will love pattern matching. You will love pipe operator. You will love Ecto and Phoenix. You will love compilator and no more runtime errors. You will love Erlang Processes and how easy it is to just run something in the background.
  </p>
  <p>
    And you will never want to go back.
  </p>


</blockquote>

<hr>

<div id="lau-taarnskov"></div>
#### Lau Taarnskov - Elixir - The next big language for the web (2015/04) - http://www.creativedeletion.com/2015/04/19/elixir_next_language.html

<blockquote>

    <h5>From obscurity to the default choice</h5>
      Rails took Ruby out of obscurity and some years later even many non-programmers had heard about this web framework.
      It was very interesting to see how quickly Rails went from being used by a handful of people to being the “it-framework” and the default choice for startups that needed web based software.

    <h5>Elixir</h5>
      Elixir has its own package management system, macros, an easy to use build tool and unicode handling.
      Elixir is a language that runs on the Erlang VM.
      So it has all of the benefits of the mature, battle proven system and you can use the existing Erlang libraries with no performance penalty.


    <h5>Immutability and functional programming</h5>
       Functional programming and immutability helps to clarify things and makes it easier to reason about code.

    <h5>Concurrency</h5>
      The trend in hardware is more and more CPU cores.
      Doing concurrency in Erlang or Elixir versus other languages is a bit like doing branches in Git vs Subversion
      In Elixir it is very easy to create a new process and it performs very well

    <h5>Web framework</h5>
      Phoenix is the most popular web framework for Elixir right now.
      One of the most exciting features is the real time capabilities with channels between javascript on the client and Elixir on any of the servers in the cluster.
      Efficiency and speed are important for the end user experience, and also means less waste of energy and money on servers.

    <h5>Programmer happiness and beautiful code</h5>
      With Elixir I do not feel like I trade any joy or speed of development for the performance, reliability and concurrency benefits of the Erlang VM. Elixir provides all of the Erlang benefits such as performance and reliability without giving up the productivity benefits of Ruby.

    <h5>Déjà vu</h5>
      Like with Ruby 12 years ago, once again I feel that this new platform is so much better than the other solutions.

      I think it is likely that in a few years Elixir instead will be the go-to language for new web projects.
</blockquote>

<hr>

<div id="josh-smith"></div>
#### Josh Smith - Functional parallel programming in Elixir (2015/03) - http://ijoshsmith.com/2015/03/14/functional-parallel-programming-in-elixir/

<blockquote>
  <h5>Why Elixir?</h5>

  <p>
  Over the past few months I studied various functional programming languages, as well as the concurrency and parallel programming models their practitioners espouse.
  </p>
  <p>
  While certainly seeing value in each language I studied, only Elixir jumped out at me as elegant and expressive yet simple. It is a so-called impure functional language, meaning that it is built to support a functional programming style but also allows for symbols that can change value
  </p>

  <p>
  Elixir is a modern language that enables today’s mainstream developers to harness the highly concurrent, fault-tolerant, distributed, bulletproof Erlang virtual machine that undergirds much of the telecommunication infrastructure on which our society depends.
  </p>

  <p>
  After a few days of writing Elixir code, I was impressed. Once I saw firsthand how Elixir and the Erlang VM simplify multi-core computing, I was sold. I don’t expect to write Elixir code for a living any time soon, if ever, but the lessons I learn from the language and platform can be adopted in my daily software development practices. I wrote this article to share those lessons with others.
  </p>
</blockquote>


<hr>

<div id="ken-mazaika"></div>
#### Ken Mazaika - Why I’m betting on Elixir (2015/01) - https://medium.com/@kenmazaika/why-im-betting-on-elixir-7c8f847b58

<blockquote>
    <h5>Package Management with Mix</h5>
      Mix just does its job nicely, stays out of the way, and doesn’t force you to wrangle XML.

    <h5>The Erlang Virtual Machine</h5>
      emphasis on functional programming that are fault-tolerant and highly scalable.


    <h5>The Phoenix Web Framework</h5>
      Phoenix is such a Railsy solution you’ll feel like you’re building a Rails app, with the exception being that it runs with Elixir and has all the benefits of Elixir and the Erlang virtual machine.

    <h5>Strong Leadership</h5>
      In my opinion, the difference between open source and movement, is all around the leadership involved in the project. In short, I believe really smart people need to be putting the work in to improve the software every single day.

      Jose Valim, Chris McCord, and all the members of the Elixir-Lang core team and Phoenix core team have, and continue to put in the work that needs to be done for the Elixir community to thrive.

    <h5>The web is about to under-go a transformational change</h5>
      The people who will win are going to be the ones who embrace changes in technology. The fact that WebSockets, processes, and concurrency in Phoenix and Elixir are cheap, without sacrificing developer happiness is an absolute game-changer.
</blockquote>

<hr>

<div id="paul-schoenfelder"></div>
#### Paul Schoenfelder - What Is Elixir, and Why Do I Care? (2014/03) - http://bitwalker.org/elixir/erlang/programming/tutorials/2014/03/10/what-is-elixir-and-why-do-i-care/

  Paul Schoenfelder is productive in C#, Ruby, Python, Javascript, Scala, Clojure, C and C++, but he thinks Elixir provides something, that all the other languages do not...


<blockquote>
    <h5>Elixir’s Elevator Pitch</h5>
    Elixir is a functional, metaprogrammable language, built for productivity, extensibility, and to take advantage of Erlang’s simple but powerful fault-tolerance and concurrency primitives. It is composed of a simple core language, with syntax that is very reminiscent of Ruby (and no wonder, as its creator José Valim, is a Ruby core committer, and author of many Ruby libraries such as Devise). However, despite the aesthetic similarity to Ruby, the semantics of Elixir are quite different.



    <h5>At a high level, Elixir provides the following features:</h5>
    <ul>
      <li>Modules</li>
      <li>First-class functions</li>
      <li>Pattern matching (amazing)</li>
      <li>Protocols, which provide polymorphism for your data types.</li>
      <li>Macros. If you dig in to Elixir’s source code, you will see that the vast majority of the language’s syntax is - actually defined as simple Elixir macros: if, unless, cond, etc. Incredibly powerful feature.</li>
      <li>Everything is an expression, this makes it easy to compose code without intermediate variables.</li>
      <li>Immutability</li>
      <li>Pipes. Instead of defining code inside-out like: <span class="code">Date.shift(Date.new({2014, 10, 5}), days: 10)</span> pipes allow you - to write it as you would say it: <span class="code">{2014, 10, 5} |> Date.new |> Date.shift(days: 10)</span>. Code becomes very easy to read.</li>
      <li>Dead simple concurrency.</li>
      <li>Dead simple clustering/distribution.</li>
      <li>Built-in unit testing</li>
      <li>First-class documentation (including the ability to test the code examples in your docs!)</li>
      <li>Excellent build tool (modeled after Leiningen for Clojure, very similar to Rake for Ruby)</li>
      <li>Excellent documentation and community</li>
    </ul>


</blockquote>

<hr>

<div id="sasa-juric"></div>
#### Saša Jurić - Why Elixir - (2014/01) - http://theerlangelist.com/article/why_elixir

<blockquote>
    <strong>Elixir is not Ruby for Erlang.</strong>

    To me, it is an Erlang-like language with improved code organization capabilities. This definition differs from what you’ll see on the official page, but I think it captures the essence of Elixir, when compared to Erlang.

      <h5>Metaprogramming</h5>
         It allows us to write concise constructs that seems as if they’re a part of the language. These constructs are in compile-time then transformed into a proper code.

      <h5>Pipeline operator</h5>
        The pipeline operator works extremely well because the API in Elixir libraries follows the “subject (noun) as the first argument” convention.

      <h5>Polymorphism via protocols</h5>
        Protocols are the Elixir way of providing something roughly similar to OO interfaces

      <h5>The mix tool</h5>
        help us manage projects

      <h5>Syntactical changes</h5>
        support for variable rebinding, optional parentheses, implicit statement endings, nullability, short circuits operators...

</blockquote>


<hr>

<div id="renderedtext"></div>
#### Darko Fabijan - Learn Elixir to stay young - (2014/01) - http://renderedtext.com/blog/2014/01/21/learn-elixir-to-stay-young/

<blockquote>
    <strong>Why Elixir</strong>
    <p>
      Many say that next programming languages that will matter will be LISP and/or Erlang descendants. Just by simple deduction it seems that Clojure and Elixir are the cool kids that you should hang out with.
    </p>

    <p>
      It runs on Erlang VM, has a really nice Ruby-like syntax and allows you to write powerful DSLs with macros. The fact that it runs on Erlang VM with its' actor-based architecture means that you can not only transparently run your application across multiple CPU cores without thinking too much, but also run it across multiple machines in almost the same way.
    </p>

    <p>
      If you ever touched Ruby you know that syntax can really matter and how it just feels nice under your fingers. Well for Elixir I could say the same. And finally macros, originated in LISP, are also available in Elixir because of it’s homoiconicity. Macros give you the power to extend the language as you feel needed and that means that you can turn Elixir in a language specialised for solving your particular problem.
    </p>
    ...
    <p>
      Elixir is awesome. You will discover and learn many new concepts from computer science that are really powerful but neglected in other languages. Ultimately Elixir will replace Node.js and Ruby in many places and now is a chance to be an Elixir guru even before the waves start rising.
    </p>
</blockquote>


<hr>


<div id="alexei-sholik"></div>
#### Alexei Sholik - Introducing Elixir (2013/08) - http://alexeisholik.com/elixir-talk/

### Why Elixir?

- No repetitive boilerplate
- Simple APIs
- DSLs
- Practical (code reuse, meta)
- User friendly (syntax; exceptions; REPL)
- Tools (mix, ExUnit, EEx)
- New, consistent stdlib
- Enthusiastic community


<hr>

<div id="devin-torres"></div>
#### Devin Torres - Elixir: It's Not About Syntax (2013/06) - http://devintorr.es/blog/2013/06/11/elixir-its-not-about-syntax/

<blockquote>
      <h5>Performance</h5>

        Performance of Elixir code should match or beat the performance of equivalent Erlang code.
        <p>
        Elixir’s powerful metaprogramming capabilities don’t come from e.g. runtime dispatching, but the fantastically powerful compiler. All this magic happens at compilation time, before your code even has to run. And this is the part that may blow your minds: Elixir will beat the performance of Erlang in some cases.
        </p>


      <h5>Metaprogrammability</h5>
        <p>
        Elixir is strongly homoiconic.
        It has one of the most powerful macro system I’ve been able to find in among other macro-capable languages I’ve used to date.
        </p>
        <p>
        Elixir macros are hygienic. This means that variables defined in a macro won’t interfere with variables defined in the local scope when you use the macro. Oh, and guess what? They are optionally unhygienic as well if you’re into that kind of thing.
        </p>

        Macros shouldn’t be abused.


      <h5>The standard library and runtime</h5>

        The Elixir standard library aims to dramatically increase the productivity of Elixir developers, while providing the extensibility and features Elixir developers expect from such a metaprogrammable language.

      <h5>Unafraid of change</h5>

        We have Erlangers, Clojurists, Haskellers, Rubyists, and Pythonistas trying to incorporate useful features into Elixir every day. Elixir isn’t afraid of introducing functionality that improves the lives of Elixir developers, and everything is on the table: new data structures, real Unicode support, anything.

      <h5>Tooling</h5>

        IEx, Doctests, Mix

      <hr>

      Elixir is the power of it’s tooling, the expressiveness of it’s metaprogrammability, and the expansive feature set of it’s standard library while maintaining complete compatibility with—and heavily leveraging—OTP.
</blockquote>
