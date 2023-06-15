setup :
	command -v pip3 >/dev/null 2>&1 || { echo "pip is not found: https://pip.pypa.io/en/stable/installation/"; exit 1; }
	pip3 install bikeshed && bikeshed update

build :
	bikeshed -f spec ./index.bs

clean :
	rm ./index.html

.PHONY: build clean setup
