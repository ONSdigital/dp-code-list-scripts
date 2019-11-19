SCR=code-list-scripts

build: $(SCR)/load

$(SCR)/load: cmd/load/main.go
	go build -o $(SCR)/load cmd/load/main.go

cpih:
	cd $(SCR) && ./load -q=cypher -f=$@.yaml

clean:
	test ! -f $(SCR)/load || rm $(SCR)/load
