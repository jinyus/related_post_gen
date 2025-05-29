#!/usr/bin/env bash

set -e

BUILD=0
USAGE="Usage: $0 [-b] <dockerfile-prefix>

This script generates a Dockerfile by combining a base Dockerfile with a specific Dockerfile fragment.
The -b flag indicates that the generated Dockerfile should be built immediately after creation.
The <dockerfile-prefix> should match the name of a Dockerfile fragment in the ./dockerfiles directory, without the .Dockerfile extension.
"

# Parse optional -b flag
while getopts ":b" opt; do
  case $opt in
  b)
    BUILD=1
    ;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    echo "$USAGE"
    exit 1
    ;;
  esac
done
shift $((OPTIND - 1))

if [ $# -ne 1 ]; then
  echo "$USAGE"
  exit 1
fi

ARG="$1"
SRC="./dockerfiles/${ARG}.Dockerfile"
BASE="./dockerfiles/base.Dockerfile"
OUT="./${ARG}_temp.Dockerfile"

generate_image() {
  fragment="$1"
  output="$2"
  awk -v insert="$(<"$fragment")" '
    /#REPLACE-ME-WITH-INSTALLATION-COMMANDS/ {
      print insert
      next
    }
    { print }
  ' "$BASE" >"$output"
  echo "Wrote output to $output"
}

if [ "$ARG" = "all" ]; then
  for f in ./dockerfiles/*.Dockerfile; do
    if [ "$f" = "$BASE" ]; then
      if [ "$BUILD" -eq 1 ]; then
        echo "Building Docker image with tag 'base_databench'..."
        sudo docker build -f "$BASE" -t "base_databench" .
      fi
      continue
    fi

    name=$(basename "$f" .Dockerfile)
    out="./${name}_temp.Dockerfile"

    generate_image "$f" "$out"

    if [ "$BUILD" -eq 1 ]; then
      echo "Building Docker image with tag '${name}_databench'..."
      sudo docker build -f "$out" -t "${name}_databench" .
    fi
  done
  exit 0
fi

if [ ! -f "$SRC" ]; then
  echo "Source dockerfile '$SRC' not found."
  exit 2
fi

if [ ! -f "$BASE" ]; then
  echo "Base dockerfile '$BASE' not found."
  exit 3
fi

generate_image "$SRC" "$OUT"

if [ "$BUILD" -eq 1 ]; then
  echo "Building Docker image with tag '${ARG}_databench'..."
  sudo docker build -f "$OUT" -t "${ARG}_databench" .
fi
