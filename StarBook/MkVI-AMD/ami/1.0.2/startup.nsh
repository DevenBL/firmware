echo -off
 cls
 set payload 1.0.2.bin
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-AMD. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "Disabled ASPM due to limited support in certain distributions"
echo "Updated S3 flow"
 for %a run (0 10)
 	if exist fs%a:AfuEfix64.efi then
 		fs%a:
 		AfuEfix64  %payload% /P /N /B /L
 		reset
 	endif
 endfor
