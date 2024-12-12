#!/usr/bin/env bats

@test "example test" {
    run echo "Hello, world!"
    [ "$status" -eq 0 ]
    [ "$output" = "Hello, world!" ]
}
