.PHONY: fasttext

-include makefile.inc


sent2vec:
	git submodule update --init --recursive

sent2vec/fasttext: sent2vec
	$(MAKE) -C sent2vec clean
	$(MAKE) -C sent2vec


wheel: sent2vec/fasttext
	python setup.py bdist_wheel
