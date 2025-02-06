from selenium import webdriver

def test_google():
    driver = webdriver.Chrome()
    driver.get("http://www.google.com")
    assert "Google" in driver.title
    driver.quit()
