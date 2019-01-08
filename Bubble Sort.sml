fun bsort [] = []
|   bsort [x] = [x]
|   bsort (x::y::xs) =   
                    if(y<x) then
                        y::bsort(x::xs)
                    else
                        x::bsort(y::xs);
                    
fun bubblesort [] = []
|   bubblesort (x::xs) = bsort(x::(bubblesort(xs)));

val A = [5, 2, 1, 3, 4];
bubblesort A;