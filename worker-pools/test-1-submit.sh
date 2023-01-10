#!/bin/bash
set -eu

# TEST 1 SH

export PROJECT=CSC249ADOA01
export QUEUE=debug-cache-quad # CVD_Research # debug-flat-quad
export WALLTIME=00:05:00
PROCS=4
export PPN=4

ROOT=/projects/Swift-T/public/sfw/theta/compute
SWIFT=$ROOT/swift-t/2022-08-27

PATH=$SWIFT/stc/bin:$PATH

THIS=$( realpath $( dirname $0 ) )

module swap PrgEnv-intel PrgEnv-gnu

which swift-t

swift-t -m theta -n $PROCS \
        -p \
        -t w \
        $THIS/test-1.swift
date
