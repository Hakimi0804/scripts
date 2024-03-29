#!/bin/bash
CHID=-1001664444944

lock() {
    touch "$HOME/build.lock"
}

unlock() {
    rm -f "$HOME/build.lock"
}

check_lock() {
    test -f "$HOME/build.lock" && echo "Build already in progress" && exit 1
}

