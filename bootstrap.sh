#!/bin/bash

REPO_URL=git://github.com/fanchen1988/gitshorts
GITSHOT_DIR=${HOME}/.gitshorts

function die() {
  echo "${@}"
  exit 1
}

# Add .old to any existing git stuff
for i in ${HOME}/.gitconfig; do
  if [[ ( -e $i ) || ( -h $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone Vimfiles into .vim
git clone ${REPO_URL} ${GITSHOT_DIR} \
  || die "Could not clone the repository to ${HOME}/.gitshorts"

mkdir -p ${HOME}/bin

ln -s ${GITSHOT_DIR}/gitconfig ${HOME}/.gitconfig

ls ${GITSHOT_DIR}/bin | while read file; do
  ln -sf ${GITSHOT_DIR}/bin/${file} ${HOME}/bin/
done

echo "DONE!"
