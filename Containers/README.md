# Containers

Common data structures are found in two packages on hackage, [containers](https://hackage.haskell.org/package/containers) and [unordered-containers](https://hackage.haskell.org/package/unordered-containers). Containers contains types which represent data structures for [graphs](http://en.wikipedia.org/wiki/Graph_(data_structure)), [maps](http://en.wikipedia.org/wiki/Associative_array), sequences (more efficient lists), [sets](http://en.wikipedia.org/wiki/Set_(computer_science)), and [trees](http://en.wikipedia.org/wiki/Tree_(computer_science)). Unordered containers defines efficient hashing-based containers: [hash map](http://en.wikipedia.org/wiki/Hash_table), and hash set. Each section will have a link to the hackage documentation. For any [Big O](http://en.wikipedia.org/wiki/Big_O_notation), assume that `n` is the number of elements in the data structure.

## [Sequence](https://hackage.haskell.org/package/containers/docs/Data-Sequence.html)
Sequences can be treated as more efficient lists. The offer a wider range of functions that can be performed on them as well.

### Overview
Lists and sequences have a very similar api. The type of a sequence is
```haskell
data Seq a
```
One difference is the way that they are constructed. Sequences use [smart constructors](http://www.haskell.org/haskellwiki/Smart_constructors) to hide the constructors of the actual data type.

### Benefits over Lists
* Inserting an element
 - Like lists, it is `O(1)` for inserting an element at the front. Sequences are `O(1)` for inserting at the end, which is a huge improvement over `O(n)` for lists.
* Concatenating two sequences
 - Assume we two lists, `a` which has `n` elements and `b` which has `m` elements. Performing `a ++ b` will run in `O(n)`. If we assume that `a` and `b` are now sequences, then we will get `O(log(min(n,m)))`.
 - This makes a huge difference if a >> b.
