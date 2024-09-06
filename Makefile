%.o: %.s;
	i686-elf-as $< -o $@

all: boot.o