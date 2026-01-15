ifeq ($(OS),Windows_NT)
	# Target name for Windows
	CLEAN_CMD = del /Q /F
	EXT = .exe
else
	# Target name for Linux/macOS
	CLEAN_CMD = rm -f 
	EXT =
endif

# Define the final executables
SRC = src/main.cpp
LIB = lib/driver.cpp
LIB_H = lib/driver.h

ENAME = driver

TARGET = $(ENAME)$(EXT)

COMP_LIB = $(ENAME).o

STAT_LIB = lib$(ENAME).lib

# Rule to build the executable
$(TARGET) : $(STAT_LIB) $(SRC)
	g++ -g $(SRC) -L. -l$(ENAME) -o $(TARGET)

$(STAT_LIB) : $(COMP_LIB)
	ar rcs $(STAT_LIB) $(COMP_LIB)

$(COMP_LIB) : $(LIB) $(LIB_H)
	g++ -g -c $(LIB) -o $(COMP_LIB)

.PHONY: clean
clean:
	$(CLEAN_CMD) $(TARGET) $(STAT_LIB) $(COMP_LIB)

