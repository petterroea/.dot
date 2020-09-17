#!/bin/bash
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/petterroea/.dot/master/bootstrap.sh)"

sudo pacman -Sy --noconfirm git

pushd /tmp

git clone https://github.com/petterroea/.dot.git

pushd .dot

package=networkmanager
if pacman -Qs $package > /dev/null ; then
  echo "Detected second-stage"
  second-stage/install
else
  echo "Detected first-stage"
  first-stage/install
fi