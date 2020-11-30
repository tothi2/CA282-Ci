# Hello world.
targets  = Add.class
targets += add

build: $(targets)
	@true

%.class: %.java
	javac $<

%: %.c
	gcc -o $@ $<

test: $(targets)
	@# Output the test context (for reference only).
	pwd
	ls -l
	@# Run "tests"
	sh tests/c-test.sh
	sh tests/perl-test.sh
	sh tests/java-test.sh
	sh tests/python2-test.sh
	sh tests/coffeescript-test.sh
	@echo "All language tests passed ok."
	@#
	@echo ok

clean:
	rm -fv $(targets)

# This requires gitlab-runner.
docker-test:
	gitlab-runner exec docker test

.PHONY: build test clean docker-test hello

hello:
	@echo "hello world!"
