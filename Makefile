ifeq ($(shell which testml 2>/dev/null),)
    $(error 'testml' not found. You need to 'source testml/.rc')
endif

.PHONY: test
test: test-perl test-perl6 test-python test-ruby

test-perl:
	TESTML_RUN=perl5 prove -v test/*.tml

test-perl6:
	TESTML_RUN=perl6 TESTML_LIB=test/raku prove -v test/*.tml

test-python:
	TESTML_RUN=python-tap prove -v test/*.tml

test-ruby:
	TESTML_RUN=ruby-tap prove -v test/*.tml

clean:
	rm -fr test/.testml/
	rm -f test/*.pyc
