# bashrc
Custom bashrc

1.- Recover ~/.bashrc from /etc/skel/.bashrc (Optional)

```bash
cp /etc/skel/.bashrc ~/.bashrc
```

2.- Copy at the end of ~/.bashrc file

```bash
BASHRC_PATH=path-to-bashrc-file
if [ -f $BASHRC_PATH ]; then
   . $BASHRC_PATH
fi
```
