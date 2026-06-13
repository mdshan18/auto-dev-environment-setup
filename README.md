# Auto Developer Enviroment Setup Tool

A Beginner devops automation project built using Linux, Python, Chef and Git.
# Features
1. Install Git
2. Installs Python
3. Installs java(Open JDK)
4. Creates project folder automatically
5. Creates welcome file
6. Saves Linux System Information
7. Python verification script to check setup

## Technologies Used
1. Linux
2. Python
3. cheff
4. Git & Github

## Project Structure
``` text
auto dev enviroment set-up/
 cookbooks 
    dev setups/
        recipes
            default.rb
        metadata.rb
 scripts/
    verify setup.py
 .gitignore
 README.md
 ```

 ## Run Chef Recipe
 sudo chef-apply recipes/default.rb

 ## Run Verification Scripts
 python3 scripts/verify_setup.py

 ## Output Example
 1. Git Installed
 2. Python Installed
 3. java Installed
 4. Files Created
 5. Folder Created
 
     