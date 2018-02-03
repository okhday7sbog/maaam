brew install cmake libuv libmicrohttpd
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
./xmrig -o pool.supportxmr.com:3333 -p m -u $address -k --max-cpu-usage=100 --cpu-priority=5 --donate-level=1
