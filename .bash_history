ls
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://awawa-dev.github.io/hyperhdr.public.apt.gpg.key | sudo dd of=/usr/share/keyrings/hyperhdr.public.apt.gpg.key && sudo chmod go+r /usr/share/keyrings/hyperhdr.public.apt.gpg.key && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hyperhdr.public.apt.gpg.key] https://awawa-dev.github.io $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hyperhdr.list > /dev/null && sudo apt update && sudo apt install hyperhdr -y
sudo systemctl disable --now hyperhdr@pi
sudo systemctl enable --now hyperhdr@root
sudo reboot
