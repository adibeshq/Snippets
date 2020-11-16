If you are using VMWare Fusion on your machine and want to have high memory allocation for your machines you will need to add a setting in the VMWare Fusion config file.

These settings are cannot be changed via the GUI.

To make this change you will want to do the following.

Open the config file

```
sudo nano /Library/Preferences/VMware\ Fusion/config
```

Add

```
prefvmx.minVmMemPct = %
```

Where % is the amount of system memory to allocate to VMWare Fusion.

Acceptable values, any percentage value. i.e.

- 25
- 50
- 100