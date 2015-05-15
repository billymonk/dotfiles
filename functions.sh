function bak() {
  for i in $@; do
    cp "${i}" "${i}~"
  done
}

function unbak() {
  for i in $@; do
    cp "${i}~" "${i}"
  done
}

function remove-vim-swap-files() {
  for i in $(find . -name \*.sw*); do
    if [ $(file $i | awk '{print $3}') != "Flash" ];
    then
      rm $i
    fi
  done
}

function git-clean-orig() {
  for i in $(find . -name \*.orig); do
    rm $i
  done
}
