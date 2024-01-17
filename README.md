# Diabolic Drive
<h1>:bangbang: Diabolic Drive default access point credentials are::bangbang:
  <br>Wi-Fi SSID: DDv1</br>
  Password: diabolic_drive 
</h1>

# :skull_and_crossbones: UNIT 72784 is intending to build unique software with a ton of features that's tailored specifically for Diabolic Drive. Get a very early Beta taste [here](https://www.youtube.com/watch?v=t5QmxH-HiyI). I believe it will be available by the end of Q1 or during Q2 2024. Stay tuned for it! and feel free to use any of the [already existing software](#firmware-supported) or stick to the beta software that comes preloaded with the already-shipped Diabolic Drives. until this happens. :) :skull_and_crossbones:
<p align="center">
  <a href="https://www.youtube.com/watch?v=nSBRwmqkTx8">
    <img alt="Diabolic Drive Teaser | A True Red Teaming Device That will Keep Evolving" src="https://i3.ytimg.com/vi/nSBRwmqkTx8/maxresdefault.jpg" width="640">
    <br>
    <b>Watch Diabolic Drive Teaser</b>
  </a>
</p>

---
* [Usage](#usage)
* [About](#about)
* [Why Diabolic Drive ?](#why-diabolic-drive-)
* [How Stealth can Diabolic Drive go ?](#how-stealth-can-diabolic-drive-go-)
* [Features](#features)
* [Firmware Supported](#firmware-supported)
* [Flash Software](#flash-software)
  + [Flash Atmega32u4](#flash-atmega32u4)
  + [Flash ESP8266](#flash-esp8266)
* [Programming Options](#programming-options)
  + [ESP8266](#esp8266)
  + [ATMEGA32U4](#atmega32u4)
  + [Access ATMEGA32U4 Bootloader](#access-atmega32u4-bootloader)
* [Technical Specifications](#technical-specifications)
* [Credits](#credits)

## Usage
1. Plug in your Diabolic Drive
2. <b>Connect to the WiFi network `DDv1` with the default password `diabolic_drive`</b>
3. Open the browser on the device you used to connect to your Diabolic Drive and visit `192.168.4.1` or `diabolic.drive`
4. Your Diabolic Drive comes preloaded with a test Ducky script, which I used in the testing phase to check if the Diabolic Drive key stroke injection works properly. No worries about it; it's just a powershell command that retrieves the credentials of the Diabolic Drive access point from your Windows machine if it's already saved and you have connected to it from your computer before.
5. To access `Settings` along with other menus, click on the 3 horizontal bars icon (top right corner).

<h3> :bangbang:The software that comes preloaded with the already-shipped Diabolic Drive is in a very early beta phase (built on <a href="https://github.com/SpacehuhnTech/WiFiDuck">WiFiDuck</a>) with some modifications to suit the Diabolic Drive and to integrate the Spectre POC feature just to get things up and running. After ensuring all Diabolic Drives are delivered to the backers, I will start working on the software side and adding features to it. :bangbang: 
  
<br>Feel free to subscribe to the <a href="https://www.youtube.com/@unit72784">UNIT 72784 YouTube channel</a>; many great videos, feature updates and use-case scenarios will be posted there very soon!</br>
</h3> 


## About

Diabolic Drive is a Red Teaming and penetration testing tool that injects keystrokes wirelessly. In addition to its innocent look of a regular modern Flash drive, it also functions the same as it looks with a real capacity of 64 GB, making it stealthy and not suspicious when plugged in, giving it the ability to be used in countless social engineering scenarios, and introducing a new concept of bad USBs.

<p align="center">
<img alt="Diabolic-Drive-PCB" src="img/PCB.jpg" width="480" >
</p>

---

## Why Diabolic Drive ?
As for pluggable USB devices, what is the most common device that has a higher chance of being plugged in by a user? Putting a flash drive with a cable in comparison, for sure, a flash drive will easily win. Thinking about how many times I plugged a cable into my laptop, I only remember a few times from the Nokia Symbian phones era compared to how many times I plugged a real Flash Drive into it, which is near a million times! But taking only the form factor of an old flash drive might not trick an adult nowadays! So I implemented a real flash storage memory of 64 GB inside of the Diabolic Drive so that when you plug it in, you can interact with a real flash storage that can be used completely as a normal flash drive would be, giving you unlimited possible social engineering scenarios to trick the targeted client to do what is intended or planned by you to do.
<p align="center">
<img alt="Diabolic Drive vs genuine flash drive" src="img/Diabolic-Drive-vs-genuine-flash-drive-PCB.jpg" width="640" >
</p>

***Diabolic Drive on the left, standard flash drive on the right**

## How Stealth can Diabolic Drive go ?
**there are 4 main features that make Diabolic Drive very Stealth**
- **PCB design is in Universal Flash Drive PCB shape.** For any person with good security awareness, plugging in a generic-looking or very old-fashioned USB 2.0 flash drive might not be the best option to go for., This is why I decided to go with the trendy shapes of modern-looking USB 3.0 flash drives and the most common available models. I did lots of recon, got many models disassembled, identified the PCB dimensions, and finally managed to get a universal PCB shape that I needed to design my PCB identical to to help the Diabolic Drive be much more stealthy, hiding itself in many common USB 3.0 flash drive enclosures out there!
 **Disclaimer :  Enclosure in image below is for demonstration purposes only !**

<p align="center">
<img alt="Diabolic Drive hidden in enclosure" src="https://www.crowdsupply.com/img/a325/diabolic-drive-hidden-in-enclosure.jpg"  width="720">
</p>

- **plug in your Diabolic Drive to a USB port will raise only one USB plug in sound** When Diabolic Drive is plugged into a host computer, it acts just like a regular USB flash drive, including any audio notifications you would normally hear when plugging in a new USB device. Your computer will identify Diabolic Drive as a flash drive, HID device, and virtual COM port simultaneously <b>(Now with SPECTRE, your computer will only identify it as a flash drive, and the HID interface remains dormant until you fire your payload.)</b>, but will only trigger an audio notification once, which is how a standard drive would behave. 
<p align="center">
  <a href="https://www.youtube.com/watch?v=JKw52I0WJpA">
    <img alt="Diabolic Drive Stealthy Feature 'audio notification ping once !' " src="https://i3.ytimg.com/vi/JKw52I0WJpA/hqdefault.jpg" width="640">
    <br>
    <b>Watch Diabolic Drive Stealthy Feature Demo</b>
  </a>
</p>

- **Hardware IDs are spoofable.** Diabolic Drive Flash storage hardware IDs can be spoofed for maximum stealthiness. These IDs include VID, PID, Vendor info, Product info, Rev info, Vendor string, Product String, and SN. This makes distinguishing Diabolic Drive very difficult!
<p align="center">
  <a href="https://www.youtube.com/watch?v=iDItm9KI_z4">
    <img alt=" Diabolic Drive in 'Stealth mode,' with spoofed hardware IDs  " src="https://i3.ytimg.com/vi/iDItm9KI_z4/maxresdefault.jpg" width="640">
    <br>
    <b>Watch Diabolic Drive in "Stealth mode," with spoofed hardware IDs </b>
  </a>
</p>

**Have a look at the image below. Can you spot which one is Diabolic Drive?**
<p align="center">
<img alt="Diabolic Drive's Hardware IDs" src="https://www.crowdsupply.com/img/1871/diabolic-drive-hardware-ids.png"  width="720">
</p>

- a **stealth mode** that can be preprogrammed and makes your computer read the ATMEGA32U4 as a HID device only, hiding its identity of running an Arduino Bootloader and its COM port from the Windows device manager, which enhances Diabolic Drive's covert usability.
- the **Spectre status**, which you can learn more about  [here](https://www.crowdsupply.com/unit-72784/diabolic-drive/updates/introducing-spectre-our-latest-stealth-feature).

![spectre thumbnail - Copy](https://github.com/unit72784/Diabolic-Drive/assets/129557291/276c66d2-7709-48eb-9f44-93244987189e)

## Features
Despite the fact that Diabolic Drive uses very simple and relatively old hardware, it was designed to get the highest level of capabilities out of it with many stealthy features in mind and to give the user maximum openness, flexibility, control, and finally, being future-proofed.
- **Features ready** :
  + ATMEGA32U4 and ESP8266 are connected to each other over both Serial and I2C protocols which means that Diabolic Drive supports running almost every Open-Source    software out there that is built for the same 2 chips . ex: WIFI DUCK , WIFI DUCKY, ESPloitV2 ,WHID , supremeDuck and much more ! 
  + Flash Storage supports reading , writing data while firing your payload wirelessly at the same time .
  + Control over WIFI with any device, using a simple web interface .
  + Hardware ID Cloning for the ATMEGA32u4 and the Flash storage  .. not on the fly though ! 

- **Features need custom software but are supported by the hardware .** ( these features are separately supported by the Open-Source Software mentioned in the Features ready section above )

   + OS detection, allowing it to work on Windows, Linux, and macOS with different behaviors.
   + alt + numpad combinations on Windows (to type correct characters regardless of system language).
   + mouse control
   + ASCII characters
   + Serial Data Exfiltration to the ESP memory .
 <p align="center">
<img alt="Diabolic Drive in action" src="img/Diabolic-Drive-in-action.gif"  width="720">
</p>


## Firmware Supported
Diabolic Drive supports every firmware out there runs on the same 2 chips ( ATMEGA32U4 , ESP8266EX ) both Serial and I2C connection between the 2 chips is fully supported .. for example out of these open source firmware is : 

- [WIFI DUCK](https://github.com/SpacehuhnTech/WiFiDuck)
- [supremeDuck](https://github.com/michalmonday/supremeDuck)
- [WIFI DUCKY](https://github.com/spacehuhn/wifi_ducky)
- [ESPloitV2](https://github.com/exploitagency/ESPloitV2)
- [WHID](https://github.com/whid-injector/WHID/)

## Flash Software

<b> I know I'm very bad at explaining things, but I will ensure I make a series of Youtube videos for a better explanation of how this process works very soon. :)
Also, feel free to do yours, and I will put your links here.:) </b> 

1. Download and install the [Arduino IDE](https://www.arduino.cc/en/software). ( recommended and tested [Version 2.1.1](https://github.com/arduino/arduino-ide/releases/tag/2.1.1) )
2. Start the Arduino IDE, go to `File` > `Preferences`.
3. At *Additional Board Manager ULRs* enter `https://raw.githubusercontent.com/unit72784/Diabolic-Drive/main/Diabolic_Drive_Custom_Board_Packages.json`.
5. Go to `Tools` > `Board` > `Board Manager`, search for `Diabolic Drive` and install `Diabolic Drive AVR` and `Diabolic Drive ESP`.
6. Download whatever supported firmware you prefer and flash it through the Diabolic Drive custom board packages with the instructions provided in the supported firmware repo. (not recommended though, as it won't give you any extra benefit beyond the firmware already loaded.)

### Flash Atmega32u4
If your Diabolic Drive runs the beta firmware that it shipped with, you need to first connect to it, then press the start button to expose the ATMEGA32U4 to your computer, as it's dormant by default with SPECTRE enabled.
Don't choose Diabolic Drive Stealth mode unless you have a Diabolic Drive Programmer or an Arduino Pro Micro that is configured to work as an ISP, or you will lose the ability to upload sketches to and through the Atmega32u4.

### Flash ESP8266
Make sure your ATMEGA32U4 is exposed to your computer and it shows a COM port in the Windows Device Manager.
Upload this sketch to your ATMEGA32U4, and after successful upload, you will notice that the Diabolic Drive ESP WIFI is no longer available as it has entered flashing mode.


## Programming Options

### ESP8266
   + OTA ( Over The Air ) through its web interface
   + through ATMEGA32U4 acting as a Serial Bridge giving you full control over it in case something went wrong (also supports NodeMCU Firmware Programmer App )
### ATMEGA32U4
   + Uploading Arduino Sketches : by directly plug your Diabolic Drive into the computer as ATMEGA32U4 has native USB support through USB transceiver built into it that handles the USB connection .
### Access ATMEGA32U4 Bootloader
   + This is a unique way by UNIT 72784 that gives you full control over the ATMEGA32U4 of a Diabolic Drive by accessing its boatloader through USB 3.0 defined pins. .. Diabolic Drive uses a modified version of the Arduino Leonardo bootloader by default and is also compatible with the original Arduino Leonardo bootloader.
<p align="center">
  <a href="https://www.youtube.com/watch?v=L3nXUaHzDiY">
    <img alt="Diabolic Drive Access ATMEGA32U4 Bootloader through USB3.0 defined pins POC " src="https://i3.ytimg.com/vi/L3nXUaHzDiY/maxresdefault.jpg" width="640">
    <br>
    <b>Watch the POC Demo</b>
  </a>
</p>


## Technical Specifications
- ATMEGA32U4 running at 16MHz and 5V .
- ESP8266ex running at 160MHZ at 3.3v with onboard LDO Regulator .
- ESP8266ex has 4MB of memory able to store millions of characters to save your payloads .
- High gain 4.1dBi ceramic chip 2.4G Wireless antenna.
- 64GB Flash Storage with average reading and writing speed of 20MB/s , 10MB/s respectively. Demo available [here](https://www.youtube.com/watch?v=Hp0QsIaciWE)

## Credits
###  on the Software Side
- [WiFiDuck](https://github.com/SpacehuhnTech/WiFiDuck) A huge thanks! 
- [supremeDuck](https://github.com/michalmonday/supremeDuck) the most feature-rich one! Actually, I like how creative Michal Borowski is!
### on the Hardware Side
- [HAK5](https://github.com/hak5darren/) If Rubber Ducky didn't exist, then Diabolic Drive would never exist! Actually, Darren is a godfather for all of these tools!
- [Mike Grover](https://twitter.com/_MG_) miniaturization inspiration!
### on the media, funding distribution side 
[CrowdSupply](https://www.crowdsupply.com/) They are the best crowdfunding site and the best team! :heart:


This is my first repo, so I'm not familiar with this staff, feel free to start a pull request for adding credits for anyone you believe was a part of this project. :) 

