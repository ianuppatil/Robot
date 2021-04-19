# Robot
This framework is for automating one of the test flow of Westwing website.

--------------
Prerequisite:
--------------
1. Operating system to use- Windows 10/8/7/8.1. Preferred choice is - Windows 10. 
2. Python 3.8(base) version is installed on your machine.
3. Code is copied/cloned on to your machine to the location where you have execute permissions.
Git Hub URL: https://github.com/ianuppatil/Robot.git       (Please use development branch for checking out).
4. Your machine has (Pycharm 2020.3.3 community edition) installed - It is preferred but not mandatory.
5. Below plug-ins are installed on your pycharm. - It is preferred but not mandatory:
	Intellibot
	Robot Framework support	

---------------------------------
Steps to execute automated test:
---------------------------------
1. Clone the code from the git hub URL https://github.com/ianuppatil/Robot.git    (Please use development branch for checking out).
2. Open the windows explorer and navigate to the place where code is copied.
3. Double click on the startup.bat file which is at the root directory. It should open the command prompt.
4. Post that, please run below command - 
robot -T TestSuites\Suite01_AddToWishlistAndRemove.robot

It will execute the test on the chrome browser with all the required actions. All the reports/logs will be generated in the "Results" folder which is under the root directory.

-------------------------------------------------
Few IMPORTANT points:
-------------------------------------------------
1. By default this code is going to run using Chrome browser but it is configurable to use it for other browsers like IE11, Firefox, etc. This can be done using "ConfigPage.robot" file which is under "Variables" folder.
2. If the code does not run, then please install below two libraries on your machine using pip install command & please provide it in the environement variables of your machine.
	robotframework
	robotframework-selenium2library
3. If any support needed in execution, you can reach out to me - Anup Patil(+91 9028489518) - Anytime of the day/night.	Thanks!