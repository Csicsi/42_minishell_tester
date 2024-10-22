# **************************************************************************** #
#                                  PIPELINES                                   #
# **************************************************************************** #

/bin/env | grep "_="

cat < Makefile > out >> out1 | wc -l out1 > out2
cat < Makefile > out >> out1 | wc -l out1 > out2
/bin/rm -f out
/bin/rm -f out1
/bin/rm -f out2

|ls | ls

ls|cat Makefile|>> out
cat out
/bin/rm -f out

pwd
ls|cat Makefile|>> out|cd ..
/bin/rm -f out
pwd

pwd
cd .. |ls|cat Makefile|>> out
pwd
/bin/rm -f out

aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb | aaa | bbb
