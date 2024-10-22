# **************************************************************************** #
#                                    REDIRS                                    #
# **************************************************************************** #

echo <"./test_files/infile_big" | cat <"./test_files/infile"

ls >./outfiles/outfile01 >./outfiles/outfile02

ls >./outfiles/outfile01 >./test_files/invalid_permission

ls >"./outfiles/outfile01" >./test_files/invalid_permission >"./outfiles/outfile02"

echo hi >./outfiles/outfile01 | echo bye

echo hi >./outfiles/outfile01 >./outfiles/outfile02 | echo bye

echo hi >./test_files/invalid_permission | echo bye

echo hi >./test_files/invalid_permission >./outfiles/outfile01 | echo bye

cat >./test_files/invalid_permission <"./test_files/infile"

cat >./outfiles/outfile01 <missing

cat >./test_files/invalid_permission <missing

cat >./outfiles/outfile01 <missing >./test_files/invalid_permission

ls >./outfiles/outfile01 >>./outfiles/outfile01 >./outfiles/outfile02

ls >>./outfiles/outfile01 >>./outfiles/outfile02

ls >>./test_files/invalid_permission >>./outfiles/outfile01

ls >>./outfiles/outfile01 >>./test_files/invalid_permission

ls >./outfiles/outfile01 >>./test_files/invalid_permission >>./outfiles/outfile02

ls >>./test_files/invalid_permission >>./outfiles/outfile02 <missing

echo hi >>./outfiles/outfile01 | echo bye

echo hi >>./outfiles/outfile01 >>./outfiles/outfile02 | echo bye

echo hi >>./test_files/invalid_permission | echo bye

echo hi >>./test_files/invalid_permission >./outfiles/outfile01 | echo bye

### SIMPLE ###

/bin/echo 42 > tmp_redir_out > tmp_redir_out1 > tmp_redir_out2 > tmp_redir_out3
/bin/echo 0
cat tmp_redir_out
/bin/echo 1
cat tmp_redir_out1
/bin/echo 2
cat tmp_redir_out2
/bin/echo 3
cat tmp_redir_out3
rm tmp_redir_out tmp_redir_out1 tmp_redir_out2 tmp_redir_out3

