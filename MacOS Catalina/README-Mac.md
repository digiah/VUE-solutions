## VUE on Catalina

If you updated to Mac OSX Catalina and found out that VUE no longer works for you, or if you are on an older system and don't want to install a legacy java, there are a few viable options.  

## TL;DR
There is a way to get vue-in-the-cloud, for free but the install is tedious! see below. the quick and easy method is [RollApp](https://www.rollapp.com/), a premade $5.99/mo cloud-based instance.  Search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. 

## The problem
MacOS told us all a couple of releases ago that they would stop supporting all 32 bit apps sometime in the future.  That time has come, and any app that is 32-bit only can no longer run on a Mac.  

## VUE from the clouds for free.
The best solution I have found is to set up a virtual VUE app in the cloud and then make a remote desktop conection, either through your HTML 5 compliant browser, or through a remote desktop client like VNC. 
I have successfully gotten an Amazon Cloud free tier version of VUE running this way:
- You need to get a [free tier **Amazon Linux 2**](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) instance running (Not ubuntu or other options), 
### from the AMAZON instance terminal command line do the following.    
- [set that up for graphical use](https://aws.amazon.com/premiumsupport/knowledge-center/ec2-linux-2-install-gui/). When you complete this you will have a working remote desktop on Amazon.  
- still on the cammand line, install java on the Amazon Linux instance (`sudo amazon-linux-extras install java-openjdk11`)
- install git on the Amazon Linux: `sudo yum install git`.  
- on Amazon Linux, `mkdir -p git` and then `cd git` then `git clone https://github.com/digiah/VUE-solutions.git` (this repo) navigate to the VUE-solutions folder you just made and go to the Linux subfolder.  
- open your desktop in your vnc viewer as per the Amazon gui instructions above.  
- follow the instructions under [README-Linux.md](../Linux/README-Linux.md) to install VUE on your linux desktop.  You can do all the command line copypasta in the mate terminal or in a separate local terminal as above.

When finished, you will have a working VUE install in the cloud, but I have not worked out how to get the could instance to save locally yet.  You can get files no problem, but you will have to move them in an extra step after you save them on the could.  Stay tuned.  

## Pre-rolled VUE in the cloud for cheap
There is a pre-rolled web app that provide a cloud-hosted version of VUE, [RollApp](https://www.rollapp.com/), from the TL;DR above. Once at the site, you have to search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. This is a cloud-based solution that you can try for free to see that it works.  You can't save files, and computing power is limited.  For $5.99/month (with a 15% discount if you pay up for a year), you can open and save local files, which is crucial, plus you get more computing resources, which might perhaps speed up the process a little. That could tide you over until VUE gets around to updating, which they promised on their site, or one of us is able to figure out a cloud-based or local solution that is free. 
