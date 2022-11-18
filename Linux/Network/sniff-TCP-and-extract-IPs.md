

The below command can extract TCP requests IPs tun0 receiving and write the IPs into the `tcp.log` file.

> The process will keep running till you interrupt it. It will continuously write IPs into the `tcp.log` file.

```bash
sudo tcpick -i tun0 | grep -Eo --line-buffered  '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}:http' \
  | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' --line-buffered >> tcp.log
```

For remove repeated IPs we can use below command
```bash
cat tcp.log | sort |  uniq
```
