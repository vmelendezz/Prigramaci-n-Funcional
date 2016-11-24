package main

import "fmt"

func Factorial(n int) int {
    if n == 0 {
        return 1
    }
    return n * Factorial(n - 1)
}
func main() {
	fmt.Printf("%d \n", Factorial(5))
}