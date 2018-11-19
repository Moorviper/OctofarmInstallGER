
sudo nano /etc/network/interfaces


cat /etc/network/interfaces
auto enp4s0
iface enp4s0 inet dhcp
sudo nano /etc/network/interfaces
... #hinten anhängen
iface enp4s0 inet static
  address 192.168.178.100/24
iface enp4s0 inet static
  address 192.168.178.101/24
iface enp4s0 inet static
  address 192.168.178.102/24
iface enp4s0 inet static
  address 192.168.178.103/24
iface enp4s0 inet static
  address 192.168.178.104/24

ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp4s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether d0:50:66:9c:7f:e0 brd ff:ff:ff:ff:ff:ff
    inet 192.168.178.40/24 brd 192.168.178.255 scope global dynamic noprefixroute enp4s0
       valid_lft 863727sec preferred_lft 863727sec
    inet 192.168.178.100/24 brd 192.168.178.255 scope global secondary enp4s0
       valid_lft forever preferred_lft forever
    inet 192.168.178.101/24 brd 192.168.178.255 scope global secondary enp4s0
       valid_lft forever preferred_lft forever
    inet 192.168.178.102/24 brd 192.168.178.255 scope global secondary enp4s0
       valid_lft forever preferred_lft forever
    inet 192.168.178.103/24 brd 192.168.178.255 scope global secondary enp4s0
       valid_lft forever preferred_lft forever
    inet 192.168.178.104/24 brd 192.168.178.255 scope global secondary enp4s0
       valid_lft forever preferred_lft forever
    inet6 2003:da:fbd6:7a00:f2b7:fb53:57dd:da2f/128 scope global dynamic noprefixroute
       valid_lft 6931sec preferred_lft 3331sec
    inet6 2003:da:fbd6:7a00:8d8b:ad1c:44f0:52b4/64 scope global temporary dynamic
       valid_lft 6929sec preferred_lft 956sec
    inet6 2003:da:fbd6:7a00:fd2e:196a:87b6:c5b3/64 scope global dynamic mngtmpaddr noprefixroute
       valid_lft 6929sec preferred_lft 956sec
    inet6 fe80::f2b7:fb53:57dd:da2f/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
3: wlp2s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
    link/ether 20:c9:c0:40:60:ae brd ff:ff:ff:ff:ff:ff
