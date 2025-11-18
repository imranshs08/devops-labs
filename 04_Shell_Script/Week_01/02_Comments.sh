#!/bin/bash

# This script prints "Hello, World!" to the console
echo "Hello, World!"

# This is a single line comment explaining the next command

<<comment
    This is a multi-line comment.
    The following command prints the hostname of the machine.
comment

echo $(hostname)