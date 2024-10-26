# **class documentation for wednesday 16 october 2024**
### virtualisation and containerisation

to launch an instance called foo on multipass

 multipass launch foo
 to launch the docker on a VM with the name docker-vm

```html
multipass launch docker --name docker-vm
```
 to delete an instance of a VM

 ```shell
 multipass delete foo
 ```
 to delte all deleted instances
 ```shell
 
 multipass purge

 ```
 to create an alias
 ```shell
 alias docker=multipass launch docker --name docker-vm
 ```