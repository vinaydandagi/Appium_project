require 'rubygems'
require 'appium_lib'

app_path = 'D:\Appium_test_app\Calculator.apk'
calculator_package = 'com.android.calculator2'
launch_activity = 'com.android.calculator2.Calculator'

desired_caps = {
    caps: {
			platformName: 'Android',
			platformVersion: '5.1',
			deviceName: 'MyTestDevice',
			appPath: app_path,
			appPackage: calculator_package,
			appActivity: launch_activity
	}
}

driver = Appium::Driver.new(desired_caps).start_driver

Appium.promote_appium_methods Object

@button_two = driver.find_element(:name, '2').click
puts "2 pressed"

@action_plus = driver.find_element(:id, 'op_add').click
puts "ADD button pressed"

@button_four = driver.find_element(:name, '4').click
puts "4 pressed"

@action_equals = driver.find_element(:id, 'eq').click
puts "EQUALS button pressed....SUM action completed!!"

@button_clear = driver.find_element(:id, 'clr').click
puts "CLEARED EDIT FIELD"

@button_eight = driver.find_element(:name, '8').click
puts "8 pressed"

@action_minus = driver.find_element(:id, 'op_sub').click
puts "SUBTRACT button pressed"

@button_five = driver.find_element(:name, '5').click
puts "5 pressed"
 
@action_equals = driver.find_element(:id, 'eq').click
puts "EQUALS button pressed....DIFF action completed!!"

driver.quit
puts "TEST SUCCEEDED!! HOORAYAAAArrrrraaaa"
