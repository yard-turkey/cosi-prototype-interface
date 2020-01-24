#!/usr/bin/env bash

set -e

ROOT="$(readlink -f $(dirname ${BASH_SOURCE[0]}))"

(
  export PATH=$PATH:$GOPATH/bin
  cd "${ROOT}"
  protoc -I cosi cosi/object_bucket_interface.proto --go_out=plugins=grpc:cosi/
)
