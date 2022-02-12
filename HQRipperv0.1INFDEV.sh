
#!/bin/bash
echo "Logic-GPT 0.1x"
echo "Loading SoundFonts"

 ## install all plugins soundfontplayer vst vst3 and activate for logic pro m1 mac
cd /usr/local/bin
sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/soundfontplayer.so
sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst.so
sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst3.so
ls -l /usr/local/bin/soundfontplayer.so
mkdir /Library/Audio/Plug-Ins/Components/sf2
cp /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/sf2/Logic-GPT.sf2 /Library/Audio/Plug-Ins/Components/sf2/
ls -l /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2
ls -l /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2
## activate the SoundFonts
cd /Library/Audio/Plug-Ins/Components/sf2
sudo ln -s /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2 SoundFonts.sf2
sudo ln -s /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2 HQRipper.sf2
ls -l /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2
ls -l /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2
echo "SoundFonts loaded"
echo "Loading VST3"
cd /usr/local/bin
sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst3/Logic-GPT.vst3
ls -l /usr/local/bin/Logic-GPT.vst3
echo "VST3 loaded"
echo "Loading VST"
cd /usr/local/bin
sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst/Logic-GPT.vst
ls -l /usr/local/bin/Logic-GPT.vst
echo "VST loaded"
echo "Would you like to scan the plugins?" >> /dev/stdout
echo "y/n" >> /dev/stdout
read answer
if [ "$answer" = "y" ]; then
    echo "Scanning plugins"
    cd /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins
    sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/soundfontplayer.so
    sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst.so
    sudo ln -s /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/vst3.so
    ls -l /usr/local/bin/soundfontplayer.so
    mkdir /Library/Audio/Plug-Ins/Components/sf2
    cp /Applications/Logic\ Pro\ X.app/Contents/Resources/Logic\ Pro\ X.app/Contents/Resources/plugins/sf2/Logic-GPT.sf2 /Library/Audio/Plug-Ins/Components/sf2/
    ls -l /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2
    ls -l /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2
    ## activate the SoundFonts
    cd /Library/Audio/Plug-Ins/Components/sf2
    sudo ln -s /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2 SoundFonts.sf2
    sudo ln -s /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2 HQRipper.sf2
    ls -l /Library/Audio/Plug-Ins/Components/sf2/SoundFonts.sf2
    ls -l /Library/Audio/Plug-Ins/Components/sf2/HQRipper.sf2
    echo "Scan complete"
fi
echo "Syncing..."
## wait 0.5 seconds
sleep 0.5
echo "Installing SoundFonts"

fload /Library/Audio/Plug-Ins/Components/SFZ.component
sfload /Library/Audio/Plug-Ins/Components/SFX.component
echo "Done loading soundfonts!"
## ask the user if else to exit or re run script
echo "Would you like to exit or re-run the script?"
echo "Type exit to exit or re-run to re-run the script"
read answer
if [ $answer = "exit" ]
then
    echo "Exiting"
    exit
else
    echo "Re-running the script"
    sh Logic-GPT.sh
fi