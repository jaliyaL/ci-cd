package main

import "testing"

func TestHelloWorld(t *testing.T) {

	expected := "hello CI/CD"
	got := "hello CI/CD"

	if got != expected {
		t.Errorf("got %s, want %s", got, expected)
	}

}
