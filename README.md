## Configurations

### Install python3
```
sudo apt install python3
```

Install pip3
```
sudo apt install python3-dev
```

### Create Python Environment
```
pip3 install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
```

### Install robotframework3 and dependencies
```
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#demonstrations

pip3 install docutils

```

Download Selenium Drivers
```
Firefox - https://github.com/mozilla/geckodriver/releases/tag/v0.24.0
```



_________________



## or Clone the project 

### and run requirements
```
python3 -m pip requirements.txt
```

### and run Dockerfile
```
python3 -m pip requirements.txt
```


_________________

## Running Tests
```
robot /features/specs/
```

### Seeing the Results on
```
screenshots folder
report.html, output.xml or log.html archives
```




