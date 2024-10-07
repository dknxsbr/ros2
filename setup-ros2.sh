# ROS2 Foxy Fitzroy install on Ubuntu 20.04 (Focal)
# https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html

# set locale
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# setup sources
sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# install ros2 packages
sudo apt update
sudo apt upgrade
sudo apt install ros-foxy-desktop python3-argcomplete

# environment setup
source /opt/ros/foxy/setup.bash
# below is for later use
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc


