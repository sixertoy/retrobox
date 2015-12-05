# Prepare SD Card (16Go)

Connect HDMI Cable to RPi
Connect Ethernet Cable to RPi
Connect USB Keyboard
Connect USB Mouse
Connect XBOX USB Controller (or another Retropie recommended controller)

Install "SDFormatter"
Launch SDFormatter
Format with options "Format size adjsutment ON"
Exit SDFormatter

Install "MiniTool Partition Wizard Free"
Launch MiniTool Partition Wizard Free
Select SDCard
Right Click > Delete
Right Click > Create
Partition Label: Retrobox
Create As: Primary
File System: Fat32
Adjust Size And Location to 6.35Go (6500)
Click OK

Select Unallocated > Right Click > Create > Yes
Create As: Logical
File System: Fat32
Click OK (remains 8.63Go empty disk space will be expand later)

Select 6.35Go Partition (Primary) > Click Apply > Yes
Select 8.63Go Partition (Logical) > Click Apply > Yes
Exit MiniTool Partition Wizard Free

Launch Win32DiskImage
Select [Raspbian Wheey Image File](https://downloads.raspberrypi.org/raspbian/images/raspbian-2015-05-07/2015-05-05-raspbian-wheezy.zip)
Select target device (Logical partition 6.35Go)
Click "Write" > yes
Exit Win32DiskImage

Insert SDCard in RPi
Connect Battery Cable

Next step





