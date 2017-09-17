# puppet-dsc-build
Container to build DSC resources in puppet using puppetlabs-dsc module

In order to build new DSC resources for Puppet one needs to use the puppetlabs-dsc module (https://github.com/puppetlabs/puppetlabs-dsc) and follow the build instructions (https://github.com/puppetlabs/puppetlabs-dsc/blob/master/README_BUILD.md). To do it, a linux machine is needed with ruby >= 2.3.1 and git >= 2.2.0.
This is it!

**Docker image available on Docker Hub:** https://hub.docker.com/r/ricardogaspar2/puppet-dsc-build/

**Runs on Docker for Windows!**

**Image based on Ubuntu 16.04**

## What's included:
**Packages** (lastest available in apt repositories):
- build-essential
- libicu-dev
- libz-dev
- Git 2.7.4
- Ruby 2.3.1p112 (2016-04-26)

**Gems included in Dockerfile:**
- bundler version (1.15.3)
- semantic_puppet (1.0.1)
The remaining gems are the ones installed by default with ruby.

**Also non-essential but useful packages:**
- tree
- vim
- curl


#### Build docker image from Dockerfile:
```
docker build -t puppet-dsc-build . -f .\Dockerfile
```

#### Run docker image:
```
docker run -it puppet-dsc-build bash
```


