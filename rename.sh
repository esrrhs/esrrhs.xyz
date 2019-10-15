#! /bin/sh
if [ $# != 1 ];then
    echo "need new name, eg. .com .ml .cf"
    exit
fi
set -x
newname=$1
echo $newname
grep esrrhs.xyz * -rl | grep -v .sh | xargs sed 's#.xyz#'$newname'#g' -i
grep "esrrhs\\\.xyz" * -r | xargs sed 's#.xyz#'$newname'#g' -i
