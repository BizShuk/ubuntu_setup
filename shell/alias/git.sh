#!/bin/bash

# git env variable
# for more detail check: [Git Internal Environment Variables](https://git-scm.com/book/en/v2/Git-Internals-Environment-Variables)
git_trace_on () {
    export GIT_TRACE = 1
    export GIT_CURL_VERBOSE = 1
}

git_trace_off () {
    unset GIT_TRACE
    unset GIT_CURL_VERBOSE
}