# Clear Linux DNS cache

To clear your Linux DNS cache run the below commands

> some commands may not work due to you have no the corresponding service installed in your Linux

```bash
sudo systemd-resolve --flush-caches
sudo systemd-resolve --statistics
sudo systemctl restart nscd
sudo systemctl restart dnsmasq
sudo systemctl restart named
```
