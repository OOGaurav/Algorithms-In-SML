fun selectionsort [] = []
|   selectionsort (first::last) =
    let
      fun select_r small ([], output) = small::(selectionsort output)
      |   select_r small (x::xs, output) =
            if (x< small) then
              select_r x (xs, small::output)
            else
              select_r small (xs, x::output)
    in
      select_r first (last, [])
    end

val A = [~5, 2, ~1, 3, 4, 0];
selectionsort A;