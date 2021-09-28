# The name of My Wifi

SSID="BGP"

# The password for my Wifi
PW="12345678"

# The SSID converted into Hex
hex="424750"

xmlfile="<?xml version=\"1.0\"?>
<WLANProfile xmlns=\"http://www.microsoft.com/networking/WLAN/profile/v1\">
	<name>BGP</name>
	<SSIDConfig>
		<SSID>
			<hex>$hex</hex>
			<name>$SSID</name>
		</SSID>
	</SSIDConfig>
	<connectionType>ESS</connectionType>
	<connectionMode>auto</connectionMode>
	<MSM>
		<security>
			<authEncryption>
				<authentication>WPA2PSK</authentication>
				<encryption>AES</encryption>
				<useOneX>false</useOneX>
			</authEncryption>
			<sharedKey>
				<keyType>passPhrase</keyType>
				<protected>false</protected>
				<keyMaterial>$PW</keyMaterial>
			</sharedKey>
		</security>
	</MSM>
	<MacRandomization xmlns=\"http://www.microsoft.com/networking/WLAN/profile/v3\">
		<enableRandomization>false</enableRandomization>
		<randomizationSeed>27207465</randomizationSeed>
	</MacRandomization>
</WLANProfile>
"

echo $xmlfile >> "shell-sript-wifi.xml";
netsh wlan add profile filename="shell-sript-wifi.xml"

netsh wlan connect name=$SSID
rm "shell-sript-wifi.xml";