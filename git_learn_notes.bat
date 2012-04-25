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



