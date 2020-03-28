### Sudo Command Not Found

After os installation, you receive this message when trying to using sudo `sudo: command not found`. Then you can follow this steps:

1. Loggin to root mode using `su` command. 

   ```sh
   su root
   ```

2. Update your repository

   ```sh
   apt update
   ```

3. Install the sudo utility 

   ```sh
   apt install sudo
   ```

   

### Giving Sudo Privilege to User

```sh
usermod -aG sudo user
```

