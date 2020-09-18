#!/bin/bash

pacman -Sy --noconfirm base-devel intel-ucode git sudo openssh networkmanager wget curl efibootmgr

systemctl enable NetworkManager

echo "========================================"
echo "Please uncomment multilib in /etc/pacman.conf before continuing"
echo "If not, things will NOT work!"
echo "========================================"
