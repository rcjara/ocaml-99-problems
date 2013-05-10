open OUnit
open Problems21_30
open Core.Std

let int_array_viewer =
  let wrap s = String.concat ["["; s; "]"] in
  List.map ~f:string_of_int >> String.concat ~sep:", "
                            >> wrap

let p21_suite str insert_at =
  let insert_at_1 () =
    assert_equal
      ~printer: int_array_viewer
      ([1; 99; 2; 3; 4])
      (insert_at 99 1 [1; 2; 3; 4])
  and insert_at_0 () =
    assert_equal
      ~printer: int_array_viewer
      ([99; 1; 2; 3; 4])
      (insert_at 99 0 [1; 2; 3; 4])
  and insert_beyond_bounds () =
    assert_raises IndexOutOfBounds (fun () -> insert_at 99 5 [1; 2; 3; 4])
  in
    [ str ^ "P21 Insert at 1" >:: insert_at_1
    ; str ^ "P21 Insert at 0" >:: insert_at_0
    ; str ^ "P21 Insert beyond bounds" >:: insert_beyond_bounds ]

let p22_suite =
  let low_to_high () =
    assert_equal
      ~printer: int_array_viewer
      [4; 5; 6; 7; 8; 9]
      (range 4 9)
  and high_to_low () =
    assert_equal
      ~printer: int_array_viewer
      [9; 8; 7; 6; 5; 4]
      (range 9 4)
  and same () =
    assert_equal
      ~printer: int_array_viewer
      [4]
      (range 4 4)
  in
    [ "P22 low_to_high" >:: low_to_high
    ; "P22 high_to_low" >:: high_to_low
    ; "P22 same" >:: same ]


let () =
  run_test_tt_main ("Problems 21-30:" >:::
                   List.concat [ p21_suite "" insert_at
                               ; p21_suite "Tail Recursive " insert_at_tr
                               ; p22_suite]);
  ()
