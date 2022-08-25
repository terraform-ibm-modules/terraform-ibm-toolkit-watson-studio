#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "$0"); pwd -P)

BIN_DIR=$(cat .bin_dir)
export PATH="${BIN_DIR}:${PATH}"

NAME=$(cat .name)

ibmcloud login

ibmcloud resource service-instance "${NAME}" || exit 1
