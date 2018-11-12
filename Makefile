source := $(shell git ls-files .)
version := $(shell grep -r "Version" DESCRIPTION | cut -c 22-)
pkg := CopyNumber450kCancer_$(version).tar.gz

build: $(pkg)
	@echo "Built $<"

$(pkg): $(source)
	R CMD build .

check: $(pkg)
	R CMD check $<

cran-check: $(pkg)
	R CMD check $< --as-cran

install: $(pkg)
	R CMD install $<
