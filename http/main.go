package main

import (
	"io"
	"log"
	"net/http"
)

func version(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "v2")
}

func main() {
	http.HandleFunc("/", version)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
