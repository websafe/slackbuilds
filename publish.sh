#!/bin/bash

#
set -e

#
if [ -z "${1}" ];
then
  echo "Usage: ${0} PRGNAM"
  exit 1
else
  PRGNAM="${1}"
fi

#
if [ -r "${PRGNAM}.tar.gz" ];
then
  rm -v ${PRGNAM}.tar.gz
fi

#
tar --exclude=KEYWORDS --exclude=CATEGORY -czvf ${PRGNAM}.tar.gz ${PRGNAM}

#
echo -e "\n\nSlackBuild upload form: https://slackbuilds.org/submit/"
echo "SlackBuild category: $(cat ${PRGNAM}/CATEGORY)"
echo "SlackBuild keywords: $(cat ${PRGNAM}/KEYWORDS)"
