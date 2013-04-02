open Problems61_70


let () =
  print_string "Problem Sixty-one... ";
  let example_tree =
    Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
         Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty)))
      in
  assert(count_leaves Empty = 0);
  assert(count_leaves example_tree = 3);
  assert(leaves Empty = []);
  assert(leaves example_tree = ['d'; 'e'; 'g']);
  print_string "PASSED\n";

  print_string "Problem Sixty-two... ";
  assert(internals Empty = []);
  assert(internals example_tree = ['a'; 'b'; 'c'; 'f']);
  assert(at_level example_tree 2 = ['b'; 'c']);
  assert(at_level example_tree 5 = []);
  print_string "PASSED\n";
;;
