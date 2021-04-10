#!/bin/bash

SET=$(seq 1 29)

for i in $SET
do
  kubectl delete namespace sk-user-$i-ns
done
