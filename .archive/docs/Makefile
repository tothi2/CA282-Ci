
build: git.html git.web.html
build: git-2.html git-2.web.html
build: git-ca116.html
	@true

install: git.html git.web.html git-2.html git-2.web.html git-ca116.html
	rsync -v git.html git.web.html git-2.html git-2.web.html git-ca116.html aneto:public_html

%.html: %.slidy
	asciidoc --backend slidy $<

git.web.html: git.slidy
	asciidoc -o git.web.html git.slidy

git-2.web.html: git-2.slidy
	asciidoc -o git-2.web.html git-2.slidy

.PHONY: build install
