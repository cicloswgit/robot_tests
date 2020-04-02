






## Clone the project 

### and run Dockerfile
```
docker build .
```


_________________


## OR


### Configure environment
Install python3 and pip
```
sudo apt install python3 && python3-dev
pip3 install --upgrade setuptools
```

Create Python Environment
```
pip3 install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
```

Download Selenium Drivers
```
Firefox - https://github.com/mozilla/geckodriver/releases/tag/v0.24.0
```
put it on /usr/local/bin

### run requirements file
```
python3 -m pip requirements.txt
```

## Running Tests
```
robot /features/specs/
```

### Seeing the Results on
```
screenshots folder
report.html, output.xml or log.html archives
```
