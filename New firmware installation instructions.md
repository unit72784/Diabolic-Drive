# 🚀 Diabolic Drive Firmware Update Instructions

Hi everyone!  
Here is a detailed guide on how to update your Diabolic Drive to the latest firmware release, available [here](https://github.com/unit72784/Diabolic-Drive/releases).

---

## 🔧 Flashing the ATmega32u4

1. **Download Files**
   - Download both `Diabolic-Drive-AVR.hex` and `Diabolic-Drive-ESP.bin` from the [releases section](https://github.com/unit72784/Diabolic-Drive/releases).
   - If you have Python installed, download the flasher script:  
     [`Diabolic Drive ATmega Flasher.py`](https://github.com/unit72784/Diabolic-Drive/blob/main/Diabolic%20Drive%20ATmega%20Flasher.py)
   - If you **don’t** have Python, download the PowerShell version instead:  
     [`Diabolic Drive ATmega Flasher.ps1`](https://github.com/unit72784/Diabolic-Drive/blob/main/Diabolic%20Drive%20ATmega%20Flasher.ps1)

2. **Prepare Your Files**
   - Place the `Diabolic-Drive-AVR.hex` and the flasher script in the same folder.
   - Ensure you have the Arduino IDE installed (required for the flashing script to work).

3. **Connect the Diabolic Drive**
   - Connect to your Diabolic Drive over Wi-Fi and click the **Start** button to expose the ATmega32u4 COM port to your computer.
   - Open **Device Manager** and find the assigned COM port number.

4. **Run the Flasher Script**
   - Run the script. When prompted, enter the COM port number.
   - Do **not** unplug your Diabolic Drive until the process is complete.

---

##  Flashing the ESP

> ⚠️ It's highly recommended to perform the ESP update using your **mobile device**, not a laptop, if updating over Wi-Fi.

1. **Prepare the ESP File**
   - Connect to your Diabolic Drive Wi-Fi.
   - Download the `Diabolic-Drive-ESP.bin` file to your **mobile device**.

2. **Upload via Web UI**
   - Navigate to **Settings > Update** section in the Web UI.
   - Select the `.bin` file and hit **Upload**.

3. **Recovery (If ESP Flash Fails)**
   - Download this recovery sketch:  
     [ESP8266 Programmer via ATmega32u4](https://github.com/unit72784/Diabolic-Drive/tree/main/ESP8266_Programmer_via_ATMEGA32U4)
   - Flash the sketch to your ATmega using the **Arduino IDE** with the board set to **Arduino Leonardo**.

4. **Flash ESP Manually**
   - Download [NodeMCU Flasher](https://github.com/nodemcu/nodemcu-flasher/tree/master/Win64/Release).
   - After uploading the sketch, connect your Diabolic Drive to your PC.
   - Open NodeMCU Flasher, select the `.bin` file, and click **Flash**.
   - Once done, you’ll need to **reflash the ATmega** again with the original `Diabolic-Drive-AVR.hex` file.

---

## 💬 Need Help?

If you run into any issues, feel free to [open a GitHub issue](https://github.com/unit72784/Diabolic-Drive/issues) — I’ll be happy to help!
