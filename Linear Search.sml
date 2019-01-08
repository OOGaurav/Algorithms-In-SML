local
    fun linsearch (a, [], i) = i
      | linsearch (a, h::T, i) = if a=h then i else linsearch (a, T, i+1)

in fun search (a, L) = 
       let val l = length L 
	   val i = linsearch (a, L, 0)
       in  if i >= l then print ("Not Found\n")
	   else print ("Found At Index "^Int.toString(i)^"\n")
       end
end

val A = [5, 2, 1, 3, 4]; 
val x = 1;
search (x, A);