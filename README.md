# PowerShell Clipboard Tool

This PowerShell script allows you to copy the content of a file to the clipboard. You can use it to quickly copy the content of any text file, such as code snippets, configuration files, or plain text documents.

## Usage

1. **Download the Script:**
   
   You can download the PowerShell script (`Ps1helper.ps1`) from the GitHub repository. Use the following command to download the script:

   ```bash
   Invoke-WebRequest -Uri "https://github.com/Abhi-vish/Ps1Tool/raw/main/Ps1helper.ps1" -OutFile "helper.ps1"
    ```

2. **To Execute the Script:**
    After downloading the script, you can execute it by providing the file name you want to copy as an argument. For example:

    ```bash
    .\helper.ps1 -FileName "exp1.py"
    ```
## Parameters

- **FileName:** The name of the file whose content you want to copy to the clipboard.
