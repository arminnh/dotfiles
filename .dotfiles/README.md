# Starting from scratch

    # create git bare repository that will track our files
    git init --bare $HOME/.dotfiles
    
    # create alias to interact with dotfiles repository
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    
    # hide files we are not explicitly tracking
    dotfiles config --local status.showUntrackedFiles no
    
    # add alias to .bashrc 
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc

# Install onto a new system 

    # define the dotfiles alias
    function dotfiles {
       /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
    }
    
    # ignore the folder where we will clone the dotfiles into, to avoid weird recursion problems
    echo ".dotfiles" >> .gitignore
    
    # clone files into a bare repository
    git clone --bare git@github.com:arminnh/dotfiles.git $HOME/.dotfiles
    
    # checkout the content from the bare repository to $HOME and back up existing dot files if there is a conflict
    mkdir -p .dotfiles-backup
    dotfiles checkout
    if [ $? = 0 ]; then
      echo "Checked out dotfiles.";
      else
        echo "Backing up pre-existing dot files.";
        dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
    fi;
   
    # checkout the content from the bare repository to $HOME
    dotfiles checkout
    
    # hide files we are not explicitly tracking
    dotfiles config status.showUntrackedFiles no


# Links
https://news.ycombinator.com/item?id=11071754  
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
