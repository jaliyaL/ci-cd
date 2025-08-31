package main

import (
	"fmt"

	"github.com/google/uuid"
)

func main() {

	id := uuid.New()
	fmt.Println("Hello World! Your UUID is:", id.String())

	fmt.Println("hello CI/CD")
}
