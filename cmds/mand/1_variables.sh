# **************************************************************************** #
#                                  VARIABLES                                   #
# **************************************************************************** #

### SCMD IN VARIABLE ###
export tmp_test="/bin/echo 42"
$tmp_test
$tmp_test 42
export tmp_test="/bin/echo"
$tmp_test 42 42

### VARIABLE SPLITTING ###
export X="  A  B  "
/bin/echo "1"$X'2'

export X=" A  B  "
/bin/echo "1"$X'2'

export X="  A  B "
/bin/echo "1"$X'2'

export X="  A  B"
/bin/echo "1"$X'2'

export X="  A B  "
/bin/echo "1"$X'2'

export X="  AB  "
/bin/echo "1"$X'2'

export X="   "
/bin/echo "1"$X'2'

export X="  A  B  "
/bin/echo "1"$X?

