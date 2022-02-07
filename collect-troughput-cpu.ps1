## This script was written by Iwan Hoogendoorn
## The release date of this script is the 7th of Februari 2022
## The purpose of this script is to collect interface and CPU statistics on NSX Bare Metal Edges 
## You will require PowerShell and putty/plink to make it work
###################################################################################################

#The output file 
$file = "C:\Users\iwan\Desktop\07-02-2020-128-test2.txt"

####===========================
#### MINUTE 1
####===========================

#COLLECTION RUN #1

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#1" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#1" | Out-File -FilePath $file

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#1" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#1" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #2

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#2" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#2" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#2" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#2" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 2
####===========================

#COLLECTION RUN #3

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#3" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#3" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#3" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#3" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #4

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#4" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#4" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#4" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#4" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 3
####===========================

#COLLECTION RUN #5

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#5" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#5" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#5" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#5" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #6

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#6" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#6" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#6" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#6" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 4
####===========================

#COLLECTION RUN #7

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#7" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#7" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#7" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#7" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #8

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#8" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#8" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#8" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#8" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 5
####===========================

#COLLECTION RUN #9

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#9" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#9" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#9" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#9" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #10

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#10" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#10" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#10" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#10" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 6
####===========================

#COLLECTION RUN #11

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#11" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#11" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#11" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#11" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #12

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#12" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#12" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#12" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#12" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 7
####===========================

#COLLECTION RUN #13

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#13" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#13" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#13" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#13" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #14

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#14" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#14" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#14" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#14" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 8
####===========================

#COLLECTION RUN #15

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#15" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#15" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#15" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#15" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #16

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#16" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#16" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#16" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#16" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 9
####===========================

#COLLECTION RUN #17

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#17" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#17" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#17" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#17" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #18

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#18" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#18" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#18" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#18" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

####===========================
#### MINUTE 10
####===========================

#COLLECTION RUN #19

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#19" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#19" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#19" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#19" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

# Pause for 30 seconds but disallow keystroke breaks
$date = Get-Date
Write-host "$date Pause for 30 seconds" 
Write-Output "$date Pause for 30 seconds" | Out-File -FilePath $file -Append
timeout /t 30 /nobreak

#COLLECTION RUN #20

$date = Get-Date
Write-host "$date Collecting the BME1 interface and CPU statistics RUN#20" 
Write-Output "$date Collecting the BME1 interface and CPU statistics RUN#20" | Out-File -FilePath $file -Append

# Collect the BME1 interface and CPU statistics
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME1.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "rx Gbps", "rx k_miss", "rx kpps" | Select -Skip 3 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date Collecting the BME2 interface and CPU statistics RUN#20" 
Write-Output "$date Collecting the BME2 interface and CPU statistics RUN#20" | Out-File -FilePath $file -Append

# Collect the BME2 interface and CPU statistics
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get hostname; get clock; get dataplane cpu stats | find Core|Usage" | Out-File -FilePath $file -Append
C:\plink.exe -ssh  admin@BME2.corp.local -pw VMware1!VMware1! "get dataplane throughput 5 | json" | select-string -pattern "fp-eth", "tx Gbps","tx kpps" | Select -Skip 2 | Out-File -FilePath $file -Append

$date = Get-Date
Write-host "$date The data collection has ended" 
Write-Output "$date The data collection has ended" | Out-File -FilePath $file -Append
