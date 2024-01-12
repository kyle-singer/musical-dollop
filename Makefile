DIR_GUARD=@mkdir -p $(@D)
BUILD_DIR=./build
BIN_DIR=$(BUILD_DIR)/bin
OBJ_DIR=$(BUILD_DIR)/obj
SRC_DIR=./src


$(BIN_DIR)/hello: $(OBJ_DIR)/hello.o
	$(DIR_GUARD)
	$(CXX) $(OBJ_DIR)/hello.o -o $(BIN_DIR)/hello 

$(OBJ_DIR)/hello.o: $(SRC_DIR)/main.cpp
	$(DIR_GUARD)
	$(CXX) -c $(SRC_DIR)/main.cpp -o $(OBJ_DIR)/hello.o

check: $(BIN_DIR)/hello
	$(BIN_DIR)/hello

clean:
	rm -r build
