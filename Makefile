all: setup debug

OPTS = -g -Wall -Wextra -Werror -pedantic -lm

setup:
	mkdir -p dist

debug: ./src/debug.c
	clang $(OPTS) -o ./dist/debug ./src/debug.c

clean:
	rm -rf dist
