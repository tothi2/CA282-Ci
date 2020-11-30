
build = ./build
src = $(wildcard *.java)
dst = $(patsubst %.java, %.class, $(src))


compile: $(dst) $(build)/arithmetic.jar
	@true

%.class: %.java
	javac $<

$(build)/arithmetic.jar: $(build)
$(build)/arithmetic.jar: $(dst)
	jar cf $@ $?

$(build):
	mkdir -vp $@

.PHONY: compile
