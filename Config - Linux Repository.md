### Adding Repository

Add linux repository on source list file 

```sh
nano /etc/apt/source.list
```

or create a new list inside source list directory

```sh
nano /etc/apt/source.list.d/repo.list
```

> **Note**: the directory you can easily add new repositories without the need to edit the central `/etc/apt/sources.list` file. I.e. you can just put a file with a unique name and the same format as `/etc/apt/sources.list` into this folder and it is used by apt.
>
> In order to remove this source again you can just remove that specific file without the need for handling side effects, parsing or mangling with `/etc/apt/sources.list`. It's mainly for scripts or other packages to put their repositories there automatically - if you manually add repositories you could add them to `/etc/apt/sources.list` manually.
>
> https://stackoverflow.com/questions/26020917/what-is-the-function-of-etc-apt-sources-list-d



After changging the repository dont forget to update the package manager in super user mode

```
apt update
```



#### Repository List

Debian 10 

```sh
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
```

Kambing UI

```
deb http://kambing.ui.ac.id/debian buster main contrib non-free
deb-src http://kambing.ui.ac.id/debian buster main contrib non-free
```

Kebo.vlsm

```
deb http://kebo.vlsm.org/debian buster main contrib non-free
deb-src http://kebo.vlsm.org/debian buster main contrib non-free
```

Data Utama Surabaya

```
deb http://mirror.unej.ac.id/debian buster main contrib non-free
deb-src http://mirror.unej.ac.id/debian buster main contrib non-free
```

