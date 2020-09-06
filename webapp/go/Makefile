GOPATH := ${PWD}
export GOPATH

build:
	go build -o ./isubata/isubata_${TARGET} ./src/isubata/app.go

vet:
	go vet ./src/isubata/...
