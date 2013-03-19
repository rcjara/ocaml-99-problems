open Problems11_20

let () = 
    print_string "Problem Eleven... ";
    assert (encode [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e]
  = [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)]);
    print_string "PASSED\n";
;;
