ifeq ($(shell which testml 2>/dev/null),)
    $(error 'testml' not found. You need to 'source testml/.rc')
endif

.PHONY: test
test: test-perl

test-perl:
	TESTML_RUN=perl5 prove -v test/*.tml
