#!/bin/bash

start=$1
end=$2

# 시작 숫자와 끝 숫자가 1에서 9 사이의 숫자인지 확인
if ! [[ $start =~ ^[1-9]$ ]] || ! [[ $end =~ ^[1-9]$ ]]; then
  echo "시작 숫자와 끝 숫자는 1에서 9 사이의 숫자여야 합니다."
  exit 1
fi

for i in $(seq 1 $start); do
  for j in $(seq 1 $end); do
    result=$((i * j))
    printf "%d*%d=%-4d" $i $j $result
  done
  echo
done

