package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	fmt.Print("Digite o valor de a: ")
	fmt.Scan(&a)
	fmt.Print("Digite o valor de b: ")
	fmt.Scan(&b)
	fmt.Print("Digite o valor de c: ")
	fmt.Scan(&c)

	delta := b*b - 4*a*c

	if delta < 0 {
		fmt.Println("A equação não possui raízes reais.")
	} else if delta == 0 {
		raiz := -b / (2 * a)
		fmt.Printf("A equação possui uma raiz real: %.2f\n", raiz)
	} else {
		raiz1 := (-b + math.Sqrt(delta)) / (2 * a)
		raiz2 := (-b - math.Sqrt(delta)) / (2 * a)
		fmt.Printf("As raízes da equação são: %.2f e %.2f\n", raiz1, raiz2)
	}
}
