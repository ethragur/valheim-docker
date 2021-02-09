# valheim-docker
Docker Image for Valheim



## Environment Variables

* VALHEIMNAME: The name of the server
* VALHEIMWORLD: The name of the created world (must be the same as the savegame filename) 
* VALHEIMPASS: The password
* VALEHIMPUBLIC: The server is visible on the server list if this is set to 0 (default: 1 [not visible])


## Volumes

If you want to mount the savefile directory use the following:

*  -v ${YOURLOCALMOUNTLOCATION}:/home/steam/.config/unity3d/IronGate/Valheim


## Examples

### docker run

```bash
docker run --name effi-valheim 
            -e VALHEIMNAME="ExampleServer" -e VALHEIMWORLD="ExampleWorld" 
            -e VALHEIMPASS="asecurepassword" -e VALHEIMPUBLIC 1 
            -v /var/lib/valheim:/home/steam/.config/unity3d/IronGate/Valheim 
            ethragur/valheim:latest

```
