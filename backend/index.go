package main

import (
	"fishue-tracker/routes"
	"fmt"
	"net/http"

	_ "github.com/mattn/go-sqlite3"
)

func main() {
	fmt.Print("Starting fishue-track server...\n")

	mux := http.NewServeMux()

	userRouteHandler := http.HandlerFunc(routes.UserRoute)

	mux.Handle("/user", userRouteHandler)

	http.ListenAndServe(":8080", mux)
}
