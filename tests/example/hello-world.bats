#!/usr/bin/env bats

@test "example test" {
    run hello
    [ "$status" -eq 0 ]
    [ "$output" = "Hello, world!" ]
}
