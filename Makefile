all: setup debug http webserver

OPTS = -g -Wall -Wextra -Werror -pedantic -lm \
	-Wno-implicit-function-declaration \
	-Wno-sign-compare \
	-Wno-unused-parameter \
	-Wno-pointer-sign

setup:
	mkdir -p dist

http: ./src/http.c ./src/base64.c ./src/base64.h
	clang $(OPTS) -o ./dist/http ./src/http.c ./src/base64.c

webserver: ./src/webserver.c
	clang $(OPTS) -o ./dist/webserver ./src/webserver.c

debug: ./src/debug.c
	clang $(OPTS) -o ./dist/debug ./src/debug.c

clean:
	rm -rf dist
