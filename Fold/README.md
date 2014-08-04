# Fold

Most information about folds (foldr, foldl, etc) can be found in the great paper, _A tutorial on the universality and
expressiveness of fold_, [PDF](http://www.cs.nott.ac.uk/~gmh/fold.pdf), [Citeseer](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.34.1618).

## Universal Property of Fold
For finite lists, the universal property of fold can be stated as follows:
```haskell
g []     = v
g (x:xs) = f x (g xs)

<=>

g = foldr f v
```
Hutton summarizes this best in his paper:
> Taken as a whole, the universal property states that for finite lists, the function `fold f v` is not just a solution to its defining equations, but in fact the _unique_ solution.

* [Stackoverflow discussion](http://stackoverflow.com/questions/841696/please-explain-in-the-simplest-most-jargon-free-english-possible-the-universa) which explains the universal property in a simple "jargon-free" way.

### Category Theory
(These may not be the best resources my category theory is not the greatest)
* [Wikipedia entry on Universal Property](http://en.wikipedia.org/wiki/Universal_property)
* [Jeremy Kun on Universal Property](http://jeremykun.com/2013/09/30/the-universal-properties-of-map-fold-and-filter/). Also see his post, [Categories, What’s the Point?](http://jeremykun.com/2013/04/16/categories-whats-the-point/) for a introduction to category theory that describes the Universal property.
