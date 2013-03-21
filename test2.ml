open Problems11_20

let () = 
  print_string "Problem Eleven... ";
  assert (encode [] = []);
  assert (encode [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)]);
  print_string "PASSED\n";

  print_string "Problem Twelve... ";
  assert (decode [] = []);
  assert (decode [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)] = [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e]);
  print_string "PASSED\n";

  print_string "Problem Fourteen... ";
  assert (duplicate [] = []);
  assert (duplicate [`a;`b;`c] = [`a;`a;`b;`b;`c;`c]);
  print_string "PASSED\n";

  print_string "Problem Fifteen... ";
  assert (replicate [] 3 = []);
  assert (replicate [`a;`b;`c] 3 = [`a;`a;`a;`b;`b;`b;`c;`c;`c]);
  print_string "PASSED\n";

  print_string "Problem Sixteen... ";
  assert (drop [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3 = [`a;`b;`d;`e;`g;`h;`j]);
  assert (drop [] 10 = []);
  print_string "PASSED\n";

  print_string "Problem Seventeen...";
  assert (split [] 2 = ([],[]));
  assert (split [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3 = ([`a;`b;`c] , [`d;`e;`f;`g;`h;`i;`j]));
  print_string "PASSED\n";

  print_string "Problem Eighteen...";
  assert(slice [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 2 6 = [`c;`d;`e;`f;`g]);
  print_string "PASSED\n";
;;

