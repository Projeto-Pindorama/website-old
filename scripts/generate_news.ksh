#!/bin/ksh
# Script tosco para criar uma página de notícia

CURR_YEAR=`date +%Y`
CURR_MONTH=`date +%m`
CURR_DATE=`date +%Y%m%d%H%M`
CURR_PRETTY_DATE=`date`
WWW_TXT_DIR='/usr/str0/www/texto'
ARTICLE_SECTION_LN='67'
alias editor="${EDITOR}"
export CURR_YEAR CURR_MONTH CURR_DATE CURR_PRETTY_DATE WWW_TXT_DIR

mkdir -p ${WWW_TXT_DIR}/jornal
cp ${WWW_TXT_DIR}/template.html ${WWW_TXT_DIR}/jornal/${CURR_DATE}.html

editor /tmp/${CURR_PRETTY_DATE}_txt.md
perl markdown.pl --html4tags 

sed "${ARTICLE_SECTION_LN}i\\ This is the new line\\ " ../index.html |
