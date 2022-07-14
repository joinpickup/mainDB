package main

import (
	"log"

	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/github"
)

func main() {
	m, err := migrate.New("github://andyrewco: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@joinpickup/maindb/db/migrations", "postgres://admin:pickup123@localhost:5432/pickup?sslmode=disable")
	if err != nil {
		log.Fatal(err)
	}

	// Migrate all the way up ...
	if err := m.Up(); err != nil {
		log.Fatal(err)
	}
}
