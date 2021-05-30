package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello golang from docker!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server running at 8080 > http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}
