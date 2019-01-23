#!/bin/bash

case "$1"a in
    "--help"|"-h"|"-?"|"")
        echo "Usage: $0 host [dig|getent]"
        exit
        ;;
    *)
        case "$2" in
            getent)
                getent hosts $1 | awk '{ print $1 }'
                ;;
            *)
                dig +short $1
                ;;
        esac
        ;;
esac
