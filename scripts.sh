#!/bin/zsh

case "$1" in
    "clean")
        jekyll clean
        rm -rf docs
        ;;
    "build")
        jekyll build
        mv _site docs
        ;;
    "publish")
        git add .
        git commit -s -m "normal update"
        git push -u origin main
        ;;
    "serve")
    	jekyll serve -H 0.0.0.0 -P 50000
    	;;
    *)
        echo "Usage: bash script.sh [clean|build|publish|serve]"
        ;;
esac
