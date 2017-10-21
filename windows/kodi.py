#!/usr/bin/python

import Tkinter
import os
import time
import tkMessageBox
import tkSimpleDialog

top = Tkinter.Tk()
top.geometry("500x500")
top.title("Kodi Installer")
#top.configure(background='black')


def adbCallBack():
     address = tkSimpleDialog.askstring("IP Address", "What is the devices ip address?")
     os.system("adb connect %s" %(address))

B = Tkinter.Button(top, text ="Connect Device", command = adbCallBack)
B.pack(padx=5, pady=10)

def KodiCallBack():
    os.system("adb install kodi-17.4-Krypton-armeabi-v7a.apk")

C = Tkinter.Button(top, text ="Install Kodi", command = KodiCallBack)
C.pack(padx=5, pady=10)

def WizardCallBack():
    os.system("adb push repository.aresproject-0.1.0.zip /sdcard/")

D = Tkinter.Button(top, text ="Push Ares wizard to sdcard", command = WizardCallBack)
D.pack(padx=5, pady=10)

def DisconnectCallBack():
     address = tkSimpleDialog.askstring("IP Address", "What is the devices ip address?")
     os.system("adb disconnect %s" %(address))

E = Tkinter.Button(top, text ="Disconnect", command = DisconnectCallBack)
E.pack(padx=5, pady=10)

def endProgam():
    top.destroy()

F = Tkinter.Button(top, text = "Exit", command = endProgam)
F.pack(padx=5, pady=10)
    
top.mainloop()