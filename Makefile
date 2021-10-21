main: main.o A.o B.o
	clang++ -std=c++2a -stdlib=libc++ main.o A.o B.o -o main

main.o: main.cpp
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -fprebuilt-module-path=. -c main.cpp -o main.o

A.pcm: A.cpp 
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -c A.cpp -Xclang -Xclang -emit-module-interface -o A.pcm

B.pcm: B.cpp 
	clang++ -std=c++2a -fimplicit-modules -fimplicit-module-maps -c B.cpp -Xclang -o build/B.pcm

buildfiles: $(*.o, *.pcm, main)

clean: 
	rm -f $(buildfiles)
