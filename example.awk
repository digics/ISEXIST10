


# copy example.awk and isexist.lib in to the current folder
# create empty subfolder name "a" in current folder
# run this script using gawk -f ./example.awk

@include "./isexist.lib"

BEGIN{

      f = "./example.awk"           # file

      r = isexist( f )

      print r "\t" f "'"



      f = "./a"                     # folder

      r = isexist( f )

      print r "\t" f "'"



      f = "./a/"                    # folder

      r = isexist( f )

      print r "\t" f "'"



      f = "./zzz"                   # not exist filepath

      r = isexist( f )

      print r "\t" f "'"

      }


#_______________________________________________
#
# OUTPUTS:
#
#     file    ./example.awk'
#     folder  ./a'
#     folder  ./a/'
#             ./zzz'
#_______________________________________________


