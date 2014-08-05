haskell-notes
=============

Notes on learning haskell

## Resources
Each resource listed may have a link to code/notes I may have written.
### Monads
* [Trival Monad](http://blog.sigfpe.com/2007/04/trivial-monad.html) by Dan Piponi
  - Good introduction to the intuition behind monads. Should understand types, and the basics behind type classes.
  - [Notes](trivial-monad/README.md)

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

#### Books
* [Types and Programming Languages](http://www.cis.upenn.edu/~bcpierce/tapl/)
  - [Princeton Course](http://www.cs.princeton.edu/~dpw/cos441-11/)
  - [Haskell Code](https://code.google.com/p/tapl-haskell/)
* [Practical Foundations For Programming Languages](Practical Foundations for Programming Languages (Online Preview Edition, With Corrections))
  - [Review](http://blog.ezyang.com/2012/08/practical-foundations-for-programming-languages/)

## Libraries
* [Servant](http://alpmestan.com/posts/2014-07-26-announcing-servant.html) defining RESTful webservices around database operations.
  - https://github.com/zalora/servant
  - http://hackage.haskell.org/package/servant

## Papers
* [Applicative programming with effects](http://www.soi.city.ac.uk/~ross/papers/Applicative.html)

### Folds
[Notes on folds](Fold/)
* [Origami Programming](http://www.cs.ox.ac.uk/jeremy.gibbons/publications/origami.pdf)
* [A tutorial on the universality and
expressiveness of fold](http://www.cs.nott.ac.uk/~gmh/fold.pdf)
* [Paramorphisms](http://www.kestrel.edu/home/people/meertens/publications/papers/Paramorphisms.pdf)

## Courses
* [Constructive Logic](http://www.cs.cmu.edu/~fp/courses/15317-f00/)

> "This multidisciplinary junior/senior-level course is designed to provide a thorough introduction to modern constructive logic, its roots in philosophy, its numerous applications in computer science, and its mathematical properties. Some of the topics to be covered are intuitionistic logic, inductive definitions, functional programming, type theory, realizability, connections between classical and constructive logic, decidable classes, temporal logic, model checking."

## Category Theory

### [Edward Kmett's answer on quora](http://www.quora.com/Category-Theory/What-is-the-best-textbook-for-Category-theory)
Good starting point on what to read. It is pasted here to avoid going to quora.
> If you are starting from zero and have little background with mathematics as a whole then Conceptual Mathematics: A First Introduction to Categories by Lawvere and Schanuel is probably the best starting point. It doesn't go deep or far, but it does supply you with a lot of drill for the material it does cover, which is quite rare for a category theory textbook!

> If you have a lot of "mathematical maturity" probably the most dense book on the topic is Categories for the Working Mathematician by Saunders Mac Lane. I personally bounced off this book a half-dozen times trying to work through it, but in the end was able to make it through. The journey is tough, but the reward at the end is worth it. It is a very comprehensive summary of 1-category theory, and nicely ties up the core ideas at that level. The last chapter is enough of an introduction to 2-category theory that you can find your way through much of nLab.

> I also highly recommend watching the Catsters videos on youtube. Eugenia Cheng is a wonderfully enthusiastic and effective speaker, and watching them gives you a much better sense of "how category theory is done" than you get by reading any book. They come in short 10 minute long bite-sized pieces, so you don't need to commit a lot of time at one sitting.

> For _motivating_ category theory I highly recommend going through Baez and Stay's Physics, Topology, Logic and Computation: A Rosetta Stone. It is "just a summary" but Baez writes amazing summary papers, and it gives you a sense of just how connected mathematics can be when you are working in a category theoretic framework.

> Similarly, John Baez has An Introduction to n-Categories, which does a good job of motivating the different notions of strict and weak n-categories.

> Barr and Wells' Toposes, Triples and Theories, uses vocabulary that is a bit dated, but provides a very nice overview of some aspects of category theory that are underserved, such as fibrations, the topological viewpoint on category theory, and Lawvere theories.

> A somewhat odd reference to recommend for category theory, but I'll recommend it anyways, is Algebra by Serge Lang. Why? One thing that he does very well is supply categorifications and category-theoretic implications of many of the ideas he explores from an algebra perspective. The book is dense, as it is targeted at graduate students, but if you can make it through Mac Lane, then Algebra maintains only a slightly slower pace, for several times as many pages.

> But to actually answer the question: The best single "general purpose" category theory book I can recommend is by Steve Awodey, it is simply titled Category Theory. It is probably the best "all around" category theory book I can think of, in that it makes fewer assumptions about mathematical maturity than Mac Lane, but gets farther than Lawvere and Schanuel. It is really the only one out of all these books and resources I can recommend without equivocating about what level of "mathematical maturity" the reader should have to make progress.
