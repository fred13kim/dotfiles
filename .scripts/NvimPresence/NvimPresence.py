#!/usr/bin/python

import time
import subprocess
import os
from tkinter import E
from pypresence import Presence
from pathlib import Path

APP_ID = "793271441293967371"

#config langmapping
with open(Path.home() / '.scripts/NvimPresence/langmappings.txt') as f:
    langmap = dict([line[:-1].split('=') for line in f])

while True: # start the handshake loop!
    try:
        nvimScent = Presence(client_id=APP_ID)
        nvimScent.connect()
        print("Handshake successfully!")
        break
    except:
        print("ERROR initializing handshake!\nWaiting..." )
        time.sleep(10)

timeOfStart = time.time() # shows the elapsed time at the bottom needs to be started in nanoScent.update()

while True:

    runPGREP = subprocess.run(["pgrep", "-af", "nvim"], capture_output=True)
    pidInfo = runPGREP.stdout.decode().split()
    if len(pidInfo):
        fileName = str(', '.join(pidInfo[2:3]))
        fileExt = os.path.splitext(fileName)[1][1:]
        try:
            fileLang_first, fileLang_second = langmap.get(fileExt).split('|')
        except:
            fileLang_first, fileLang_second = fileExt, None

        editingFile = "Editing " + fileName
        nvimScent.update(
                details=editingFile,
                large_image="neovim",
                large_text="neovim",
                small_image=fileLang_second,
                small_text="Editing a " + fileLang_first + " file",
                start=timeOfStart
        )
    else:
        pass
    
    time.sleep(5)
