#!/bin/bash

SET=$(seq 1 29)

for i in $SET
do
  kubectl create namespace sk-user-$i-ns
done
