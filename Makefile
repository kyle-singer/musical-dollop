hello: hello.o
	$(CXX) -o hello hello.o

hello.o: main.cpp
	$(CXX) -o hello.o -c main.cpp

clean:
	rm *.o hello
