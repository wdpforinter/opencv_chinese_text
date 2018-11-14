
PROJECT_HOME = .
#OPENCV_PATH=/usr/local/lib
CUXX = g++

BIN = ${PROJECT_HOME}/demo

SRCS =  ./main.cpp ./Cv310Text.cpp 
OBJS = $(SRCS:.cpp=.o)

CFLAGS =-g -O3 -std=c++11 -fPIC -I${PROJECT_HOME} -I/usr/include/freetype2/

LIBFLAGS = -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lfreetype

all: $(BIN)

$(OBJS):

%.o: %.cpp
	$(CUXX) -c $(CFLAGS) $< -o $@

$(BIN): $(OBJS)
	$(CUXX) $^ $(LIBFLAGS) -o $@ 

clean:
	rm -f $(BIN) ./*.o

