(* buildcommand:
    ocamlbuild -use-ocamlfind problems61_70.native *)

type 'a binary_tree =
  | Empty
  | Node of 'a * 'a binary_tree * 'a binary_tree;;

(* Problem 61A *)
let rec count_leaves = function 
  | Empty -> 0
  | Node(_, Empty, Empty) -> 1
  | Node(_, l, r) -> count_leaves(l) + count_leaves(r);;

(* Problem 61B *)

(* This would be better if we folded over the tree and didn't have to use @ *)
let rec leaves = function
  | Empty -> []
  | Node(a, Empty, Empty) -> [a]
  | Node(_, l, r) -> leaves(l) @ leaves(r);;

(* Problem 62 *)
let rec internals = function
  | Empty -> []
  | Node(a, Empty, Empty) -> []
  | Node(a, l, r) -> a :: (internals l) @ (internals r);;

let rec at_level t l = match t,l with
  | Empty, _ -> []
  | Node(a,_,_), 1 -> [a]
  | Node(_,l,r), n -> (at_level l (n-1)) @ (at_level r (n-1));;
