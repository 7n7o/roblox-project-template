# Roblox Project Template
this is my template for roblox projects using wally, compiling to both a bundle and rbxm file

## Building
Before building the bundle, ensure you have ran `./wally_install.sh`. 
This will install and process wally packages

To build the bundle run `./bundle.sh <branch?>`
To build the rbxm run `./build.sh <branch?>`
To build both run `./compile_all.sh <branch?>`

### Notes
You must use [Stefanuk12's](https://github.com/Stefanuk12) [hybrid-mode branch of darklua](https://github.com/Stefanuk12/darklua/tree/hybrid-mode). 
Install it via cargo with the following command:
`cargo install --git https://github.com/Stefanuk12/darklua --branch hybrid-mode darklua`