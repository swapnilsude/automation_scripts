#!/bin/bash

function update() {
  local OS=`cat /etc/os-release | grep -i PRETTY_NAME | awk -F= '{ print $2}'`

  case "$OS" in
    *"Manjaro"* | *"Arch"*)
      sudo pacman -Syyu --noconfirm
    ;;

    *"Debian"* | *"Ubuntu"*)
      sudo apt update && sudo apt upgrade -y
    ;;

    *"Fedora"* | *"Red Hat"*)
      sudo dnf update && sudo dnf upgrade -y
    ;; 
  esac
}

update
