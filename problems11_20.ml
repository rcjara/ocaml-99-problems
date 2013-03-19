open Problems1_10

type 'a rle =
    | One of 'a
    | Many of (int * 'a);;

let ecnode lst = 
  let p_list  = pack lst;
    l_list = map ~flength p_list
    h_list = hd list
    z_list = zip h_list l_list
  in 
  match z_list with 
      [] -> []
    | (1, x) -> One x
    | (i, x) -> Many i x
  ;;
