(* buildcommand:
    ocamlbuild -use-ocamlfind problems41_50.native *)

(* Problem 49 *)
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
  List.sort (fun a b -> compare (freq a) (freq b))
;;

let cmb_nodes n1 n2 = Node ((freq n1) + (freq n2), n1, n2);;

// TODO: use a heap instead of sorting
let rec gen_tree ns =
  match sort_ht ns with
  | n :: [] -> n
  | n1 :: n2 :: ns -> gen_tree ((cmb_nodes n1 n2) :: ns)
;;

let hc_char = function
  | Hc(c, _) -> c
;;

let sort_hc =
  List.sort (fun a b -> compare (hc_char a) (hc_char b))
;;


let huffman frs =
  let rec aux prefix tree =
    match tree with
    | Node (_, lft, rgt) -> (aux (prefix ^ "0") lft) @ (aux (prefix ^ "1") rgt)
    | Fr (chr, _) -> [Hc (chr, prefix)]
  in sort_hc (aux "" (gen_tree frs))
;;



