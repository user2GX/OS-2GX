ASM=nasm

SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/os2gx.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/os2gx.img
	truncate -s 1440k $(BUILD_DIR)/os2g.img

$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin
