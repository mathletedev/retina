dev:
	air -build.cmd "make build api" -build.bin "./bin/api" -- -dev

build api:
	go build -o ./bin/api ./cmd/api

clean:
	go clean -modcache

db:
	psql retina < ./retina.sql
