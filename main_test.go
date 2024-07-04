package main

import "testing"

func TestMain(t *testing.T) {
    expected := "Hello, Trade Automation Service!"
    if got := getMessage(); got != expected {
        t.Errorf("Expected %q, got %q", expected, got)
    }
}

func getMessage() string {
    return "Hello, Trade Automation Service!"
}
