# RobotProject-Orbi
Automation project for Orbi technical assessment

robot -d Output --loglevel TRAC Tests\login.robot

## How to run robot framework tests
1.	Run Appium in cmd or Appium desktop
```bash
Appium
```
2. Run commands in PyCharm terminal

• How to activate virtual env
  ```bash
  .venv\Scripts\activate.bat
  
  ```

  • How to run a complete suite, specify file name to execute
  ```bash
  robot  -d output  Tests\login.robot
  robot -d Output --loglevel TRAC Tests\login.robot
  ```

  •	How to run one test case, specify the test name to execute

  ```bash
  robot  -d output --test Test_Login_valid_user .
  ```
