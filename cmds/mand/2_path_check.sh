# **************************************************************************** #
#                                  PATH CHECK                                  #
# **************************************************************************** #

unset PATH
echo $PATH
/bin/ls
echo 1
cd -
echo 42

cd -

/usr/bin/env -i ./minishell
cd /bin/
ls -S

touch tmp_x_file1
tmp_x_file1
echo $?
./tmp_x_file1
echo $?
export PATH=$HOME
echo $PATH
tmp_x_file1
echo $?
./tmp_x_file1
echo $?
unset PATH
tmp_x_file1
echo $?
./tmp_x_file1
echo $?
echo 42
/bin/rm -f tmp_x_file1

export PATH=""
ls
