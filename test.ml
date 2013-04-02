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

    print_string "Fifth problem... ";
    assert (rev ["a"] = ["a"]);
    assert (rev [1; 2; 3] = [3; 2; 1]);
    assert (rev [] = []);
    assert (rev ["a"; "b"; "c"] = ["c"; "b"; "a"]);
    print_string "PASSED\n";

    print_string "Sixth problem... ";
    assert (palindrome ["a"]);
    assert (palindrome [1; 2; 1]);
    assert (palindrome []);
    assert (not (palindrome [1; 2; 3]));
    assert (not (palindrome [1; 2]));
    print_string "PASSED\n";

    print_string "Seventh problem, solution 1... ";
    assert (flatten [] = []);
    assert (flatten [Many [Many []]] = []);
    assert (flatten [ One `a ; Many [ One `b ; Many [ One `c ; One `d ] ; One `e ] ] = [ `a ; `b ; `c ; `d ; `e ]);
    assert (flatten [ One `a ; One `b ; One `c ; One `d ; One `e ] = [ `a ; `b ; `c ; `d ; `e ]);
    print_string "PASSED\n";

    print_string "Seventh problem, solution 2... ";
    assert (flatten2 [] = []);
    assert (flatten2 [Many [Many []]] = []);
    assert (flatten2 [ One `a ; Many [ One `b ; Many [ One `c ; One `d ] ; One `e ] ] = [ `a ; `b ; `c ; `d ; `e ]);
    assert (flatten2 [ One `a ; One `b ; One `c ; One `d ; One `e ] = [ `a ; `b ; `c ; `d ; `e ]);
    print_string "PASSED\n";

    print_string "Eighth problem... ";
    assert (compress [] = []);
    assert (compress [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [`a;`b;`c;`a;`d;`e]);
    print_string "PASSED\n";

    print_string "Ninth problem, solution 1... ";
    assert (pack [] = []);
    assert (pack [`a] = [[`a]]);
    assert (pack [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`d;`e;`e;`e;`e] = [[`a;`a;`a;`a]; [`b]; [`c;`c]; [`a;`a]; [`d;`d]; [`e;`e;`e;`e]]);
    assert (pack [1;2;2;3;3;3;4;4;4;4] = [[1];[2;2];[3;3;3];[4;4;4;4]]);
    assert (pack [1;2;2;3;3;3;4;4;4;4;1] = [[1];[2;2];[3;3;3];[4;4;4;4];[1]]);
    print_string "PASSED\n";

    print_string "Ninth problem, solution 2... ";
    assert (pack_santi [] = []);
    assert (pack_santi [`a] = [[`a]]);
    assert (pack_santi [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`d;`e;`e;`e;`e] = [[`a;`a;`a;`a]; [`b]; [`c;`c]; [`a;`a]; [`d;`d]; [`e;`e;`e;`e]]);
    assert (pack_santi [1;2;2;3;3;3;4;4;4;4] = [[1];[2;2];[3;3;3];[4;4;4;4]]);
    assert (pack_santi [1;2;2;3;3;3;4;4;4;4;1] = [[1];[2;2];[3;3;3];[4;4;4;4];[1]]);
    print_string "PASSED\n";

    print_string "Tenth problem... ";
    assert (encode [] = []);
    assert (encode [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [4,`a ; 1,`b ; 2,`c ; 2,`a ; 1,`d ; 4,`e]);
    assert (encode [1;1;1;2;2;2;2;3;3;4] = [3,1 ; 4,2; 2,3; 1,4]);
    assert (encode ["a";"b";"b";"c"] = [1,"a"; 2,"b"; 1,"c"]);
    assert (encode ["a"] = [1,"a"]);
    print_string "PASSED\n";


;;

