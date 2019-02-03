#!/usr/bin/env bash

TEST="/home/milano/.cache/bazel/_bazel_milano/36f5309ca0e28cfa16ff23af5a4434e7/execroot/rules_copy/bazel-out/k8-fastbuild/bin/examples/copy_here.runfiles/rules_copy"

function find_bin_dir(){
EXECROOT_LOC=$(echo $1 | awk 'END{print index($0,"/execroot/")}')
PROJECT_LOC=$((EXECROOT_LOC+9))
BIN_DIR_WITHOUT_PROJECT_NAME=${TEST:0:$PROJECT_LOC}
PROJECT_NAME_WITH_EXTRA=${TEST:$PROJECT_LOC}
END_INDEX_PROJECT_LOC=$(echo $PROJECT_NAME_WITH_EXTRA | awk 'END{print index($0,"/")}')
END_INDEX_PROJECT_LOC=$((END_INDEX_PROJECT_LOC-1))
PROJECT_NAME=${PROJECT_NAME_WITH_EXTRA:0:END_INDEX_PROJECT_LOC}
echo $BIN_DIR_WITHOUT_PROJECT_NAME$PROJECT_NAME

}

find_bin_dir $TEST