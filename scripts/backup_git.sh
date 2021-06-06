#!/bin/sh

main(){
  cd /usr/str0/www;
  git add .;
  git commit -m "Backup do servidor às `date`.";
  return 0;
}
main
