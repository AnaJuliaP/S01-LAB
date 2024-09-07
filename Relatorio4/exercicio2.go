package main

import (
	"fmt"
	"math/rand"
	"time"
)

func fatorial(n int) int {
	if n == 0 {
		return 1
	}
	result := 1
	for i := n; i > 1; i-- {
		result *= i
	}
	return result
}

func main() {
	rand.Seed(time.Now().UnixNano())

	num := rand.Intn(10)
	fmt.Printf("Número aleatório gerado: %d\n", num)

	fat := fatorial(num)
	fmt.Printf("Fatorial de %d é: %d\n", num, fat)
}
