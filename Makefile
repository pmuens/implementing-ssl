all: setup debug http webserver des aes

OPTS = -g -Wall -Wextra -Werror -pedantic -lm \
	-Wno-implicit-function-declaration \
	-Wno-unused-but-set-variable \
	-Wno-sign-compare \
	-Wno-unused-parameter \
	-Wno-pointer-sign

setup:
	mkdir -p dist

debug: ./src/debug.c
	clang $(OPTS) -o ./dist/debug ./src/debug.c

http: ./src/http.c ./src/base64.c ./src/base64.h
	clang $(OPTS) -o ./dist/http ./src/http.c ./src/base64.c

webserver: ./src/webserver.c
	clang $(OPTS) -o ./dist/webserver ./src/webserver.c

des: ./src/des.c ./src/utils.c ./src/hex.c
	clang -DTEST_DES $(OPTS) -o ./dist/des ./src/des.c ./src/utils.c ./src/hex.c

aes: ./src/aes.c ./src/utils.c ./src/hex.c
	clang -DTEST_AES $(OPTS) -o ./dist/aes ./src/aes.c ./src/utils.c ./src/hex.c

clean:
	rm -rf dist
