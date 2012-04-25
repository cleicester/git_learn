@echo off
:: git_learn_notes.txt
::
:: Chris Leicester 
::
:: 25-Apr-2012
::
 
:: First time use run change and run these commands to configure your Git identity
:: --global option means the identity is for all repositories you interact with
::
:: git config --global user.name "Fred Dibnah"
:: git config --global user.email "fdibnah@steeplejack.com"
:: git config --list

:: ======================== Example Output =====================================
:: user.name=Fred Dibnah
:: user.email=fdibnah@steeplejack.com
:: core.repositoryformatversion=0
:: core.filemode=false
:: core.bare=false
:: core.logallrefupdates=true
:: core.symlinks=false
:: core.ignorecase=true
:: core.hidedotfiles=dotGitOnly
:: =============================================================================

:: Now some example tasks

:: Make a new repository for a project (init) and display the status

cd Visual Studio 2010\Projects\git_learn
git init
git status

:: ======================== Example Output =====================================
:: # On branch master
:: #
:: # Initial commit
:: #
:: # Untracked files:
:: #   (use "git add <file>..." to include in what will be committed)
:: #
:: #       git_learn.sln
:: #       git_learn.suo
:: #       git_learn/
:: nothing added to commit but untracked files present (use "git add" to track)
:: =============================================================================


:: Make a useful readme file (its in .md markdown format which amongs other things
:: puts <h1></h1> HTML around what is underlined)
::
echo git_learn > readme.md
echo ========= >>  readme.md
echo. >> readme.md
echo A play area with a bunch of files for exploring team workflow schemes >> readme.md
echo. >> readme.md
echo. >> readme.md

:: Make a useful ignore file that configures Git for this repository to ignore files that match
:: the specified rules
::
echo # Build and Object Folders > .gitignore
echo bin/ >> .gitignore
echo obj/ >> .gitignore
echo. >> .gitignore
echo #User Specific Files  >> .gitignore
echo *.user >> .gitignore
echo *.suo >> .gitignore
echo. >> .gitignore
echo #Resource Caches >> .gitignore
echo _ReSharper.* >> .gitignore
echo *.sln.cache >> .gitignore

:: +-----------------------------------------------------------------------------------------------+
:: | Now to start some work. We add the files in our project to the staging area (really a status) |
:: +-----------------------------------------------------------------------------------------------+
::
:: we specify current directory (.) to add and because the add targets a directory it will
:: add all non ignored files in the directory and subdirectories recursivley. Add means the
:: file is now have changes tracked
git add .
git status

:: ======================== Example Output =====================================
:: # On branch master
:: #
:: # Initial commit
:: #
:: # Changes to be committed:
:: #   (use "git rm --cached <file>..." to unstage)
:: #
:: #       new file:   .gitignore
:: #       new file:   git_learn.sln
:: #       new file:   git_learn.suo
:: #       new file:   git_learn/App.config
:: #       new file:   git_learn/Form1.Designer.vb
:: #       new file:   git_learn/Form1.resx
:: #       new file:   git_learn/Form1.vb
:: #       new file:   git_learn/My Project/Application.Designer.vb
:: #       new file:   git_learn/My Project/Application.myapp
:: #       new file:   git_learn/My Project/AssemblyInfo.vb
:: #       new file:   git_learn/My Project/Resources.Designer.vb
:: #       new file:   git_learn/My Project/Resources.resx
:: #       new file:   git_learn/My Project/Settings.Designer.vb
:: #       new file:   git_learn/My Project/Settings.settings
:: #       new file:   git_learn/bin/Debug/git_learn.exe
:: #       new file:   git_learn/bin/Debug/git_learn.pdb
:: #       new file:   git_learn/bin/Debug/git_learn.vshost.exe
:: #       new file:   git_learn/bin/Debug/git_learn.vshost.exe.manifest
:: #       new file:   git_learn/bin/Debug/git_learn.xml
:: #       new file:   git_learn/git_learn.vbproj
:: #       new file:   git_learn/obj/x86/Debug/DesignTimeResolveAssemblyReferencesInput.cache
:: #       new file:   git_learn/obj/x86/Debug/GenerateResource.read.1.tlog
:: #       new file:   git_learn/obj/x86/Debug/GenerateResource.write.1.tlog
:: #       new file:   git_learn/obj/x86/Debug/TempPE/My Project.Resources.Designer.vb.dll
:: #       new file:   git_learn/obj/x86/Debug/git_learn.Form1.resources
:: #       new file:   git_learn/obj/x86/Debug/git_learn.Resources.resources
:: #       new file:   git_learn/obj/x86/Debug/git_learn.exe
:: #       new file:   git_learn/obj/x86/Debug/git_learn.pdb
:: #       new file:   git_learn/obj/x86/Debug/git_learn.vbproj.FileListAbsolute.txt
:: #       new file:   git_learn/obj/x86/Debug/git_learn.xml
:: #       new file:   git_learn_notes.bat
:: #       new file:   readme.md
:: #
:: =============================================================================


git commit -m "Initial commit"

:: ======================== Example Output =====================================
[master (root-commit) 9f8bdd3] Initial commit
 32 files changed, 848 insertions(+), 0 deletions(-)
 create mode 100644 .gitignore
 create mode 100644 git_learn.sln
 create mode 100644 git_learn.suo
 create mode 100644 git_learn/App.config
 create mode 100644 git_learn/Form1.Designer.vb
 create mode 100644 git_learn/Form1.resx
 create mode 100644 git_learn/Form1.vb
 create mode 100644 git_learn/My Project/Application.Designer.vb
 create mode 100644 git_learn/My Project/Application.myapp
 create mode 100644 git_learn/My Project/AssemblyInfo.vb
 create mode 100644 git_learn/My Project/Resources.Designer.vb
 create mode 100644 git_learn/My Project/Resources.resx
 create mode 100644 git_learn/My Project/Settings.Designer.vb
 create mode 100644 git_learn/My Project/Settings.settings
 create mode 100644 git_learn/bin/Debug/git_learn.exe
 create mode 100644 git_learn/bin/Debug/git_learn.pdb
 create mode 100644 git_learn/bin/Debug/git_learn.vshost.exe
 create mode 100644 git_learn/bin/Debug/git_learn.vshost.exe.manifest
 create mode 100644 git_learn/bin/Debug/git_learn.xml
 create mode 100644 git_learn/git_learn.vbproj
 create mode 100644 git_learn/obj/x86/Debug/DesignTimeResolveAssemblyReferencesInput.cache
 create mode 100644 git_learn/obj/x86/Debug/GenerateResource.read.1.tlog
 create mode 100644 git_learn/obj/x86/Debug/GenerateResource.write.1.tlog
 create mode 100644 git_learn/obj/x86/Debug/TempPE/My Project.Resources.Designer.vb.dll
 create mode 100644 git_learn/obj/x86/Debug/git_learn.Form1.resources
 create mode 100644 git_learn/obj/x86/Debug/git_learn.Resources.resources
 create mode 100644 git_learn/obj/x86/Debug/git_learn.exe
 create mode 100644 git_learn/obj/x86/Debug/git_learn.pdb
 create mode 100644 git_learn/obj/x86/Debug/git_learn.vbproj.FileListAbsolute.txt
 create mode 100644 git_learn/obj/x86/Debug/git_learn.xml
 create mode 100644 git_learn_notes.bat
 create mode 100644 readme.md
:: =============================================================================

git status
:: ======================== Example Output =====================================
:: # On branch master
:: nothing to commit (working directory clean)
:: =============================================================================

:: Do some work in the project in VS2010 and then check status
:: ======================== Example Output =====================================
:: # On branch master
:: # Changed but not updated:
:: #   (use "git add <file>..." to update what will be committed)
:: #   (use "git checkout -- <file>..." to discard changes in working directory)
:: #
:: #       modified:   git_learn.suo
:: #       modified:   git_learn/Form1.Designer.vb
:: #       modified:   git_learn/Form1.vb
:: #       modified:   git_learn/bin/Debug/git_learn.exe
:: #       modified:   git_learn/bin/Debug/git_learn.pdb
:: #       modified:   git_learn/obj/x86/Debug/DesignTimeResolveAssemblyReferencesInput.cache
:: #       modified:   git_learn/obj/x86/Debug/GenerateResource.read.1.tlog
:: #       modified:   git_learn/obj/x86/Debug/git_learn.exe
:: #       modified:   git_learn/obj/x86/Debug/git_learn.pdb
:: #
:: no changes added to commit (use "git add" and/or "git commit -a")
:: =============================================================================

git add .


:: After adding with . wild card the only files left in a modified state are
:: those ignored files
:: ======================== Example Output =====================================
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       modified:   git_learn.suo
#       modified:   git_learn/Form1.Designer.vb
#       modified:   git_learn/Form1.vb
#       modified:   git_learn/bin/Debug/git_learn.exe
#       modified:   git_learn/bin/Debug/git_learn.pdb
#       modified:   git_learn/obj/x86/Debug/DesignTimeResolveAssemblyReferencesInput.cache
#       modified:   git_learn/obj/x86/Debug/GenerateResource.read.1.tlog
#       copied:     git_learn/bin/Debug/git_learn.exe -> git_learn/obj/x86/Debug/git_learn.exe
#       modified:   git_learn/obj/x86/Debug/git_learn.pdb
#
:: =============================================================================


git commit -m "Rename and tidy UI controls"

:: ======================== Example Output =====================================
:: name and tidy UI controls"
:: [master 4372733] Rename and tidy UI controls
::  9 files changed, 21 insertions(+), 20 deletions(-)
::  copy git_learn/{bin => obj/x86}/Debug/git_learn.exe (56%)
:: =============================================================================

git status
:: ======================== Example Output =====================================
:: # On branch master
:: nothing to commit (working directory clean)
:: =============================================================================

:: List the commits
git log

:: ======================== Example Output =====================================
:: 
:: 
:: 
:: commit 43727331cc26b19755817cc33830a7e2fd04c66c
:: Author: Chris Leicester <cjleicester@googlemail.com>
:: Date:   Wed Apr 25 11:47:08 2012 +0100
:: 
::     Rename and tidy UI controls
:: 
:: commit 9f8bdd30ef892976bbb992b448c167688baf1ad7
:: Author: Chris Leicester <cjleicester@googlemail.com>
:: Date:   Wed Apr 25 11:18:22 2012 +0100
:: 
::     Initial commit
:: 
:: =============================================================================

:: Now to share with co-workers
:: Here we have a brand new empty repository on github. First add an alias
:: name to point at the repository (only need to configure it once)
:: And then push the repository 
git remote add git_learn git@github.com:cleicester/git_learn.git

git push git_learn master
:: Enter passphrase for key '/c/Users/Chris/.ssh/id_rsa':<<your passphrase to gain access to stored public key>>
:: Counting objects: 53, done.
:: Delta compression using up to 2 threads.
:: Compressing objects: 100% (47/47), done.
:: Writing objects: 100% (53/53), 49.19 KiB, done.
:: Total 53 (delta 12), reused 0 (delta 0)
:: To git@github.com:cleicester/git_learn.git
::  * [new branch]      master -> master
