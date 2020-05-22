
CURR_DIR := `pwd`

.PHONY: tools
tools:
	docker-compose run ubuntu16_build /bin/bash
	docker-compose rm -f

.PHONY: build
build:
	docker-compose build


.PHONY: clean
clean:
	rm -f 01-helloword/main
	rm -f 01-helloword/*.s
	rm -f 01-helloword/*.i
	rm -f 01-helloword/*.o
	rm -f 02-hello-mul/*.o
	rm -f 02-hello-mul/*.a
	rm -f 02-hello-mul/*.so