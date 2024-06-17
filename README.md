# File Consolidation PowerTool 🚀

Tired of your photos, videos, or documents scattered across countless subfolders?  This PowerShell script is your one-stop solution to bring order to the chaos!

## What It Does ✨

1. **Scans Deep:**  Dives into every nook and cranny of your chosen directory, no matter how many levels deep.
2. **Unifies Files:**  Gently lifts all files from their subfolders and places them neatly in the main directory.
3. **Conflict Prevention:**  Intelligently handles files with the same name, ensuring you don't lose any precious data.
4. **Network Drive Support:** Can access and consolidate files stored on network drives (Just add the appropriate network drive use statement).

## Why You'll Love It 💖

* **Effortless Organization:**  Say goodbye to endless clicking through folders.
* **Visual Clarity:**  See all your files at a glance, making it easier to find what you need.
* **Streamlined Workflow:**  Perfect for photographers, content creators, or anyone who wants a cleaner file structure.

## How to Use It 🛠️

1. **Download:**  Grab the `move_files.ps1` script.
2. **Customize:**  
   - Update the `$networkPath` variable to the path of your network drive (if applicable).
   - Update the `$rootPath` variable to the directory you want to consolidate.
3. **Permissions (Important!):**
   - **If you trust the script:**
      - Right-click the script, go to "Properties," and click "Unblock."
   - **If you're unsure:**
      - Open PowerShell as an administrator.
      - Run the following command to temporarily allow script execution:
         ```powershell
         Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
         ```
4. **Run:**  Open PowerShell, navigate to the script's location, and execute it.

## Example: Taming Your Photo Collection 📸

Imagine your photos are organized like this:

Photos/

├── Vacation 2023/

│   ├── Beach Day/

│   │   ├── IMG_1234.jpg

│   │   └── IMG_1235.jpg

│   └── City Tour/

│       ├── IMG_1236.jpg

│       └── IMG_1237.jpg

└── Family Reunion/

├── IMG_1238.jpg

└── IMG_1239.jpg


After running the script, they'll all be in one place:

Photos/

├── IMG_1234.jpg

├── IMG_1235.jpg

├── IMG_1236.jpg

├── IMG_1237.jpg

├── IMG_1238.jpg

└── IMG_1239.jpg


## Important Note ⚠️

* **Backup:** Always back up your files before running any script that modifies your file structure.
* **Security:** Be cautious when running scripts from unknown sources.

Let this script be your digital decluttering assistant! 🧹✨
