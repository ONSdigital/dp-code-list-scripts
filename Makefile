SCR=code-list-scripts
QLANG?=cypher

build: $(SCR)/load

$(SCR)/load: cmd/load/main.go
	go build -o $(SCR)/load cmd/load/main.go

cpih mid-year-pop-est:
	cd $(SCR) && ./load -q=$(QLANG) -f=$@.yaml

clean:
	test ! -f $(SCR)/load || rm $(SCR)/load

popest: mid-year-pop-est
