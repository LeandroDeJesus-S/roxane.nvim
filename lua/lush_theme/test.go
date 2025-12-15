package main

import (
	"fmt"
	"os"
	"runtime"
	"strings"
)

// Comment: This is a single line comment
// TODO: This is a TODO comment

bad := "hi"

/*
Multi-line comment
for documentation
*/

// Constants
const (
	Pi      = 3.14159
	Version = "1.0.0"
	MaxSize = 1000
	Char = 'a'
	Bool = true
)

// Global variables
var (
	globalVar int
	globalStr = "hello"
)

// Struct definition
type Person struct {
	Name    string
	Age     int
	Address Address
}

type Address struct {
	Street  string
	City    string
	Country string
}

// Interface definition
type Writer interface {
	Write(data []byte) (int, error)
	Close() error
}

// Function with parameters and return values
func add(a, b int) int {
	return a + b
}

// Method on struct
func (p Person) String() string {
	return fmt.Sprintf("%s (%d)", p.Name, p.Age)
}

// Function with multiple return values
func divide(a, b float64) (float64, error) {
	if b == 0 {
		return 0, fmt.Errorf("division by zero")
	}
	return a / b, nil
}

// Variadic function
func sum(nums ...int) int {
	total := 0
	for _, num := range nums {
		total += num
	}
	return total
}

// Anonymous function
var multiply = func(a, b int) int {
	return a * b
}

// Main function
func main() {
	// Variable declarations
	var x int = 10
	y := 20 // Short declaration
	z := "string literal"

	// Slice and map literals
	numbers := []int{1, 2, 3, 4, 5}
	colors := map[string]string{
		"red":   "#FF0000",
		"green": "#00FF00",
		"blue":  "#0000FF",
	}

	// Array
	var arr [5]int
	arr[0] = 100

	// Pointer
	ptr := &x
	fmt.Println(*ptr)

	// Control structures
	if x > 5 {
		fmt.Println("x is greater than 5")
	} else if x == 5 {
		fmt.Println("x equals 5")
	} else {
		fmt.Println("x is less than 5")
	}

	// For loop
	for i := 0; i < len(numbers); i++ {
		fmt.Printf("Index %d: %d\n", i, numbers[i])
	}

	// Range loop
	for index, value := range numbers {
		fmt.Printf("Range: %d at %d\n", value, index)
	}

	// While-like loop
	counter := 0
	for counter < 5 {
		counter++
	}

	// Switch statement
	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Println("OS X")
	case "linux":
		fmt.Println("Linux")
	default:
		fmt.Printf("%s\n", os)
	}

	// Type switch
	var i interface{} = "hello"
	switch v := i.(type) {
	case int:
		fmt.Printf("Twice %v is %v\n", v, v*2)
	case string:
		fmt.Printf("%q is %v bytes long\n", v, len(v))
	default:
		fmt.Printf("I don't know about type %T!\n", v)
	}

	// Defer statement
	defer fmt.Println("This will be printed last")

	// Panic and recover
	defer func() {
		if r := recover(); r != nil {
			fmt.Println("Recovered from panic:", r)
		}
	}()

	// Goroutine
	go func() {
		fmt.Println("Running in goroutine")
	}()

	// Channel
	ch := make(chan int, 10)
	ch <- 42
	value := <-ch

	// Select statement
	select {
	case msg := <-ch:
		fmt.Println("Received:", msg)
	default:
		fmt.Println("No message received")
	}

	// Error handling
	result, err := divide(10, 2)
	if err != nil {
		fmt.Println("Error:", err)
	} else {
		fmt.Printf("Result: %.2f\n", result)
	}

	// String operations
	upper := strings.ToUpper(z)
	lower := strings.ToLower(z)

	// Rune and byte
	r := 'a'
	b := byte('b')

	fmt.Printf("Rune: %c, Byte: %c\n", r, b)

	// Complex numbers
	c := 3 + 4i
	realPart := real(c)
	imagPart := imag(c)

	// Raw string literal
	rawString := `This is a raw string
with multiple lines
and "quotes"`

	// Interpreted string literal
	interpretedString := "This has \"quotes\" and \n newlines"

	// Use the variables to avoid unused variable errors
	_ = y
	_ = colors
	_ = value
	_ = upper
	_ = lower
	_ = realPart
	_ = imagPart
	_ = rawString
	_ = interpretedString

	// Use os package
	_ = os.Getenv("HOME")

	fmt.Println("Program completed")
}
