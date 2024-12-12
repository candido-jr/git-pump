<a name="introduction" ></a>
# Balancing Your Git Contribution History

Do you find your GitHub (or other git repository) contribution history uneven, with streaks of intense activity followed by long gaps?  
This happens to many of us: sometimes we have the inspiration and time to work on our projects, while other times life gets in the way. Unfortunately, this can make your contributions history look inconsistent, even if you've made substantial progress in bursts.

This script helps you smooth out your Git contribution history by ensuring your project progress appears more linear and consistent.

---

## Table of Contents
1. [Introduction](#introduction)
2. [How It Works](#how-it-works)
3. [Illustration](#illustration)
4. [Usage](#usage)

---

<a name="how-it-works"></a>
## How It Works

This script helps you smooth out your Git contribution history by:

1. **Identifying Local Commits**  
   It detects all local commits that haven’t been pushed to the `origin/main` branch.  

2. **Updating Commit Dates**  
   Using an interactive rebase, it updates the commit dates to make your contributions appear more evenly spaced over time.  

3. **Pushing Non-Pushed Commits**  
   It pushes the first commit that hasn’t been synced with the remote branch, giving the appearance of a gradual project progression.  

This process can be repeated as needed to maintain a consistent contribution timeline.

---

<a name="illustration"></a>
## Illustration
 
<img src="https://raw.githubusercontent.com/candido-jr/git-pump/refs/heads/main/assets/git-pump.gif" alt="GIF" width="512" height="384">

---

<a id="usage"></a>
## Usage

Follow these steps to use the script:

1. Clone the repository:  
   ```bash
   git clone git@github.com:candido-jr/git-pump.git
   ```
2. Move the script to your git project (You might want to add it to the .gitignore file)
   ```bash
   mv git-pump/script.sh ~/YourProject/
   ```
3. Make the script executable:
   ```bash
   chmod +x script.sh
   ```
4. Run the script:
   ```bash
   ./script.sh
   ```


