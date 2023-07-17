# Diabolic Drive
# :skull_and_crossbones: UNIT 72784 is intending to build a unique firmware with a ton of features that's tailored specifically for Diabolic Drive. I believe it will be available by Q1 of 2024. Stay tuned for it! :ninja: :skull_and_crossbones:
<p align="center">
  <a href="https://www.youtube.com/watch?v=nSBRwmqkTx8">
    <img alt="Diabolic Drive Teaser | A True Red Teaming Device That will Keep Evolving" src="https://i3.ytimg.com/vi/nSBRwmqkTx8/maxresdefault.jpg" width="640">
    <br>
    <b>Watch Diabolic Drive Teaser</b>
  </a>
</p>

---
* [About](#about)
* [Why Diabolic Drive ?](#why-diabolic-drive-)
* [How Stealthy can Diabolic Drive go ?](#how-stealthy-can-diabolic-drive-go-)
* [Features](#features)
* [Firmware Supported](#firmware-supported)
* [Programming](#programming)
  + [ESP8266](#esp8266)
  + [ATMEGA32U4](#atmega32u4)
  + [Access ATMEGA32U4 Bootloader](#access-atmega32u4-bootloader)
* [Technical Specifications](#technical-specifications)

## About

Diabolic Drive is a Red Teaming and penetration testing tool that injects keystrokes wirelessly. In addition to its innocent look of a regular Flash drive, it also functions the same as it looks with a real capacity of 64 GB, making it stealthy and not suspicious when plugged in and giving it the ability to be used in countless Social Engineering scenarios, reviving the Hotplug Attack Vector, revolutionizing the industry, and introducing a new concept of bad USBs.

<p align="center">
<img alt="Diabolic-Drive-PCB" src="img/PCB.jpg" width="480" >
</p>

---

## Why Diabolic Drive ?
As for USB devices, what is the most common device that has a higher chance of being plugged in by a user? Putting a Flash Drive with a cable in comparison, for sure, a Flash Drive will easily win. Thinking about how many times I plugged a cable into my laptop, I only remember a few times from the Nokia Symbian phones era compared to how many times I plugged a real Flash Drive into it, which is near a million times! But taking only the Form Factor of a Flash Drive is really silly and will not trick an adult! So I implemented a real flash storage memory of 64 GB inside the heart of Diabolic Drive so that when you plug it in, you can interact with a real flash storage that can be used completely as a normal flash drive would be, giving you unlimited possible social engineering scenarios to trick the targeted client to do what is intended or planned by you to do.
<p align="center">
<img alt="Diabolic Drive vs genuine flash drive" src="img/Diabolic-Drive-vs-genuine-flash-drive-PCB.jpg" width="640" >
</p>

***Diabolic Drive on the left, standard flash drive on the right**

## How Stealthy can Diabolic Drive go ?
**there are 4 main features that make Diabolic Drive very Stealthy**
- **PCB design is in Universal Flash Drive PCB shape.** For any person with good security awareness, plugging in a generic-looking or very old-fashioned USB 2.0 flash drive (which also has no embedded flash storage on it by the way) might be a big problem, so I decided to go with the trendy shapes of modern-looking USB3.0 flash drives and the most common available models. I did lots of recon, got many many models disassembled, identified the PCB dimensions, and finally managed to get a Universal PCB shape that I needed to design my PCB identical to it to help the Diabolic Drive be much more stealthy, hiding itself in many common USB 3.0 flash drive enclosures out there!
 **Disclaimer :  Enclosure in image below is for demonstration purposes only !**

<p align="center">
<img alt="Diabolic Drive hidden in enclosure" src="https://www.crowdsupply.com/img/a325/diabolic-drive-hidden-in-enclosure.jpg"  width="720">
</p>

- **plug in your Diabolic Drive to a USB port will raise only one USB plug in sound** When Diabolic Drive is plugged into a host computer, it acts just like a regular USB flash drive, including any audio notifications you would normally hear when plugging in a new USB device. Your computer will identify Diabolic Drive as a flash drive, HID device, and virtual COM port simultaneously, but will only trigger an audio notification once, which is how a standard drive would behave. 
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

- a **stealthy mode** that can be preprogrammed and makes your computer read the ATMEGA32U4 as a HID device only, hiding its identity of running an Arduino Bootloader and its COM port from the Windows device manager, which enhances Diabolic Drive's covert usability.
## Features
Diabolic Drive hardware was squeezed to get the highest level of capabilities out of it with many stealthy features in mind and was designed to give the user maximum openness, flexibility, control over it, and finally, future-proofed.
- **Features ready** :
  + ATMEGA32U4 and ESP8266 are connected to each other over both Serial and I2C protocols which means that Diabolic Drive supports running almost every Open-Source    software out there that is built for the same 2 chips . ex: WIFI DUCK , WIFI DUCKY, ESPloitV2 ,WHID , supremeDuck and much more ! 
  + Flash Storage supports reading , writing data while firing your payload wirelessly at the same time .
  + Control over WIFI with any device, using a simple web interface .
  + Hardware ID Cloning for the ATMEGA32u4  .. not on the fly though ! 

- **Features need custom software but are supported by the hardware .** ( these features are separately supported by the Open-Source Software mentioned in the Features ready section above )

   + OS detection allowing it to work on Windows, Linux, and macOS.
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


## Programming
### ESP8266
   + OTA ( Over The Air ) through its web interface
   + through ATMEGA32U4 acting as a Serial Bridge giving you full control over it in case something went wrong (also supports NodeMCU Firmware Programmer App )
### ATMEGA32U4
   + Uploading Arduino Sketches : by directly plug your Diabolic Drive into the computer as ATMEGA32U4 has native USB support through USB transceiver built into it that handles the USB connection .
### Access ATMEGA32U4 Bootloader
   + This is a unique and never existed before way by UNIT 72784  That gives you the full control over ATMEGA32U4 of a Diabolic Drive through USB3.0 defined pins .. The Diabolic Drive uses a modified version of the Caterina-promicro16 bootloader by default, and is also compatible with the Arduino Leonardo bootloader.
<p align="center">
  <a href="https://www.youtube.com/watch?v=L3nXUaHzDiY">
    <img alt="Diabolic Drive Access ATMEGA32U4 Bootloader through USB3.0 defined pins POC " src="https://i3.ytimg.com/vi/L3nXUaHzDiY/maxresdefault.jpg" width="640">
    <br>
    <b>Watch the POC Demo</b>
  </a>
</p>


## Technical Specifications
- ATMEGA 32U4 running at 16MHz and 5V .
- ESP8266ex running at 160MHZ at 3.3v thanks to LDO Regulator .
- ESP8266ex has 4MB of memory able to store 4 million characters to save your payloads .
- High gain 4.1dBi ceramic chip 2.4G Wireless antenna.
- 64GB Flash Storage with average reading and writing speed of 20MB/s , 10MB/s respectively .

