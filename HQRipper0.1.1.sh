#HQRipper INFDEV is a software designed to rip information from files and folders in order to create an index of the data for easy access. The program can be used to quickly gather information on specific files or folders, or to collect data from an entire drive.

#The program operates by scanning through all files and folders within a designated source, extracting any identifying information it can find such as file names, sizes, dates modified, and contents. This data is then compiled into an easily-accessible database for further analysis.

#HQRipper INFDEV also includes a number of features specifically designed for Information Security professionals. These features include the ability to extract hashes of files and folders as well as metadata such as author, title, and date created/modified. Additionally, the program can be configured to scan for specific file types or keywords in order to quickly gather targeted data sets.


#(C) Flames ASI MIPS128 v1.0
### write the hqripper.conf file to documents
ls -l /etc/hqripper.conf
mkdir /etc/hqripper
cp /etc/hqripper.conf /etc/hqripper/hqripper.conf
echo "Would you like to install HQRipper VST to Logic PRO X and enable plugins?"
echo "1. Yes"
echo "2. No"
read -p "Please enter your choice: " choice
if "1" == choice; then
 {
     echo "Installing"
    wget http://www.flames-asi.com/hqripper/hqripper.vst
    cp hqripper.vst /Applications/Logic\ PRO\ X.app/Contents/Resources/Plug-Ins/VST/
    echo "Would you like to enable plugins?"
    echo "1. Yes"
    echo "2. No"
    read -p "Please enter your choice: " choice
    if "1" == choice; then
     {
        echo "Enabling"
        /Applications/Logic\ PRO\ X.app/Contents/MacOS/Logic\ PRO\ X -enablePlugins
        echo "HQRipper VST has been installed and enabled"
     }
    else
     {
        echo "HQRipper VST has been installed"
     }
    fi
 }
else
 {
     echo "Not installing"
 ## exit
 
 }
