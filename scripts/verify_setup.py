import os
import subprocess


def check_command(command):
    try:
        subprocess.run(
            command,
            shell=True,
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL
        )
        return "Installed ✅"
    except subprocess.CalledProcessError:
        return "Not Installed ❌"


print("=== Developer Environment Verification ===\n")

print(f"Git: {check_command('git --version')}")
print(f"Python: {check_command('python3 --version')}")
print(f"Java: {check_command('java --version')}")

print("\n=== Folder Check ===")

folders = [
    "/home/shan/projects",
    "/home/shan/projects/python_projects",
    "/home/shan/projects/java_projects"
]

for folder in folders:
    if os.path.exists(folder):
        print(f"{folder} -> Exists ✅")
    else:
        print(f"{folder} -> Missing ❌")


print("\n=== File Check ===")

files = [
    "/home/shan/projects/welcome.txt",
    "/home/shan/projects/system_info.txt"
]

for file in files:
    if os.path.exists(file):
        print(f"{file} -> Exists ✅")
    else:
        print(f"{file} -> Missing ❌")