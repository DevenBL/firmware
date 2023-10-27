echo -off
 cls
 set payload 1.14.0.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-AMD. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "djust the notifications to the GPU"
echo "Reset the OCM status before initialisation"
echo "Reduce the frequency of battery status updates to 2W"
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:AfuEfix64.efi then
 		fs%a:
 		AfuEfix64 %payload% /P /B /N /R /K /X /L
 		reset
 	endif
 endfor
