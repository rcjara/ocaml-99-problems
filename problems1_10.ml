(* buildcommand:
    ocamlbuild -use-ocamlfind problems1_10.native *)

(* Problem 1 *)
let rec last lst =
    match lst with
    | []    -> None
    | x::[] -> Some x
    | x::xs -> last xs
;;

(* Problem 2 *)
let rec last_two lst =
    match lst with
    | [] -> None
    | x::[] -> None
    | x::y::[] -> Some (x,y)
    | x::xs -> last_two xs
;;

(* Problem 3 *)
let rec at index lst =
    match lst with
    | [] -> None
    | x::xs -> if index = 0 then Some x else at (index - 1) xs
;;

(* Problem 4 *)
let length lst =
    let rec length1 acc lst =
        match lst with
        | [] -> acc
        | x::xs -> length1 (acc + 1) xs
    in
    length1 0 lst
;;


(* Problem 5 *)
let rev lst =
    let rec rev1 acc lst =
        match lst with
        | [] -> acc
        | x::xs -> rev1 (x::acc) xs
    in
    rev1 [] lst
;;

(* Problem 6 *)
let palindrome lst =
    rev lst = lst
;;

type 'a node =
    | One of 'a
    | Many of 'a node list;;

(* Problem 7 *)
let flatten lst =
    let rec flatten1 acc node =
        match node with
        | One x -> x::acc
        | Many [] -> acc
        | Many (x::xs) -> flatten1 (flatten1 acc x) (Many xs)
    in rev (flatten1 [] (Many lst))

let rec flatten2 lst =
  match lst with
  | []             -> []
  | (One x)::xs    -> x :: flatten xs
  | (Many l)::xs -> flatten l @ flatten xs
;;

(* Problem 8 *)
let rec compress lst =
  match lst with
  | ([] | [_]) as l -> l
  | a :: b :: xs    -> if a = b
                       then compress (a :: xs)
                       else a :: compress (b :: xs)

(* Problem 9 *)
let pack lst =
  let rec aux acc lst =
    match acc, lst with
    | acc, []          -> [acc]
    | (x::xs), (y::ys) -> if x = y
                          then aux (x::acc) ys
                          else acc :: (aux [y] ys)
  in match lst with
  | []      -> []
  | (x::xs) -> aux [x] xs
;;

let pack_santi lst =
    let rec f acc acc2 y lst =
        match lst with
        | [] -> List.rev (acc2 :: acc)
        | x :: xs when x = y -> f acc (x::acc2) y xs
        | x :: xs            -> f (acc2::acc) [x] x xs
    in match lst with
    | [] -> []
    | x :: xs -> f [] [x] x xs;;
