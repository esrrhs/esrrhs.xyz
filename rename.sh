#! /bin/sh

if [ $# != 1 ];then
    echo "need new name"
    exit
fi

newname=$1
echo $newname
grep esrrhs.xyz * -rl | grep -v .sh | xargs sed 's#esrrhs.xyz#'$newname'#g' -i
