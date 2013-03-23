open Problems41_50


let () =
  print_string "Problem Forty-nine... ";
  assert(gray(1) = ["0";"1"]);
  assert(gray(2) = ["00";"01";"11";"10"]);
  assert(gray(3) = ["000";"001";"011";"010";"110";"111";"101";"100"]);
  print_string "PASSED\n";

  print_string "Problem Fifty... ";
  let fs = [Fr('a',45);  Fr('b',13);    Fr('c',12);    Fr('d',16);    Fr('e',9);      Fr('f',5)]
  and hs = [Hc('a',"0"); Hc('b',"101"); Hc('c',"100"); Hc('d',"111"); Hc('e',"1101"); Hc('f',"1100")]
  and tree = (Node (100,
               (Fr ('a', 45)),
               (Node (55,
                 (Node (25,
                   (Fr ('c', 12)),
                   (Fr ('b', 13)))),
                 (Node (30,
                   (Node (14,
                     (Fr ('f', 5)),
                     (Fr ('e', 9)))),
                   (Fr ('d', 16))))))))
  and simp_lst = [Fr ('f', 5); Fr ('e', 9)]
  and simp_tree = (Node (14, (Fr ('f', 5)), (Fr ('e', 9))))
  in
    assert(gen_tree simp_lst = simp_tree);
    print_string "gen_tree (simp) PASSED\n";
    assert(gen_tree fs = tree);
    print_string "gen_tree (real) PASSED\n";
    assert(huffman fs = hs);
    print_string "huffman PASSED\n";
;;














