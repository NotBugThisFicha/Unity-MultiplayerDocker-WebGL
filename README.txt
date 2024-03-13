This is unity multiplayer game dockerfiles compose for deploy on webgl
Multiplayer should use websockets(like Unity Netcode with websocket transport)

How it use:
1. Build your multiplayer game both client and server with this websocket transport settings:
   Connect address   <your inner IP>
   Path /
   Port 7777
2. Take a look at .zip archives, in there is readme file, check it
3. Rewrite zip archive builds 
4. Run docker-compose up -d from this directory

