#!/bin/bash

echo "Running Java JUnit tests..."
cd unit-tests/java && javac JUnit.java && java -cp .:junit-4.12.jar org.junit.runner.JUnitCore JUnit

echo "Running Python PyTest tests..."
pytest unit-tests/python/test_pytest.py

echo "Running JavaScript Mocha tests..."
mocha unit-tests/javascript/test_mocha.js

echo "Running Selenium tests..."
pytest e2e-tests/selenium/selenium_test.py

echo "Running Cypress tests..."
cypress run --spec "e2e-tests/cypress/cypress_test.js"
