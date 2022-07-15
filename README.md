# GIT_TRIX: A curated list of commonly used git CLI commnads quick guide.
<br>

# SECTIONS
## 1. [git auth & repo creation management](#1-git-auth-and-repo-creation-management)
## 2. [git branch management](#2-git-branch-management)
## 3. [git pull management](#3-git-pull-management)
## 4. [git clone management](#4-git-clone-management)

<br></br>
# 1. git auth and repo creation management

login to github user account
<pre>
gh auth login
</pre>

create remote repository on github.com/profile
<pre>
gh repo create DATA-TOOLS
</pre>

start local repo in current dir
<pre>
git init .
</pre>

start local repo branch name [main]
<pre>
git init -b main
</pre>
---
<br></br>
# 2. git branch management

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
creates new branch and switches to it WITH changes made in current branch = AWESOME!.
##### (if forgets to change to test branch after coding alot in master)
<pre>
git checkout -b [new-branch-name]
</pre>
---
delete remote branch in github
<pre>
git push [local branch] --delete [remote branch]
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
<pre>git remote rename [old-name] [new-name]</pre>
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
# 3 git pull management

## git pull is basically fetch/merge (adds changes made on remote repo and merges to your local repo, used in collab dev)
------------------------------------------------------------------------------------

<pre>git pull origin master</pre>



###################################################################################################################
====================================================================================
# git clone management
====================================================================================

------------------------------------------------------------------------------------
# get clone downloads fresh copy of remote repo to your computer
------------------------------------------------------------------------------------

<pre>git clone -b [branch-name] https://remote/remote.git </pre>


###################################################################################################################
====================================================================================
# git fetch (update local repo from remote)
====================================================================================

------------------------------------------------------------------------------------
# fetch all remote branches and overwrite local branch of new changes from remote
------------------------------------------------------------------------------------

<pre>git fetch --all
git reset --hard [origin]/[remote-branch]</pre>



------------------------------------------------------------------------------------
# fetch only one remote branch and overwrite local repo 
------------------------------------------------------------------------------------

<pre>git fetch origin branch-name
git reset --hard [local]/[remote-branch]</pre>



------------------------------------------------------------------------------------
# git fetch remote branch and show which files have changed compared to local branch
------------------------------------------------------------------------------------

<pre>
git fetch origin branch-name
git reset [origin]/[remote-branch]</pre>

------------------------------------------------------------------------------------
# CREATE YOUR LOCAL REPO FROM EXISTING BRANCH #
------------------------------------------------------------------------------------


git init
git remote add origin git@github.com:lmschenck/otto-core.git
git remote -v
git clone -b add-org-description git@github.com:lmschenck/otto-core.git

git fetch origin add-org-description
git reset --hard origin/add-org-description
git branch




------------------------------------------------------------------------------------
# UPDATE YOUR LOCAL REPO WITHOUT LOSSING CHANGES NOT YET COMMITTED #
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
# Stash your local changes:
------------------------------------------------------------------------------------

git stash

------------------------------------------------------------------------------------
# Update the branch to the latest code
------------------------------------------------------------------------------------

git fetch --all
git reset --hard [local]/[remote]
#OR
git pull

------------------------------------------------------------------------------------
# Merge your local changes into the latest code:
------------------------------------------------------------------------------------

git stash apply

------------------------------------------------------------------------------------
# Add, commit and push your changes
------------------------------------------------------------------------------------

git add
git commit
git push





###################################################################################################################
====================================================================================
# git commit management 
====================================================================================

------------------------------------------------------------------------------------
# unstage files 
------------------------------------------------------------------------------------

git restore --staged [files found in status]


------------------------------------------------------------------------------------
# delete untracked local files 
------------------------------------------------------------------------------------

git clean -fx


------------------------------------------------------------------------------------
# commit specific files
------------------------------------------------------------------------------------

git commit [some files]
Or if you are sure that you have a clean staging area you can

git add [some files]       # add [some files] to staging area
git add [some more files]  # add [some more files] to staging area
git commit                 # commit [some files] and [some more files]
If you want to make that commit available on both branches you do

git stash                     # remove all changes from HEAD and save them somewhere else
git checkout <other-project>  # change branches
git cherry-pick <commit-id>   # pick a commit from ANY branch and apply it to the current
git checkout <first-project>  # change to the other branch
git stash pop                 # restore all changes again







###################################################################################################################
====================================================================================
# git push management
====================================================================================

------------------------------------------------------------------------------------
# pushes with local tracking
------------------------------------------------------------------------------------

git push -u local/master








###################################################################################################################
====================================================================================
# git tracking management
====================================================================================


------------------------------------------------------------------------------------
# tracks changes made locally FROM local(origin) TO remote(main)  [-f = force push]
------------------------------------------------------------------------------------

git push [-f] --set-upstream [origin] [main]

------------------------------------------------------------------------------------
# tracks changes made on repo
------------------------------------------------------------------------------------

git pull [-f] --set-upstream [origin] [main]


------------------------------------------------------------------------------------
# commits changes to github.com/profile/repository		
------------------------------------------------------------------------------------

git add . && git commit -m "VERSION CONTROL COMMENT" && git push





###################################################################################################################
====================================================================================
# git config management
====================================================================================



git config --list

git config --global core.editor "sublime --wait"


git config --global user.email
git config --global user.email 52839097+jshores281@users.noreply.github.com










###################################################################################################################
====================================================================================
# git state management
====================================================================================

git show 

git log --oneline

git status

git diff








###################################################################################################################
###################################################################################################################
====================================================================================
###################
# TROUBLESHOOTING #
###################
====================================================================================


# if: 
#fatal: 'origin' does not appear to be a git repository


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

























