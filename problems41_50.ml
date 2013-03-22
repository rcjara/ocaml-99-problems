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
