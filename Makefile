.PHONY: all test

all:	test

test:
	cd test; if ./test.sh; then echo TEST OK; else echo TEST FAILED; false; fi
