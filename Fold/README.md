# Fold

Most information about folds (foldr, foldl, etc) can be found in the great paper, _A tutorial on the universality and
	expressiveness of fold_, [PDF](http://www.cs.nott.ac.uk/~gmh/fold.pdf), [Citeseer](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.34.1618). Another paper on folds is [Origami programming](http://www.cs.ox.ac.uk/jeremy.gibbons/publications/origami.pdf) by Jeremy Gibbons.

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


## Fusion Property of Fold
Using the Universal Property to find the necessary conditions for the formula: `h . fold g w = fold f v` we get the statement...
```haskell
h w       = v
h (g x y) = f x (h y)

=>

h . fold g w = fold f v
```
Which states that given the conditions, we can take an arbitrary composition of a function and a fold and combine it into a single fold. The primary application of this is as a proof method and is often preferable to the universal properties because of its simplicity.

### Examples
One of the most interesting uses of the fusion property is the proof of the statement `map f . map g = map (f . g)`, stating that `map` distributes over function composition.

#### Proof
To use the fusion property, we must have `map f . map g = map (f . g)` in the form: `h . fold g' w = fold f' v`. Using the definition of `map` using `fold`, we get
```haskell
map f . fold (\x xs -> g x : xs) [] = fold (\x xs -> (f . g) x : xs) []
```
Now we must get this equation into the necessary condition of the fusion property. If we assign the different parts of the equation to variables then it will be easy to translate to the condition.
```haskell
h  = map f
g' = (\x xs -> g x : xs)
w  = []
f' = (\x xs -> (f . g) x : xs)
v  = []
```
Which we can then easily substitute and simplify
```haskell
h w        = v
h (g' x y) = f' x (h y)

=>

map f []                        = []
map f ((\x xs -> g x : xs) x y) = (\x xs -> (f . g) x : xs) x (map f)

(Reducing the lambdas) =>

map f []         = []
map f (g x : xs) = (f . g) x : (map f xs)
```
The first condition is trivially true. The second condition is also trivially true by definition of `map` and `(.)`, but it helps to draw out what is happening in the list. `[f (g x_1),..., f (g x_n), f y_1,..., f y_m]`


### Foldl as Foldr
See [the wiki](http://www.haskell.org/haskellwiki/Foldl_as_foldr) for more information.
