# Cleanup old dependencies
rm drivers/* selenium-server*.jar

# Get and extract chromedriver
wget -O ./drivers/chromedriver.zip http://chromedriver.storage.googleapis.com/2.24/chromedriver_mac64.zip
unzip drivers/chromedriver.zip -d drivers

# Get and extract geckodriver (firefox)
wget -O ./drivers/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-macos.tar.gz
tar -xvf drivers/geckodriver.tar.gz -C drivers

# Remove downloaded files
rm drivers/geckodriver.tar.gz drivers/chromedriver.zip

# Download Selenium Grid
wget http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar
