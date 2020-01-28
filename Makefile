SCR=code-list-scripts
QLANG?=cypher

.PHONY: build
build: $(SCR)/load

$(SCR)/load: cmd/load/main.go
	go build -o $(SCR)/load cmd/load/main.go

cpih mid-year-pop-est:
	cd $(SCR) && ./load -q=$(QLANG) -f=$@.yaml

popest: mid-year-pop-est

.PHONY: clean
clean:
	test ! -f $(SCR)/load || rm $(SCR)/load

.PHONY: check
check:
	./sanity.sh
