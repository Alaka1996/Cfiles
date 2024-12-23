# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -Werror

# Source and object files
SRC = src/main.c src/utils.c
OBJ = $(SRC:.c=.o)

# Output executable
TARGET = my_program

# Default rule: Build the program
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule to remove build files
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
