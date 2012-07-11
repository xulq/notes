#!/bin/sh
for i in `awk -F' ' '{print $2}'  $1 `;do
 /usr/lib/shterm/authex/jiansh-etotp-verify $i -2 9 $2|grep "verify ok"&&grep $i $1
done
