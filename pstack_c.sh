#!/bin/bash

# 检查参数
if [ $# -ne 1 ]; then
    echo "Usage: $0 <pid>"
    exit 1
fi

PID=$1

gdb -batch -ex "attach $PID" \
    -ex "set pagination off" \
    -ex "thread apply all bt" \
    -ex "detach" \
    -ex "quit"
