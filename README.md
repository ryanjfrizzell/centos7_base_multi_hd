### for vagrant cloud upload to work: 
* generate a token
* ```export cloud_token=<your_token>```
* make a copy of env.sh ```cp env.sh .env```
* update your version of .env to include your token
* you need to create a version of your box first on the vagrant cloud site
* probably change the ryfrizzell tag in box.json

### Packer version used:
```
packer --version
1.2.5
```

### Guest additions notes: 

* grab virtualbox gues additions to match your version from here: 
https://download.virtualbox.org/virtualbox/

* for instance I used 5.2.12 so the d/l i used is located here: 
https://download.virtualbox.org/virtualbox/5.2.12/VBoxGuestAdditions_5.2.12.iso

* update the additions_path variable in the json file


### Build It
```
source .env
packer build box.json
```
