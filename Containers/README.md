# Containers

Common data structures are found in two packages on hackage, [containers](https://hackage.haskell.org/package/containers) and [unordered-containers](https://hackage.haskell.org/package/unordered-containers). Containers contains types which represent data structures for [graphs](http://en.wikipedia.org/wiki/Graph_(data_structure)), [maps](http://en.wikipedia.org/wiki/Associative_array), sequences (more efficient lists), [sets](http://en.wikipedia.org/wiki/Set_(computer_science)), and [trees](http://en.wikipedia.org/wiki/Tree_(computer_science)). Unordered containers defines efficient hashing-based containers: [hash map](http://en.wikipedia.org/wiki/Hash_table), and hash set. Each section will have a link to the hackage documentation. For any [Big O](http://en.wikipedia.org/wiki/Big_O_notation), assume that `n` is the number of elements in the data structure.

## [Sequence](https://hackage.haskell.org/package/containers/docs/Data-Sequence.html)
Sequences can be treated as more efficient lists. The offer a wider range of functions that can be performed on them as well.

### Overview
Lists and sequences have a very similar api. The type of a sequence is
```haskell
data Seq a
```
We cannot use a `Seq` directly. The containers package [smart constructors](http://www.haskell.org/haskellwiki/Smart_constructors) to hide the constructors of the actual data type. The ways we can construct a sequence are:
1. Create an empty sequence with `empty :: Seq a`. We can think of `empty` as the list equivalent of `[]`.
```haskell
λ> empty
fromList []
```
2. Create a single element sequence with `singleton :: a -> Seq a`. Just like `[x]` for a single value in a list.
```haskell
λ> singleton 1
fromList [1]
```
3. Create a sequence from an existing list.
```haskell
λ> fromList [1..5]
fromList [1,2,3,4,5]
```

### Inserting
* _Insert_ elements into the front a sequence with `(<|) :: a -> Seq a -> Seq a`.
```haskell
λ> 1 <| 2 <| 3 <| 4 <| empty
fromList [1,2,3,4]
```
Inserting an element in a sequence is much like that of a list. If we take a list `[1,2,3,4]`, and [desugar](http://en.wikipedia.org/wiki/Syntactic_sugar) it to `1 : 2 : 3 : 4 : []`.
* _Append_ element to a sequence with `(|>) :: Seq a -> a -> Seq a`
```haskell
λ> empty |> 1 |> 2 |> 3 |> 4
fromList [1,2,3,4]
```
While we can do the same with lists with `[] ++ [1] ++ [2] ..`, each append on a list takes `O(n)` time while sequences take `O(1)` time. Huge difference.

### Benefits over Lists
* Length of sequence
  - Sequences have a function `length :: Seq a -> Int`... in `O(1)`.
  - Same algorithm for lists is `O(n)`
* Inserting an element
 - Like lists, it is `O(1)` for inserting an element at the front. Sequences are `O(1)` for inserting at the end, which is a huge improvement over `O(n)` for lists.
* Concatenating two sequences
 - Assume we two lists, `a` which has `n` elements and `b` which has `m` elements. Performing `a ++ b` will run in `O(n)`. If we assume that `a` and `b` are now sequences, then we will get `O(log(min(n,m)))`.
 - This makes a huge difference if a >> b.
