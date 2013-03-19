open Problems1_10

let () =
  print_string "First problem... ";
  assert (last [1; 2; 3] = Some 3);
  assert (last [] = None);
  assert (last ["a"; "b"; "c"] = Some "c");
  print_string "PASSED\n";

  print_string "Second problem... ";
  assert (last_two [1; 2; 3] = Some (2,3));
  assert (last_two [] = None);
  assert (last_two ["a"; "b"; "c"] = Some ("b","c"));
  assert (last_two ["a"] = None);
  print_string "PASSED\n";

  print_string "Third problem... "; 
  assert (at 0 ["a"] = Some "a");
  assert (at 1 [1; 2; 3] = Some 2);
  assert (at 1 [] = None);
  assert (at 2 [0; 1; 2; 3; 4] = Some 2);
  assert (at 3 ["a"; "b"; "c"] = None);
  print_string "PASSED\n";

  print_string "Fourth problem... "; 
  assert (length ["a"] = 1);
  assert (length [1; 2; 3] = 3);
  assert (length [] = 0);
  assert (length [0; 1; 2; 3; 4] = 5);
  assert (length ["a"; "b"; "c"] = 3);
  print_string "PASSED\n";
;;

