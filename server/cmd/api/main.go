package main

import (
	"flag"
	"log"

	"github.com/mathletedev/retina/internal/auth"
	"github.com/mathletedev/retina/internal/db"
	"github.com/mathletedev/retina/internal/server"

	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("error loading .env file")
	}

	prod := flag.Bool("dev", false, "run in development mode")

	flag.Parse()

	*prod = !*prod

	auth.NewAuth(prod)

	s := server.NewServer(prod)
	d := db.NewDatabase()
	defer d.Close()

	log.Println("server started!")
	log.Fatal(s.ListenAndServe())
}
