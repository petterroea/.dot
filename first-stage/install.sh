#!/bin/bash

pacman -Sy --noconfirm base-devel intel-ucode git sudo openssh networkmanager wget curl efibootmgr

systemctl enable NetworkManager