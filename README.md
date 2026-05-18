# krueger

<sup>**Social Media Photo by [Enrique Guzmán Egas](https://unsplash.com/@kike_borland) on [Unsplash](https://unsplash.com/)**</sup>

## Install

### Linux

Right now there is an [AUR package](https://aur.archlinux.org/packages/krueger) for *ArchLinux* users but you can also do the following and call it a day:

```sh
curl -LO https://raw.githubusercontent.com/WebReflection/krueger/refs/heads/main/freddy.sh
chmod +x freddy.sh
sudo mv freddy.sh /usr/local/bin/krueger
```

Please **note** this [shell script](./freddy.sh) relies on *systemd*.


### Darwin

```sh
brew tap WebReflection/krueger https://github.com/WebReflection/krueger
brew install krueger
```

## Usage

```sh
# once krueger is on, the machine cannot sleep
krueger on

# once krueger is off, the machine sleeps as it wants
krueger off

# check if krueger is enabled or disabled
krueger status
```
