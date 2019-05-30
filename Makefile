.PHONY: all test

all:	test

test:
	cd test; ./test.sh && echo TEST OK || echo TEST FAILED

