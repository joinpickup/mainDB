package main

import (
	"log"

	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/github"
)

func main() {
	m, err := migrate.New("github://joinpickup/maindb/db/migrations", "postgresql://acohen:AVNS_vb7jYz-bj-sX026J77V@pickup-do-user-11994297-0.b.db.ondigitalocean.com:25060/maindb?sslmode=require")
	if err != nil {
		log.Fatal(err)
	}

	// Migrate all the way up ...
	if err := m.Up(); err != nil {
		log.Fatal(err)
	}
}
