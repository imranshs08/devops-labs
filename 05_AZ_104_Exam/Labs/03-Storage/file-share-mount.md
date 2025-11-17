# Azure File Share Mount

## Steps
1. Create Azure File Share.
2. Mount on Windows:
```
net use Z: \<account>.file.core.windows.net\<share> /u:<account> <key>
```
3. Mount on Linux:
```
sudo mount -t cifs //<account>.file.core.windows.net/<share> /mnt/fileshare -o vers=3.0,username=<acc>,password=<key>
```