all: output 

output: main.o avl_tree.o
	g++ main.o avl_tree.o -o output

main.o: avl_tree.h
	g++ -c main.cpp avl_tree.h

avl_tree.o: avl_tree.h
	g++ -c avl_tree.cpp avl_tree.h

clean:
	rm *.o output


