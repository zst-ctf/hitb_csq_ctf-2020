# Install CAN-Utils
sudo apt -y install can-utils

# Setup VCAN interface
sudo modprobe can
sudo modprobe vcan
sudo ip link add dev vcan0 type vcan
sudo ip link set up vcan0

# Compile dependencies
sudo apt install libsdl2-dev libsdl2-image-dev can-utils -y

# Setup ICSIM
git clone https://github.com/zombieCraig/ICSim
cd ICSim
make controls
# rm lib.o
make icsim
