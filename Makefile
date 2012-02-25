
.PHONY: build install clean spotless config

params:=PREFIX=$(shell pwd) GAMEUID=$(shell id -un) GAMEGRP=$(shell id -gn) GAMEPERM=0755

build:
	make -C nethack-src $(params)

install:
	make -C nethack-src install $(params)

clean:
	make -C nethack-src clean $(params)

spotless:
	make -C nethack-src spotless $(params)
	-rm -rf games

config:
	cd nethack-src
	sh sys/unix/setup.sh x


