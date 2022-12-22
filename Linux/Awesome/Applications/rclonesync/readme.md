# HOW to initialize Dropbox(Or another rclone remotes) sync folder using rclone

## 1. Create config
```bash
rclone config
```
output: 
```bash
n) New remote
s) Set configuration password
q) Quit config
```
then type `n` and enter for new remote

## 2. Add rclonesyncservice  
```bash
sudo cp ./rclonesyncservice /usr/local/bin/
```

## 3. Customize sync service file
edit `dropbox.service` and add your remote name (destination and source) by replacing `Dropbox: /home/{user_name}/Dropbox` <br/>
and replace all `{user_name}` with your username


## 4. Creating Linux service
```bash
sudo cp ./dropbox.service /etc/systemd/system/
```

## 5. Enable the service
```bash
sudo systemctl enable dropbox --now
```
