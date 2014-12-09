

Usage
=====

Application should be mounted to `/app` folder.

`STORDATA` - data to access application storage: path to git repo, to S3, to rsync stor
`VER` - String to describe this version of application

```
docker run --rm -v /mnt/data/app:/app -e STORDATA="github.com/SergeyZh/testrepo" -e VER="0.1.5" sergeyzh/app-storage-git <put|get|delete>
```
