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
