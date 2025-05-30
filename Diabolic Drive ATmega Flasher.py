#!/usr/bin/env python3
"""
flash.py – compact uploader with graceful error pauses
Put next to Diabolic-Drive-AVR.hex and run:  python flash.py
"""

import os, sys, time, subprocess
from pathlib import Path

try:
    import serial, serial.tools.list_ports as lp
except ImportError:
    input("pyserial missing.  Install with:  pip install pyserial\n\nPress Enter to close…")
    sys.exit(1)

# ── helper ──────────────────────────────────────────────────────────────────
def fatal(msg, code=1):
    print(f"\n{msg}")
    input("\nPress Enter to close…")
    sys.exit(code)

def list_ports() -> list[str]:
    return [p.device for p in lp.comports()]

def touch_reset(port: str):
    s = serial.Serial(port, 1200)
    s.dtr = False
    s.close()

# ── locate files ────────────────────────────────────────────────────────────
hex_path = Path("Diabolic-Drive-AVR.hex")
if not hex_path.exists():
    fatal("Diabolic-Drive-AVR.hex not found in this folder.")

core = Path(os.getenv("LOCALAPPDATA")) / r"Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino17"
exe, conf = core / "bin/avrdude.exe", core / "etc/avrdude.conf"
if not exe.exists():
    fatal("avrdude.exe not found – is the Diabolic Drive core installed?")

# ── choose run-mode port ────────────────────────────────────────────────────
ports_before = list_ports()
if not ports_before:
    fatal("No COM ports detected.")

print("Available COM ports:", ", ".join(ports_before))
sel = input("Enter Diabolic-Drive COM port (run-mode), e.g. 81 or COM81: ").strip()
run_port = sel if sel.upper().startswith("COM") else f"COM{sel}"

# ── 1200-bps reset & detect bootloader port ────────────────────────────────
print(f"Touching {run_port} @1200 bps …")
try:
    touch_reset(run_port)
except Exception as e:
    fatal(f"Could not open {run_port}: {e}")

time.sleep(2.5)
ports_after = list_ports()
candidates = sorted(set(ports_after) - set(ports_before), key=lambda p: int(p[3:])) or \
             [sorted(ports_after, key=lambda p: int(p[3:]))[-1]]

boot_port = candidates[0]
print(f"Bootloader port → {boot_port}")

# ── run avrdude (quiet) ─────────────────────────────────────────────────────
args = [
    str(exe), f"-C{conf}",
    "-v",
    "-patmega32u4", "-cavr109",
    f"-P{boot_port}", "-b57600", "-D",
    f"-Uflash:w:{hex_path}:i",
]

print("\nFlashing …\n")
proc = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)

for line in proc.stdout:
    if any(k in line for k in ("Device signature", "writing flash", "| 100%", "bytes of flash", "avrdude done")):
        print(line.rstrip())

proc.wait()
print("\nFlash finished." if proc.returncode == 0 else f"\navrdude exited with {proc.returncode}")
input("\nPress Enter to close…")
