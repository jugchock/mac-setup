# Umbrella cert fixes

## Test if fix is required
- Open an asset from raw.githubusercontent.com in Chrome
  - Example: https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/extravagant-style.png
- If the image displays, cert fix is not required.

## Add Umbrella Root Cert
- Click the red warning icon to the left of the URL bar
- Click "Connection is not secure"
- Click "Certificate is invalid"
- Open finder and navigate to a folder you want to save this cert in
- Select Cisco Umbrella Root CA
- Drag cert icon in left of popup into finder
- Close 
- Open copied cert
- Change dropdown to system and select "Add"
- Select system in left-hand menu
- Double-click "Cisco Umbrella Root CA" in list of system certs
- Expand "Trust" in the popup
- Select "Always trust" and close popup
- Enter password
