main: main.o A.o B.o
	clang++ -std=c++2a -stdlib=libc++ main.o A.o B.o -o main

main.o: main.cpp
	clang++ -std=c++2a -fbuiltin-module-map -fimplicit-modules -fimplicit-module-maps -fprebuilt-module-path=. -c main.cpp -o main.o

B.o: B.cpp A.o
	clang++ -std=c++2a -fbuiltin-module-map -fimplicit-modules -fimplicit-module-maps -fmodule-file=A.o -Xclang -emit-module-interface -c B.cpp -o B.o

A.o: A.cpp 
	clang++ -std=c++2a -fbuiltin-module-map -fimplicit-modules -fimplicit-module-maps -Xclang -emit-module-interface -c A.cpp -o A.o

buildfiles: $(*.o, *.pcm, main)

clean: 
	rm -f $(buildfiles)
