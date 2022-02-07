# PowerShell-SSH-data-collection-with-putty-plink
PowerShell SSH data collection with putty/plink

## Summary
This wiki article will explain how you can use Putty’s plink application to set up an SSH connection directly into a server that has the ssh server enabled to collect information and store it into a file so that this data is captured and if required can be analyzed later.

## Use Case
The reason why I have written this is that I was doing some performance testing on the NSX Bare Metal Edge Servers of a customer. The information that is important for a performance test is to collect the interface throughput and the CPU usage of the Bare Metal Edge. This article will not go into the details of how the throughput test was set up, as I will only focus on collecting the data.

The only thing important to mention is that we have two Bare Metal Edges and we used one Bare Metal Edge (BME1) where the test traffic was entered, and the other Bare Metal Edge (BME2) where the test traffic was exiting.

The goal is to receive back the traffic (on eth-in) that is sent out by the Traffic Generator (on eth-out)

Obviously, there are more interfaces in “the network” on multiple network devices (switches, routers, ESXi hosts, and VMs) but this is out of scope as we are only focussing on the Bare Metal Edges in this article.
