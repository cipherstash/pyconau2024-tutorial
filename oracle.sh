#!/bin/bash

get_record() {
    local id=$1
    status_code=$(curl -o /dev/null -s -w "%{http_code}" "http://127.0.0.1:5000/users/$id")
    if [[ "$status_code" -eq 200 ]]; then
        return 0
    fi
    return 1
}

# ID of the first record
start=7865

# counting from the end (0 is the last byte)
for ((position=0; position<=15; position++)); do
    for ((i=0; i<=255; i++)); do
        id=$((start + i))
        id=$((id + (256 * position)))
        echo "Trying $id"
        if get_record $id; then
            echo "Found valid padding for $id, value: $i"
            break
        fi
    done
done