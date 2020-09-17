echo "============================================="
echo "Installing YAY"
echo "============================================="

pushd /opt
git clone https://aur.archlinux.org/yay-git.git
sudo chown -R petterroea:petterroea ./yay-git
cd yay-git
makepkg -si

popd

echo "============================================="
echo "Installing basic xorg stuff"
echo "============================================="


sudo pacman -S --noconfirm - < xorg.txt

sudo systemctl enable lightdm

echo "============================================="
echo "Installing useful system components"
echo "============================================="


sudo pacman -S --noconfirm - < desktop-env.txt
sudo pacman -S --noconfirm - < devel.txt
sudo pacman -S --noconfirm - < fonts.txt
sudo pacman -S --noconfirm - < utils.txt
sudo pacman -S --noconfirm - < japanese-input.txt

sudo systemctl enable ntpd
sudo systemctl enable docker

echo "============================================="
echo "Installing from YAY"
echo "============================================="


yay -S optimus-manager polybar i3lock-fancy-git slack-desktop spotify

echo "============================================="
echo "Installing oh my zsh"
echo "============================================="

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "============================================="
echo "Copying config files"
echo "============================================="

cp -f -r ../home/.* ~/
cp -f -r ../home/* ~/