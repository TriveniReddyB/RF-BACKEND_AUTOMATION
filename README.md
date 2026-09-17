#TA backedn Automation suite

Goal: Framework will support:
✅ GitHub repo
✅ SSH authentication
✅ Git commit/push
✅ VS Code RobotCode
✅ SOAP Services - SOAPLibrary
✅ REST APIs  - RequestsLibrary
✅ Oracle Database Validation - DatabaseLibrary
✅ O2 / T2 / O3 / T3 / O6 / T6 like so environments
✅ Azure DevOps CI/CD
✅ Secret Management
✅ GitHub Repository
✅ Virtual Environment (.venv)
 
 *** << New developer onboarding setup following >> *** Open Shell
1. Clone Git repo:
git clone git@github.com:TriveniReddyB/RF-BACKEND_AUTOMATION.git   <<<Enter SSH phrase if asked>>>
   
2. After clone Create a NEW venv:   
cd RF-BACKEND_AUTOMATION
python -m venv .venv

3. ACTIVATE venv:
.\.venv\Scripts\Activate.ps1

4. Install dependencies:
pip install -r requirements.txt

Note: always install requirements inside the activated venv.

[4a]. If there is no venv configured; then run in global:
pip install -r requirements.txt

5. Run robot tests
#robot -d results/ .\tests\smoke\smoke.robot


WORKAROUND Situations incase .venv corrupt:
==========================================
#python --version
and
#Get-Command python       >>> both return same py-version if .venv setup done

#python -m pip --version     >> check py version when inside .venv activate

.venv/
├── Scripts/
├── Lib/
├── Include/
└── thousands of installed packages
-------------------

****** STEPS *******
====================
#deactive
----close VS-code Editor ------
#Remove-Item -Recurse -Force .venv
#py -3.13 -m venv .venv
#.\.venv\Scripts\Activate.ps1
#python -m pip install -r requirements.txt
--open VS-code  -----
#robot -d results/ .\tests\smoke\smoke.robot


CHECK any library installed path: 
example: Library DatabaseLibrary
#\rf-backend-automation> pip show robotframework-databaselibrary
see---- rf-backend-automation\.venv\Lib\site-packages


Step 1: Verify package installation
#pip list

VS-code Py Interpreter select:
=================================
Ctrl + Shift + P

Step 3: Install Robot Framework Language Server
In VS Code Extensions, install: 
        Robot Framework Language Server

################### First Time Setup Clone >>>New Developer Prerequisites  & Machine Prerequisites ######################## START

Required:
Git login
Python 3.13 (or team standard version) installed
VS Code installed

Recommended VS Code Extensions:
RobotCode - Robot Framework Support
Python


Verify:
------------------
git --version
python --version

Clone Repository:
mkdir C:\Git

cd C:\Git

git clone git@github.com:TriveniReddyB/RF-BACKEND_AUTOMATION.git

cd RF-BACKEND_AUTOMATION

Create Virtual Environment

Nobody should commit .venv.

Every developer creates their own:

py -3.13 -m venv .venv


Activate:

.\.venv\Scripts\Activate.ps1


Verify:

python --version

Install Dependencies

Run inside activated venv:

python -m pip install -r requirements.txt


This installs:

Robot Framework
RequestsLibrary
DatabaseLibrary
SOAPLibrary
OracleDB
PyYAML

Open VS Code:

Recommended:

code .


Select interpreter:

Ctrl+Shift+P
Python: Select Interpreter


Choose:

.venv\Scripts\python.exe

Verify Setup

Run:

robot tests\smoke\smoke.robot


Expected:

1 test, 1 passed

Git Workflow

Daily:

git pull

.\.venv\Scripts\Activate.ps1

robot tests

git add .
git commit -m "Added REST keywords"

git push

Secrets

Should NOT be in Git:❌

username:
password:
token:


Instead:

Azure DevOps Variable Group:
RF_DB_USER
RF_DB_PASSWORD

RF_SOAP_USER
RF_SOAP_PASSWORD

RF_REST_TOKEN


Pipeline injects them.

New developers never need production passwords.

README.md Setup Section

I would add this:

## First Time Setup

### Clone

git clone git@github.com:TriveniReddyB/RF-BACKEND_AUTOMATION.git

### Create venv

py -3.13 -m venv .venv

### Activate

.\.venv\Scripts\Activate.ps1

### Install dependencies

python -m pip install -r requirements.txt

### Open VS Code

code .

Select interpreter:
.venv\Scripts\python.exe

### Run smoke test

robot tests\smoke\smoke.robot

Continue development there.
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> END    
