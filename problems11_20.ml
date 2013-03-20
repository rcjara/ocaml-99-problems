open Problems1_10

type 'a rle =
    | One of 'a
    | Many of (int * 'a);;

(* Problem 11 *)
let ecnode lst = 
  let p_list  = pack lst;
    l_list = List.map p_list ~f:length
    h_list = List.map list ~f:hd
    z_list = zip h_list l_list
  in 
  match z_list with 
      [] -> []
    | (1, x) -> One x
    | (i, x) -> Many i x
  ;;
