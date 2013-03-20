let pack_santi lst =
    let rec f acc acc2 y lst =
        match lst with
        | [] -> List.rev (acc2 :: acc)
        | x :: xs when x = y -> f acc (x::acc2) y xs
        | x :: xs            -> f (acc2::acc) [x] x xs
    in match lst with
    | [] -> []
    | x :: xs -> f [] [x] x xs;;

(* Problem 11 *)
type 'a rle =
    | One of 'a
    | Many of (int * 'a);;

let encode lst = 
  let aux acc z =
    match z with
      | (1,x) -> (One x)::acc
      | (i,x) -> (Many (i,x))::acc
  and p_list  = pack_santi lst 
  in
    let l_list = List.map List.length p_list
    and h_list = List.map List.hd p_list 
    in
      let z_list = List.combine l_list h_list 
      in
        List.rev(List.fold_left aux [] z_list);;

(* Problem 12 *)

(* Appending lists over and over is quadratic time. Would be better if
   we rewrote times to accept an accumulator which is passed to the next 
   outer list item. *)
let rec times i x = 
  if i > 0 
  then x::(times(i-1) x)
  else []
;;

let decode lst = 
  let rec decode_item acc item = 
    match item with
      | One x -> x::acc
      | Many(i,x) -> times i x @ acc
  in 
    List.rev(List.fold_left decode_item [] lst)


(* Problem 13 *) 


(* Problem 15 *)
let replicate lst n = 
  let rec times acc i item =
    if i > 0
    then times (item::acc) (i - 1) item
    else acc
  in 
  List.rev(List.fold_left (fun acc item -> times acc n item) [] lst)

(* Problem 14 *) 
let duplicate lst = replicate lst 2;;

