BEGIN {copy=1}
/{@\*+}/ {copy=0;}
{if (copy==1) {print $0};}
/{\*+@}/ {copy=1;
            while ((getline line < "../repl.txt") > 0)
               {print line;}
            close($2);}