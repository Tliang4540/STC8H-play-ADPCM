VPATH = src:Output:inc

OutputPath 	= ./Output
SrcPath		= ./src
IncPath		= ./inc

target = pwm_dac.hex
object = pwm_dac.ihx
rel = $(patsubst %.c, $(OutputPath)/%.rel, $(notdir $(wildcard $(SrcPath)/*.c)))

CC = sdcc
HEX = packihx
CFLAGS = -I "$(IncPath)/" -o "$(OutputPath)/" -c

$(target): $(object)
	$(HEX) "$(OutputPath)/$(object)" > "$(OutputPath)/$(target)"

$(object): $(rel)
	$(CC) $(rel) -o "$(OutputPath)/$(object)"

$(OutputPath)/%.rel:$(SrcPath)/%.c
	$(CC) $(CFLAGS) $<

.PHONY:
clean:
	del /Q .\Output\