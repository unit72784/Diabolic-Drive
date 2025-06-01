# Diabolic Drive

# 💀 The final Diabolic Drive firmware is live — locked, loaded, and lethal.This isn’t just an update — it’s a full-scale upgrade built for offensive ops in the real world. Designed by UNIT 72784. One mind. Full control. For every hacker. You’ve waited long enough. Flash it. Wreck everything. Break what must be broken. 💀
# [New firmware installation instructions are here.](https://github.com/unit72784/Diabolic-Drive/blob/main/New%20firmware%20installation%20instructions.md)
<p align="center">
  <a href="https://www.youtube.com/watch?v=nSBRwmqkTx8">
    <img alt="Diabolic Drive Teaser | A True Red Teaming Device That will Keep Evolving" src="https://i3.ytimg.com/vi/nSBRwmqkTx8/maxresdefault.jpg" width="640">
    <br>
    <b>Watch Diabolic Drive Teaser</b>
  </a>
</p>

---

* [Firmware ChangeLog](#firmware-changelog)
* [Usage](#usage)
* [About](#about)
* [Why Diabolic Drive ?](#why-diabolic-drive-)
* [How Stealth can Diabolic Drive go ?](#how-stealth-can-diabolic-drive-go-)
* [Features](#features)
* [Flash Software](#flash-software)
  + [Flash Atmega32u4](#flash-atmega32u4)
  + [Flash ESP8266](#flash-esp8266)
* [Programming Options](#programming-options)
  + [ESP8266](#esp8266)
  + [ATMEGA32U4](#atmega32u4)
  + [Access ATMEGA32U4 Bootloader](#access-atmega32u4-bootloader)
* [Technical Specifications](#technical-specifications)
* [Credits](#credits)

<h1>:bangbang: Diabolic Drive default access point credentials are:
  <br>Wi-Fi SSID: DDv1</br>
  Password: diabolic_drive 
  :bangbang:
</h1>

# Firmware ChangeLog 
### 1. Dynamic Hardware ID Spoofing :
Spoof the VID and PID of your Diabolic Drive over the Web UI using the USBID command.

### 2. Side-Channel Exfiltration with Keystroke Reflection
Capture and reflect keystrokes in real-time for stealthy data extraction.

### 3. LangIgnore Mode
No layout? No problem. Payloads are delivered consistently using ALT + numpad ASCII codes, bypassing language settings across all keyboard layouts.

### 4. OS Detection
Automatically detects the target operating system so you can adapt payloads accordingly.

### 5. Configurable Random Typing Cadence
Human-like keystroke timing to avoid behavioral detection systems.

### 6. Revamped Web UI
Completely refreshed interface — cleaner, faster, and more intuitive than ever.

### 7. DNS Redirection with Captive Portal
ensures all requests go to the onboard web server, displaying a captive portal instead of a “no internet” message. On mobile devices, it eliminates the need to disable mobile data to access the web interface.

### 8. Stability & Performance
Tons of under-the-hood bug fixes, stability improvements, and overall performance boosts.

## Usage
1. Plug in your Diabolic Drive
2. <b>Connect to the WiFi network `DDv1` with the default password `diabolic_drive`</b>
3. Open the browser on the device you used to connect to your Diabolic Drive and visit `192.168.4.1` or `diabolic.drive`
4. Your Diabolic Drive comes preloaded with a test Ducky script, which I used in the testing phase to check if the Diabolic Drive key stroke injection works properly. No worries about it; it's just a powershell command that retrieves the credentials of the Diabolic Drive access point from your Windows machine if it's already saved and you have connected to it from your computer before.
5. To access `Settings` along with other menus, click on the 3 horizontal bars icon (top right corner).

<h3> <del>
‼️The software that comes preloaded with the already-shipped Diabolic Drive is in a very early beta phase (built on WiFiDuck) with some modifications to suit the Diabolic Drive and to integrate the Spectre POC feature just to get things up and running. After ensuring all Diabolic Drives are delivered to the backers, I will start working on the software side and adding features to it.‼️
</del>
  <br>
  <br>
✅ <strong>This is now complete. Final firmware is released.</strong>
  
<br>Feel free to subscribe to the <a href="https://www.youtube.com/@unit72784">UNIT 72784 YouTube channel</a>; many great videos, feature updates and use-case scenarios will be posted there very soon!</br>
</h3> 


## About

Diabolic Drive isn’t just another HID injector — it’s a full-blown offensive implant wrapped in the body of a perfectly normal 64GB flash drive.

Plug it in and it plays the part: real storage, clean profile, zero suspicion. But behind the scenes, it’s wirelessly waiting to strike — injecting keystrokes, executing payloads, and slipping past defenses in plain sight.

Built for red teamers, crafted for covert ops, and born for social engineering. This isn’t a bad USB — it’s the next generation.

<p align="center">
<img alt="Diabolic-Drive-PCB" src="img/PCB.jpg" width="480" >
</p>

---

## Why Diabolic Drive ?
What’s the one USB device people still trust enough to plug in without thinking? A flash drive. No cables. No adapters. Just something simple, familiar, and everywhere.

Think about it — when was the last time you plugged in a USB cable just for data? Now think about how often flash drives get used. Exactly.

But just looking like a flash drive isn’t enough anymore — people are catching on. So Diabolic Drive doesn’t just look legit — it is legit. A full 64GB of real, usable storage. No gimmicks. No dead shells. Plug it in, and it behaves exactly like a standard thumb drive.

That’s what makes it dangerous.

It blends in, earns trust, and delivers payloads with surgical precision. Whether you’re baiting targets in the wild or slipping it into a physical pentest, Diabolic Drive is built for the job — engineered for social engineering.


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
Diabolic Drive runs on humble, battle-tested hardware — but don’t let that fool you.
It’s been pushed to its absolute limits with stealth, control, and adaptability in mind.
Designed to give you full flexibility, total control, and future-proof expansion, all without sacrificing speed or stealth.
### ✅ Features Ready (Out of the Box)

- **Dual Communication (Serial + I²C)**  
  ATMEGA32U4 and ESP8266 are wired over both Serial *and* I²C, making it compatible with nearly every open-source firmware built for these two chips.  
  > Supports: `WiFi Duck`, `WiFi Ducky`, `ESPloitV2`, `WHID`, `supremeDuck`, and more.

- **Payloads + Storage — Simultaneously**  
  Fire off keystrokes *and* read/write real data at the same time.  
  Full 64GB flash storage is usable even while executing wireless payloads.

- **Web-Based Control Interface**  
  No apps, no drivers. Just connect over Wi-Fi and command everything from a clean, mobile-friendly Web UI.

- **Hardware ID Cloning**  
  Clone the ATMEGA32U4 and Flash storage hardware IDs (VID, PID, etc.) for stealth.  
  > ~~*Note: not supported live/on-the-fly — but fully programmable.*~~ **Now Dynamic Hardware ID Spoofing works over the Web UI using the USBID command.**


## Flash Software

<b> I know I'm very bad at explaining things, but I will ensure I make a series of Youtube videos for a better explanation of how this process works very soon. :)
Also, feel free to do yours, and I will put your links here.:) </b> 

## See Here : [New firmware installation instructions](https://github.com/unit72784/Diabolic-Drive/blob/main/New%20firmware%20installation%20instructions.md)

### Flash ATmega32U4

If your Diabolic Drive is still running the beta firmware it shipped with, you'll need to:

1. Connect to the device over Wi-Fi.
2. Press the **Start** button in the Web UI to expose the ATmega32U4 to your computer.

> ⚠️ By default, the ATmega32U4 is dormant due to **SPECTRE** mode.

**Do not** enable *Diabolic Drive Stealth Mode* unless you have either:
- a **Diabolic Drive Programmer**, or  
- an **Arduino Pro Micro** configured as an ISP.

Otherwise, you'll lose the ability to upload sketches to the ATmega32U4.

---

### Flash ESP8266

To flash the ESP8266:

1. Ensure the ATmega32U4 is exposed and shows up as a **COM port** in Windows Device Manager.
2. Upload [the provided sketch](https://github.com/unit72784/Diabolic-Drive/blob/main/ESP8266_Programmer_via_ATMEGA32U4/ESP8266_Programmer_via_ATMEGA32U4.ino) to the ATmega32U4.
3. Once the upload completes successfully, the Diabolic Drive Wi-Fi will disappear — indicating that the ESP has entered **flashing mode**.


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

