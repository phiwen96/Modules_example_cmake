main: main.o A.o B.o
	clang++ -std=c++2a -stdlib=libc++ main.o A.o B.o -o main

main.o: main.cpp
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -fprebuilt-module-path=. -c main.cpp

A.o: A.cpp 
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -c A.cpp -Xclang -emit-module-interface

B.o: B.cpp 
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -c B.cpp -Xclang -emit-module-interface

buildfiles: $(*.o, *.pcm, main)

clean: 
	rm -f $(buildfiles)
