(* buildcommand:
   ocamlbuild -use-ocamlfind problems1-10.native
*)

(* Problem 1 *)
let rec last lst =
  match lst with
  | []    -> None
  | x::[] -> Some x
  | x::xs -> last xs
;;

let () =
  print_string "last of [int] ";
  assert (last [1; 2; 3] = Some 3);
  if last [1; 2; 3] = Some 3
  then print_string "passed\n"
  else print_string "FAILED\n"
;;
