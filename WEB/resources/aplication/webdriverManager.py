from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

def baixar_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    print(driver_path)
    return  driver_path