(* buildcommand:
    ocamlbuild -use-ocamlfind problems41_50.native *)

(* Problem 49 *)
open Batteries;;
let rec gray n =
  match n with
    | 0 -> []
    | 1 -> ["0";"1"]
    | i -> (List.map (fun s -> "0" ^ s) (gray(n-1))) @
      (List.map (fun s -> "1" ^ s) (List.rev(gray(n-1))))
;;


type hc = Hc of char * string;;

type ht =
  | Node of int * ht * ht
  | Fr of char * int
;;

let freq = function
  | Node (i, _, _) -> i
  | Fr   (_, i)    -> i
;;

let sort_ht =
  List.sort ~cmp:(fun a b -> compare (freq a) (freq b))
;;

let cmb_nodes n1 n2 = Node ((freq n1) + (freq n2), n1, n2);;

let rec gen_tree ns =
  match sort_ht ns with
  | n :: [] -> n
  | n1 :: n2 :: ns -> gen_tree ((cmb_nodes n1 n2) :: ns)
;;

let huffman frs =
  let rec aux prefix tree =
    match tree with
    | Node (_, lft, rgt) -> (aux (prefix ^ "0") lft) @ (aux (prefix ^ "1") rgt)
    | Fr (chr, _) -> [Hc (chr, prefix)]
  in aux "" (gen_tree frs)
;;

