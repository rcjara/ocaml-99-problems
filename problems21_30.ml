open Core.Std

let (<<) f g x = f (g x)
let (>>) f g x = g (f x)

exception IndexOutOfBounds

(* Problem 21 *)
(* Non tail recursive version *)
let rec insert_at item i lst =
  match (i, lst) with
  | (0, lst) -> item :: lst
  | (i, l :: lst) when i > 0 -> l :: (insert_at item (i - 1) lst)
  | _ -> raise IndexOutOfBounds

(* tail recursive version *)
let insert_at_tr item i lst =
  let rec aux acc i lst =
    match (i, lst) with
    | (0, lst)                 -> (List.rev acc) @ (item :: lst)
    | (i, l :: lst) when i > 0 -> aux (l :: acc) (i - 1) lst
    | _                        -> raise IndexOutOfBounds
  in aux [] i lst

(* Problem 22 *)
let rec range i j =
  match (i, j) with
  | (i, j) when i < j -> i :: range (i + 1) j
  | (i, j) when i > j -> i :: range (i - 1) j
  | (i, _) -> [i]

(* Shared Helpers *)
let remove_at i lst = List.take lst i @ List.drop lst (i + 1)

(* Problem 23 *)
let rand_select n lst =
  let selected = Array.of_list_rev (List.take lst n) in
  let rec aux i = function
  | [] -> Array.to_list selected
  | (x :: xs) -> if Random.int (n + i) < n
                 then Array.nset selected (Random.int n) x
                 else ();
                 aux (i + 1) xs
  in aux 1 (List.drop lst n)

(* Problem 24 *)
let lotto_select n upto =
  rand_select n (range 1 upto)

(* Problem 25 *)
let permutation lst =
  let perm = Array.of_list_rev lst in
  let len  = Array.length perm in
  let rec aux = function
  | i when i < len -> let rand = (Random.int (len - i)) + i in
                      (Array.swap perm i rand;
                       aux (i + 1))

  | _ -> ()
  in
    aux 0;
    Array.to_list perm

