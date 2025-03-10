all: pdf epub

pdf:
	asciidoctor-pdf -D output book/SecuringSoftwareSupplyChain.adoc

epub:
	mkdir -p output
	asciidoctor -D build book/SecuringSoftwareSupplyChain.adoc
	pandoc -f docbook -i build/SecuringSoftwareSupplyChain.xml -o output/SecuringSoftwareSupplyChain.epub

clean:
	rm -rf build/ output/