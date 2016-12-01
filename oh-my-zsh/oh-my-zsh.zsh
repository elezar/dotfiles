
OH_MY_ZSH_PATH=$HOME/.oh-my-zsh

# all of our zsh files
typeset -U lib_files
lib_files=($OH_MY_ZSH_PATH/lib/*.zsh)

# load everything but the path and completion files
for file in ${lib_files}
do
  source $file
done

unset lib_files