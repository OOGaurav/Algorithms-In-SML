fun insert x [] = [x]
|	insert x (y::ys) = 
	if x < y
		then x::y::ys
	else
		y :: (insert x ys)

fun insertionsort [] = []
|	insertionsort (x::xs) = insert x (insertionsort xs)

val A = [9, ~1, 5, 2, 4, 0];
insertionsort A;