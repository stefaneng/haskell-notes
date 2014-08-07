haskell-notes
=============

Notes on learning haskell

## General
* [Good haskell code to read](http://stackoverflow.com/questions/6398996/good-haskell-source-to-read-and-learn-from)

## Resources
Each resource listed may have a link to code/notes I may have written.
### Monads
* [Trival Monad](http://blog.sigfpe.com/2007/04/trivial-monad.html) by Dan Piponi
  - Good introduction to the intuition behind monads. Should understand types, and the basics behind type classes.
  - [Notes](trivial-monad/README.md)

## Books
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours) - End up writing a subset of a R5RS Scheme interpreter. An excellent read after some experience in haskell (such as LYAH).
> Most Haskell tutorials on the web use a style of teaching akin to language reference manuals. They show you the syntax of the language, a few language constructs, then tell you to create a few simple functions at the interactive prompt. The "hard stuff" of how to write a functioning, useful program is left to the end, or omitted entirely.


### Haskell

### Programming Language Theory
* [Types and Programming Languages](http://www.cis.upenn.edu/~bcpierce/tapl/)
  - [Haskell Code](https://code.google.com/p/tapl-haskell/)
* [Practical Foundations For Programming Languages](Practical Foundations for Programming Languages (Online Preview Edition, With Corrections))
  - [Review](http://blog.ezyang.com/2012/08/practical-foundations-for-programming-languages/)

## Blogs
Blogs on subject or related subjects
### Haskell
* [Haskell for All](http://www.haskellforall.com/) - Gabriel Gonzalez ([/u/Tekmo](http://www.reddit.com/user/Tekmo) on Reddit)
* [Jakub Arnold](http://blog.jakubarnold.cz/tags/haskell.html)
* [ocharles](https://ocharles.org.uk/blog/)

### Programming Language Theory
* [Robert Harper](http://www.cs.cmu.edu/~rwh/)
  - Good resources on type theory, HoTT, etc.
  - http://existentialtype.wordpress.com
* [Edward Yang](http://blog.ezyang.com/)

## Libraries
* [Servant](http://alpmestan.com/posts/2014-07-26-announcing-servant.html) defining RESTful webservices around database operations.
  - https://github.com/zalora/servant
  - http://hackage.haskell.org/package/servant

## Papers
* [Applicative programming with effects](http://www.soi.city.ac.uk/~ross/papers/Applicative.html)

### Monads
* [Monad Transformers](http://www.grabmueller.de/martin/www/pub/Transformers.en.html) - (Have not read yet, but seems okay)

### Folds
[Notes on folds](Fold/)
* [Origami Programming](http://www.cs.ox.ac.uk/jeremy.gibbons/publications/origami.pdf)
* [A tutorial on the universality and
expressiveness of fold](http://www.cs.nott.ac.uk/~gmh/fold.pdf)
* [Paramorphisms](http://www.kestrel.edu/home/people/meertens/publications/papers/Paramorphisms.pdf)
* [Fixing Foldl](http://www.well-typed.com/blog/90/))

## Courses
* [Constructive Logic](http://www.cs.cmu.edu/~fp/courses/15317-f00/)

> "This multidisciplinary junior/senior-level course is designed to provide a thorough introduction to modern constructive logic, its roots in philosophy, its numerous applications in computer science, and its mathematical properties. Some of the topics to be covered are intuitionistic logic, inductive definitions, functional programming, type theory, realizability, connections between classical and constructive logic, decidable classes, temporal logic, model checking."

* [Homotopy Type Theory](http://www.cs.cmu.edu/~rwh/courses/hott/) from Robert Harper at CMU

* [Programming Language Theory](http://www.cs.princeton.edu/~dpw/cos441-11/) from David Walker of Princeton

> This advanced course is for graduate students and advanced undergraduates with a keen interest in how to design, describe and reason about programming languages. The only requirement for the course is some mathematical maturity including, for instance, familiarity with proof techniques such as induction.

> Topics include: Theory and design of programming languages. How languages support abstraction, modularity and concurrency through functional programming and other mechanisms. Operational semantics of programming languages.  Denotational semantics of programming languages.  Type systems including polymorphism and subtyping.  The relation between programming languages and logic.

## Category Theory

### [Edward Kmett's answer on quora](http://www.quora.com/Category-Theory/What-is-the-best-textbook-for-Category-theory)
Good starting point on what to read. It is pasted here to avoid going to quora.
> If you are starting from zero and have little background with mathematics as a whole then [Conceptual Mathematics: A First Introduction to Categories by Lawvere and Schanuel](http://www.amazon.com/Conceptual-Mathematics-First-Introduction-Categories/dp/052171916X) is probably the best starting point. It doesn't go deep or far, but it does supply you with a lot of drill for the material it does cover, which is quite rare for a category theory textbook!

> If you have a lot of "mathematical maturity" probably the most dense book on the topic is [Categories for the Working Mathematician by Saunders Mac Lane](http://www.amazon.com/Categories-Working-Mathematician-Graduate-Mathematics/dp/0387984038) [PDF](http://www.maths.ed.ac.uk/~aar/papers/maclanecat.pdf). I personally bounced off this book a half-dozen times trying to work through it, but in the end was able to make it through. The journey is tough, but the reward at the end is worth it. It is a very comprehensive summary of 1-category theory, and nicely ties up the core ideas at that level. The last chapter is enough of an introduction to 2-category theory that you can find your way through much of nLab.

> I also highly recommend watching the [Catsters videos on youtube](https://www.youtube.com/user/TheCatsters). Eugenia Cheng is a wonderfully enthusiastic and effective speaker, and watching them gives you a much better sense of "how category theory is done" than you get by reading any book. They come in short 10 minute long bite-sized pieces, so you don't need to commit a lot of time at one sitting.

> For _motivating_ category theory I highly recommend going through Baez and Stay's [Physics, Topology, Logic and Computation: A Rosetta Stone](http://math.ucr.edu/home/baez/rosetta.pdf). It is "just a summary" but Baez writes amazing summary papers, and it gives you a sense of just how connected mathematics can be when you are working in a category theoretic framework.

> Similarly, John Baez has [An Introduction to n-Categories](http://arxiv.org/abs/q-alg/9705009), which does a good job of motivating the different notions of strict and weak n-categories.

> [Barr and Wells' Toposes, Triples and Theories](http://www.amazon.com/Toposes-Theories-Grundlehren-mathematischen-Wissenschaften/dp/1489900233), uses vocabulary that is a bit dated, but provides a very nice overview of some aspects of category theory that are underserved, such as fibrations, the topological viewpoint on category theory, and Lawvere theories.

> A somewhat odd reference to recommend for category theory, but I'll recommend it anyways, is [Algebra by Serge Lang](http://www.amazon.com/Algebra-Graduate-Texts-Mathematics-Serge/dp/038795385X). Why? One thing that he does very well is supply categorifications and category-theoretic implications of many of the ideas he explores from an algebra perspective. The book is dense, as it is targeted at graduate students, but if you can make it through Mac Lane, then Algebra maintains only a slightly slower pace, for several times as many pages.

> But to actually answer the question: The best single "general purpose" category theory book I can recommend is by Steve Awodey, it is simply titled [Category Theory](http://www.amazon.com/Category-Theory-Oxford-Logic-Guides/dp/0199237182). It is probably the best "all around" category theory book I can think of, in that it makes fewer assumptions about mathematical maturity than Mac Lane, but gets farther than Lawvere and Schanuel. It is really the only one out of all these books and resources I can recommend without equivocating about what level of "mathematical maturity" the reader should have to make progress.
