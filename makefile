CXX=clang++-5.0
CXXFLAGS=-std=c++17
all: Board.o square.o IllegalCoordinateException.o IllegalCharException.o
Board.o: Board.cpp Board.h BuildBoard.h
	$(CXX) $(CXXFLAGS) -c  Board.cpp -o Board.o
	
BuildBoard.o: BuildBoard.cpp BuildBoard.h Board.h
	$(CXX) $(CXXFLAGS) -c  BuildBoard.cpp -o BuildBoard.o
	
IllegalCoordinateException.o: IllegalCoordinateException.cpp IllegalCoordinateException.h
	$(CXX) $(CXXFLAGS) -c  IllegalCoordinateException.cpp -o IllegalCoordinateException.o
	
IllegalCharException.o: IllegalCharException.cpp IllegalCharException.h
	$(CXX) $(CXXFLAGS) -c  IllegalCharException.cpp -o IllegalCharException.o
Champion.o: $(SRC_DIR)/Pleywr.cpp $(HEADERS_DIR)/Pleywr.h 
	$(CXX) $(CXXFLAGS) -c $(SRC_DIR)/Pleywr.cpp -o Pleywr.o

DummyPlayers.o: $(SRC_DIR)/DummyPlayers.cpp $(HEADERS_DIR)/DummyPlayers.h 
	$(CXX) $(CXXFLAGS) -c $(SRC_DIR)/DummyPlayers.cpp -o DummyPlayers.o

TicTacToe.o:$(SRC_DIR)/TicTacToe.cpp $(HEADERS_DIR)/TicTacToe.h 
	$(CXX) $(CXXFLAGS) -c $(SRC_DIR)/TicTacToe.cpp -o TicTacToe.o

Player.o:$(SRC_DIR)/Player.cpp $(HEADERS_DIR)/Player.h 
	$(CXX) $(CXXFLAGS) -c $(SRC_DIR)/Player.cpp -o Player.o
clean:
	rm *.o 
