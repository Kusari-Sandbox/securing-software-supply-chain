all: pdf epub

pdf:
	asciidoctor-pdf -D output book/SecuringSoftwareSupplyChain.adoc

epub:
	asciidoctor-epub3 -D output book/SecuringSoftwareSupplyChain.adoc

clean:
	rm -rf build/ output/
