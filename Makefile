# 1. Kompilator i flagi
CXX = g++
# -I$(INC_DIR) mówi kompilatorowi, gdzie szukać plików nagłówkowych
CXXFLAGS = -Wall -Wextra -std=c++20 -O2 -I$(INC_DIR)

# 2. Definicje folderów
SRC_DIR = src
INC_DIR = include
BUILD_DIR = build
BIN_DIR = bin

# 3. Nazwa gotowego programu
TARGET = $(BIN_DIR)/go

# 4. Automatyczne wyszukiwanie plików
# Szuka plików .cpp tylko w folderze src/
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
# Zamienia ścieżki (np. src/main.cpp na build/main.o)
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SRCS))

# 5. Główna reguła (najpierw tworzy foldery, potem kompiluje)
all: directories $(TARGET)

# 6. Automatyczne tworzenie folderów wynikowych (jeśli nie istnieją)
directories:
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(BIN_DIR)

# 7. Linkowanie programu
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# 8. Kompilacja plików .cpp do .o w folderze build/
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 9. Czyszczenie projektu
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

.PHONY: all directories clean
