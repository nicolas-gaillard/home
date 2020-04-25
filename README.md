# Home

A collection of configuration files for a version-controlled Mac workspace that I can clone anywhere.

## Getting Started

```
cd
git clone https://https://github.com/nicolazg/home home
```

The cleanup script for OSX is coming from this [repo](https://github.com/fwartner/mac-cleanup).

## Installing

*Full instalation*
```
cd home
./install.sh
```

*Just copying files*
```
cd home
./copy.sh
```

## Upgrade & cleaning

`cd home ; ./cleanup.sh`

### TODO
* Freeze brew
    <!-- * https://github.com/Homebrew/homebrew-bundle
    * `brew leaves > formula.txt ; brew cask list >> formula.txt`
    * `brew deps --tree --installed`
    * https://stackoverflow.com/questions/26737836/install-multiple-homebrew-formulas-at-the-same-time
    * https://github.com/Homebrew/legacy-homebrew/issues/45003
    * https://apple.stackexchange.com/questions/279077/how-can-i-install-all-brew-packages-listed-in-a-text-file -->
* Better handling of 'é'
* Export visual studio code settings / extensions -> Settings Sync
* Linux version
* [Create symlynk and save old files to <name>.old](https://medium.com/@stephenagrice/take-your-linux-workspace-anywhere-backup-for-nerds-fdbf40b0421)
<!-- keeping old files -->
<!-- https://github.com/guillaumewuip/Home -->
