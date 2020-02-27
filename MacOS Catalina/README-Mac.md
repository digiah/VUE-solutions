## VUE on Catalina

If you updated to Mac OSX Catalina and found out that VUE no longer works for you, or if you are on an older system and don't want to install a legacy java, there are a few viable options.  

## TL;DR
[RollApp](https://www.rollapp.com/), $5.99/mo cloud-based instance.  Search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. 

## The problem
MacOS told us all a couple of releases ago that they would stop supporting all 32 bit apps sometime in the future.  That time has come, and any app that is 32-bit only can no longer run on a Mac.  

## clunky and expensive solutions.

The commonly suggested ones are to use Parallels or or Bootcamp on your Mac, and run VUE in windows on the VM.  The problem is that this is a huge resource hog of both memory and disk space and a pain to use in practice.All of these are clunky and if you don't have money, costly. You can run Oracle's VIrtualBox VM for free, but it is finicky to set up.  If you can cobble together a linux VM with 32-bit Java in it, you could run that with a much lighter footprint using something like Alpine Linux.  

## Containers
Then there are container technologies, like snap and docker.  So, I made a docker container, a valuable learning experience.  Went to the mac and found out the platform only runs on Linux and Windows without tweaking beyond my skills or time allotment, and requires a complex client-server setup.  Then I tried Snaps -- their site says that snapcraft can definitely be run on a mac, and they are entirely self-contained, keeping the 32 bit laggards safely out of the upscale Catalina 64 bit neighborhood. I learned how to build a snap.  Went to the Mac to happily launch my snap container and found out that while you can *build* snaps using snapcraft through HomeBrew, you can't *launch* them on the Mac.  This was downright cruel. 

## MacPorts, HomeBrew
Neither homebrew not MacPorts have a solution and my guess is that they use local libraries to run and will thus be constrained by the 64-bit requirement too. 

## VUE from the clouds

There is another way, which is to set up a virtual VUE app in the cloud and then make a remote desktop conection, either through your HTML 5 compliant browser, or through a remote desktop client like VNC. I am still exploring a free or low-cost, preferably open source way to do this, but nothing yet. 

The most important thing to know about cloud based solutions is that they all take a while to load and run a bit slower than their local counterparts: like 30 seconds to a minute once you click start.  The second is that I have been unable thus far to find or create a free solution, so there is cost involved. 

With those caveats in mind, there are however two promising web apps that provide a cloud-hosted version of VUE.  The more robust one is [Cameyo](https://cameyo.com), but it is prohibitively expensive and built for the server end of things. 

The other option is [RollApp](https://www.rollapp.com/), from the TL;DR above. Once at the site, you have to search for the full app name, "Visual Understanding Environment." Just searching on "VUE" will not find it. This is a cloud-based solution that you can try for free to see that it works.  You can't save files, and computing power is limited.  For $5.99/month (with a 15% discount if you pay up for a year), you can open and save local files, which is crucial, plus you get more computing resources, which might perhaps speed up the process a little. That could tide you over until VUE gets around to updating, which they promised on their site, or one of us is able to figure out a cloud-based or local solution that is free. 
