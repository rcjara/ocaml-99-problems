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
