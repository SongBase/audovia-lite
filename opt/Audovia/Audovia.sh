#!/bin/sh

#SNAP=/home/donald/mysnaps/audovia-lite # for testing

path=$SNAP/opt/Audovia
cd /home/$USER

if [ ! -d Documents ]; then mkdir Documents; fi
cd Documents
if [ ! -d Audovia ]; then mkdir Audovia; fi
cd Audovia

if [ ! -d MIDI ]; then mkdir MIDI; fi
if [ ! -d MusicString ]; then mkdir MusicString; fi
if [ ! -d MusicXML ]; then mkdir MusicXML; fi
if [ ! -d WAV ]; then mkdir WAV; fi
if [ ! -d XML ]; then mkdir XML; fi
if [ ! -d SF2 ]; then mkdir SF2; fi
if [ ! -d MP3 ]; then mkdir MP3; fi
if [ ! -d PDF ]; then mkdir PDF; fi
if [ ! -d AppImage ]; then mkdir AppImage; fi
cd XML
if [ ! -d Demo ]; then mkdir Demo; fi
cd ..
if [ ! -d doc ]; then mkdir doc; fi
if [ ! -d uprefs ]; then mkdir uprefs; fi
if [ ! -d config ]; then mkdir config; cp $SNAP/opt/Audovia/*.xml config; fi

cp $SNAP/opt/Audovia/*.sbxml XML/Demo
cp $SNAP/opt/Audovia/doc/*.pdf doc
cp $SNAP/opt/Audovia/*.sf2 SF2
cp $SNAP/opt/Audovia/*.SF2 SF2

$SNAP/opt/Audovia/audovia_app/bin/java -Duser.home=. -Djava.util.prefs.userRoot=uprefs -Xmx1024m -m \
audovia/com.gray10.audovia.SBSUserMain config/conf_audovia.xml $path lite

