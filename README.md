# GIT_TRIX: 
## A curated quick reference guide of frequently used git commands.
<br>

---
# SECTIONS
## 1. [Auth & repo creation management](#1-git-auth-and-repo-creation-management)
## 2. [Branch management](#2-git-branch-management)
## 3. [Fetch, pull, clone & push management](#3-git-fetch-pull-clone-and-push-management)
## 4. [Local system management](#4-git-local-system-management)
## 5. [Errors & troubleshooting](#5-errors-and-troubleshooting)
---
<br></br>
# 1. Git auth and repo creation management

login to github user account
<pre>
gh auth login
</pre>

create remote repository on github.com/profile
<pre>
gh repo create [REMOTE-REPO-NAME]
</pre>

start local repo in current dir
<pre>
git init .
</pre>

start local repo branch name [master]
<pre>
git init -b master
</pre>
---
<br></br>
# 2. Git branch management.

shows current branch selected
<pre>
git branch
</pre>
---
switches branchs locally
<pre>
git switch [branch name]
</pre>
---
delete local branch
<pre>
git branch -D [local branch]
</pre>
---
creates new branch and switches to it WITH changes made in current branch = AWESOME!
##### (if forgets to change to test branch after coding alot in master)
<pre>
git checkout -b [new-branch-name]
</pre>
---
delete remote branch in github
<pre>
git push [local branch] --delete [remote-branch-name]
</pre>
---
REVERTING TO ORIGINAL STATE IN TEST BRANCH FROM MASTER
<pre>
git checkout origin/master [filename]
git commit
git push -u 
</pre>
---
rename local repo
<pre>
git remote rename [old-name] [new-name]
</pre>
---
default branch has been renamed on remote repo
<pre>
git branch -m main master
git fetch origin
git branch -u origin/master master
git remote set-head origin -a
</pre>
---
REVERTING ONE FILE TO A PREVIOUS COMMIT ON SAME BRANCH
<pre>
git log --oneline
git checkout [commit-id]~1 -- [path/to/file.py] [path/to/another-file.py]
git status

git add .
git commit
git push [remote] [branch]
</pre>

---
<br></br>
# 3. Git fetch pull clone and push management.
---
git pull: basically fetch/merge (adds changes made on remote repo and merges to your local repo, used in collab dev)
<pre>
git pull origin master
</pre>
---
git clone: copies full repo to local env
<pre>
git clone [repo-url]
</pre>
---
get clone branch: downloads fresh copy of remote repo to your computer
<pre>
git clone -b [branch-name] https://remote/remote.git 
</pre>
---
git fetch all: gets all remote branches and overwrites local branchs
##### *Dangerous, overwrites everything in local repo
<pre>
git fetch --all
git reset --hard [origin]/[remote-branch]
</pre>
---
fetch only one remote branch and overwrite local repo 
<pre>
git fetch origin branch-name
git reset --hard [local]/[remote-branch]
</pre>
---
git fetch remote branch and show which files have changed compared to local branch
<pre>
git fetch origin branch-name
git reset [origin]/[remote-branch]
</pre>
---
CREATE YOUR LOCAL REPO FROM EXISTING BRANCH #
<pre>
git init
git remote add origin git@github.com:[account]/[repo-name].git
git remote -v
git clone -b add-org-description git@github.com:[account]/[repo-name].git

git fetch origin add-org-description
git reset --hard origin/add-org-description
git branch
</pre>

<br>

---
## UPDATE YOUR LOCAL REPO WITHOUT LOSSING CHANGES NOT YET COMMITTED
---
Stash your local changes:
<pre>
git stash
</pre>

Update the branch to the latest code

<pre>
git pull
</pre>

Merge your local changes into the latest code:
<pre>
git stash apply
</pre>

---
git Add, commit and push your changes

<pre>
git add [.] , [single-files] , [directory/]
git commit
git push
</pre>


<br>

---
# git commit management 


unstage files 

<pre>
git restore --staged [files found in status]
</pre>

<br>

---
delete untracked local files 

<pre>
git clean -fx
</pre>

---
commit specific files

<pre>
git commit [file1, file2, file3]
</pre>


If you want to make that commit available on both branches...

<pre>
git stash                     
git checkout <other-project>  
git cherry-pick <commit-id>   
git checkout <first-project>  
git stash pop                 
</pre>





---
## git push management
---

pushes with local tracking

<pre>
git push -u local/master
</pre>

---

git tracking management: tracks changes made locally FROM local(origin) TO remote(main)  [-f = force push]

<pre>
git push [-f] --set-upstream [origin] [main]
</pre>


---
## commits changes to github.com/profile/repository		

<pre>
git add . && git commit -m "VERSION CONTROL COMMENT" && git push
</pre>





<br>


# 4 git local system management.

git config management
----



<pre>
git config --list
</pre>


----
<pre>
git config --global core.editor "sublime --wait"
</pre>



----
<pre>
git config --global user.email
</pre>



<br>

---
# git state management

git show: displays current head location, comments, file additions or subtractions

<pre>
git show 
</pre>


git log --oneline

git status

git diff


---




























<br></br>
# 5. Errors and troubleshooting
<br></br>



# if: 
## fatal: 'origin' does not appear to be a git repository


# tell github where remote version of repository exist
git remote add origin

# attempt to push local repo to github 
git push origin main






====================================================================================
# if:


# update local repo (filsys on pc) from remote (github)
git pull -f --set-upstream origin main


# checks remote connections to local repo
git remote -v


# updates local repo from remote repo
git pull https://github.com/jshores281/project-name



====================================================================================
# changed name on local repo folder


git remote add -f main https://github.com/jshores281/PASS-RETR

# add from remote to new local repo
git remote add origin https://github.com/jshores281/PASS-RETR

####################################################################################
####################################################################################
##########
# ERRORS #
##########


1. made changes locally that werent acceptted to push to remote repo

C:\Users\jshor\Port_Proj\1CLI\6git>git pull
remote: Enumerating objects: 10, done.
remote: Counting objects: 100% (10/10), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 8 (delta 3), reused 8 (delta 3), pack-reused 0
Unpacking objects: 100% (8/8), 1.31 KiB | 35.00 KiB/s, done.
From https://github.com/jshores281/GIT_TRIX
   1d50dbd..1a6228f  main       -> origin/main
error: Your local changes to the following files would be overwritten by merge:
        git-cli.txt
Please commit your changes or stash them before you merge.
Aborting
Updating 1d50dbd..1a6228f






C:\Users\jshor\Port_Proj\1CLI\6git>git add . && git commit -m "local repo update" && git push
[main ae9ee27] local repo update
 1 file changed, 10 insertions(+), 4 deletions(-)
To https://github.com/jshores281/GIT_TRIX.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/jshores281/GIT_TRIX.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.





C:\Users\jshor\Port_Proj\1CLI\6git>git add . && git commit -m "local repo update" && git push -f
On branch main
Your branch and 'origin/main' have diverged,
and have 1 and 2 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

nothing to commit, working tree clean





C:\Users\jshor\Port_Proj\1CLI\6git>git add . && git commit -m "local repo update" && git push
On branch main
Your branch and 'origin/main' have diverged,
and have 1 and 2 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

nothing to commit, working tree clean






C:\Users\jshor\Port_Proj\1CLI\6git>git pull
Auto-merging git-cli.txt
CONFLICT (content): Merge conflict in git-cli.txt
Automatic merge failed; fix conflicts and then commit the result.





C:\Users\jshor\Port_Proj\1CLI\6git>git pull -f
error: Pulling is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.



C:\Users\jshor\Port_Proj\1CLI\6git>git remote -v
origin  https://github.com/jshores281/GIT_TRIX.git (fetch)
origin  https://github.com/jshores281/GIT_TRIX.git (push)



C:\Users\jshor\Port_Proj\1CLI\6git>git push
To https://github.com/jshores281/GIT_TRIX.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/jshores281/GIT_TRIX.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.



C:\Users\jshor\Port_Proj\1CLI\6git>git push [-f] --set-upstream origin main
error: src refspec origin does not match any
error: failed to push some refs to '[-f]'


******************************************************************************
******************************************************************************
2.

C:\Users\jshor\Port_Proj\1CLI\6git>git push -f --set-upstream origin main
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 441 bytes | 441.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.			
To https://github.com/jshores281/GIT_TRIX.git
 + 1a6228f...ae9ee27 main -> main (forced update)
Branch 'main' set up to track remote branch 'main' from 'origin'.

C:\Users\jshor\Port_Proj\1CLI\6git>git push
Everything up-to-date



C:\Users\jshor\Port_Proj\1CLI\6git>git add . && git commit -m "remote repo update" && git push
[main 8996777] remote repo update
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 4 threads
Compressing objects: 100% (10/10), done.
Writing objects: 100% (11/11), 1.75 KiB | 896.00 KiB/s, done.
Total 11 (delta 4), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (4/4), completed with 1 local object.
To https://github.com/jshores281/GIT_TRIX.git
   ae9ee27..8996777  main -> main


C:\Users\jshor\Port_Proj\1CLI\6git>git push --set-upstream
Everything up-to-date
Branch 'main' set up to track remote branch 'main' from 'origin'.



C:\Users\jshor\Port_Proj\1CLI\6git>git remote -v
origin  https://github.com/jshores281/GIT_TRIX.git (fetch)
origin  https://github.com/jshores281/GIT_TRIX.git (push)

























