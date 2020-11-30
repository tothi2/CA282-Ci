targets = add

build: $(targets)
	@true

%: %.c
	gcc -o $@ $<

test: $(targets)
	sh tests/c-test.sh
	sh tests/perl-test.sh
	sh tests/python2-test.sh
	sh tests/coffeescript-test.sh

clean:
	rm -fv $(targets)

.PHONY: build test clean
