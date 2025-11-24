@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

:: Get the current folder name as project name
FOR %%F IN (.) DO SET "PROJECT_NAME=%%~nF"

:: Delete the existing README.md
IF EXIST README.md DEL README.md

:: Create a new README.md
(
ECHO # %PROJECT_NAME%
ECHO.
ECHO This project is a cross-platform C++ project initialized from the [CrossMake](https://github.com/TheSampaio/CrossMake^) template.
ECHO.
ECHO ## 📜 License
ECHO This project template is released under the **MIT License**.
ECHO.
ECHO ## ⭐ Support
ECHO If you find this template useful, consider starring the [CrossMake](https://github.com/TheSampaio/CrossMake^) repository on GitHub to help others discover it.
) >> README.md

:: Update CMakeLists.txt with the current project name
IF EXIST CMakeLists.txt (
    POWERSHELL -Command "(Get-Content CMakeLists.txt) -replace 'project\\(.* LANGUAGES CXX\\)', 'project(\"%PROJECT_NAME%\" LANGUAGES CXX)' | Set-Content CMakeLists.txt"
)

:: Delete .gitkeep files in include, tests, and vendor folders
IF EXIST include\.gitkeep DEL include\.gitkeep
IF EXIST source\.gitkeep DEL source\.gitkeep
IF EXIST tests\.gitkeep DEL tests\.gitkeep
IF EXIST vendor\.gitkeep DEL vendor\.gitkeep

ECHO Setup completed.
