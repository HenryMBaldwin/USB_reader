#compiler is gcc
CC = gcc

#compiler flags
#-g  adds debugging information to the executable file
#-Wa;; turns on most, but not all, compiler warnings
CFLAGS =  -g -Wall

#build target
TARGET = usb_r

#make all
all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

clean:
	$(RM) $(TARGET)
