#!/bin/sh

main(){
  cd /usr/str0/www;
  git add .;
  git commit -m "Backup do servidor às `date`.";
  git push -uv origin master;
  return 0;
}
main
