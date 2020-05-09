## VUE on Catalina

If you updated to Mac OSX Catalina and found out that VUE no longer works for you, or if you are on an older system and don't want to install a legacy java, there are a few viable options.  

## TL;DR
There is a way to get vue-in-the-cloud, for free but the install is tedious. See below. The quick and easy method is [RollApp](https://www.rollapp.com/), a premade $5.99/mo cloud-based instance.  Search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. Detals below.

## The problem
MacOS told us all a couple of releases ago that they would stop supporting all 32-bit apps sometime in the future.  That time has come, and any app that is 32-bit only can no longer run on a Mac.  

## VUE from the clouds for free.
The best solution I have found is to set up a virtual VUE app in the cloud and then make a remote desktop conection, either through your HTML 5 compliant browser, or through a remote desktop client like VNC. Here is how:
- You need to get a [free tier **Amazon Linux 2**](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) instance running (Not ubuntu or other options), 
### from the AMAZON instance terminal command line once you have your instance running do the following.    
- [set that up for graphical use](https://aws.amazon.com/premiumsupport/knowledge-center/ec2-linux-2-install-gui/). When you complete this you will have a working remote desktop on Amazon.  
- still on the cammand line, install java on the Amazon Linux instance (`sudo amazon-linux-extras install java-openjdk11`)
- install git on the Amazon Linux: `sudo yum install git`.  
- on Amazon Linux, `mkdir -p git` and then `cd git` then `git clone https://github.com/digiah/VUE-solutions.git` (this repo) navigate to the VUE-solutions folder you just made and go to the Linux subfolder.  
- open your desktop in your vnc viewer as per the Amazon gui instructions above.  
- follow the instructions under [README-Linux.md](../Linux/README-Linux.md) to install VUE on your Linux desktop.  You can do all the command line copypasta in the mate desktop terminal on your VNC connection or in a separate local terminal as above.

## File transfer

You can connect to your cloud to fetch your newly made vue files to your local computer or viceversa by [setting up an sftp connection through filezilla](https://docs.aws.amazon.com/transfer/latest/userguide/getting-started-use-the-service.html#filezilla) or the ftp manager of your choice.  SCP also works.  


## Pre-rolled VUE in the cloud for cheap
There is a pre-rolled web app that provide a cloud-hosted version of VUE, [RollApp](https://www.rollapp.com/), from the TL;DR above. Once at the site, you have to search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. This is a cloud-based solution that you can try for free to see that it works.  You can't save files, and computing power is limited.  For $5.99/month (with a 15% discount if you pay up for a year), you can open and save local files, which is crucial, plus you get more computing resources, which might perhaps speed up the process a little. That could tide you over until VUE gets around to updating, which they promised on their site, or one of us is able to figure out a cloud-based or local solution that is free. 

## clunky, expensive, and/or nonsolutions.

The commonly suggested ones are to use Parallels or or Bootcamp on your Mac, and run VUE in windows on the VM.  The problem is that this is a huge resource hog of both memory and disk space and a pain to use in practice.All of these are clunky and if you don't have money, costly. You can run Oracle's VIrtualBox VM for free, but it is finicky to set up.  If you can cobble together a linux VM with 32-bit Java in it, you could run that with a much lighter footprint using something like Alpine Linux.  

### Containers
Then there are container technologies, like snap and docker.  So, I made a docker container, a valuable learning experience.  Went to the mac and found out the platform only runs on Linux and Windows without tweaking beyond my skills or time allotment, and requires a complex client-server setup.  Then I tried Snaps -- their site says that snapcraft can definitely be run on a mac, and they are entirely self-contained, keeping the 32 bit laggards safely out of the upscale Catalina 64 bit neighborhood. I learned how to build a snap.  Went to the Mac to happily launch my snap container and found out that while you can *build* snaps using snapcraft through HomeBrew, you can't *launch* them on the Mac.  This was downright cruel. 

### MacPorts, HomeBrew
Neither homebrew not MacPorts have a solution and my guess is that they use local libraries to run and will thus be constrained by the 64-bit requirement too. 
