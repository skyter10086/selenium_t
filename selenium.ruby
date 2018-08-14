require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for(:ie);# 
driver.get("http://www.baidu.com");

element = driver.find_element(:name, "wd");
element.send_keys("Glacier");

element = driver.find_element(:id, "su");
element.send_keys("\n");
driver.close();