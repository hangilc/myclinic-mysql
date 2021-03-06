#!/bin/bash

usage(){
    cat << EOS
usage: dump-mysql [options] HOST
    -u | --user User (default: root)
    -p | --pass Password (default: $MYCLINIC_DB_ROOT_PASS)
    -m | --master-data (adds master data)
    -c | --charset CHARACTER-SET
    -o | --output OUTPUT-FILE
    --help (prints help message)
EOS
}

DbUser="root"
DbPass="$MYCLINIC_DB_ROOT_PASS"
MasterData=""
Charset=""
OutFile=""

while [ $# -gt 0 ]
do
    case "$1" in
        --help) usage
            exit 1
            ;;
        -u | --user) DbUser="$2"
            shift
            ;;
        -p | --pass) DbPass="$2"
            shift
            ;;
        -m | --master-data) MasterData="--master-data"
            ;;
        -c | --charset) Charset="$2"
            shift
            ;;
        -o | --out) OutFile="$2"
            shift
            ;;
        *) break ;;
    esac
    shift
done

DbHost="$1"

if [ -z "$DbHost" ]
then
    echo "Error: Host is not specified."
    usage
    exit 1
fi

if [ -z "$DbUser" ]
then
    echo "Error: User is not specified."
    usage
    exit 1
fi

if [ -z "$DbPass" ]
then
    echo "Error: Password is not specified."
    usage
    exit 1
fi

if [ -n "$Charset" ]
then
    CharsetOpt="--default-character-set $Charset"
fi

if [ -n "$OutFile" ]
then
    OutFileOpt="--result-file=$OutFile"
fi

MYSQL_PWD="$DbPass" mysqldump -h "$DbHost" -u "$DbUser" \
    --single-transaction \
    $MasterData $CharsetOpt $OutFileOpt \
    myclinic

