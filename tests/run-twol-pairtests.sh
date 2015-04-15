for i in `cat ../apertium-kjh.kjh.twol | grep '!@' | cut -f2 -d'@' | tr ' ' '%'`; do 
	x=`echo $i | tr '%' ' '`; 
	echo -e "@@@ $x\n     ---------------------------------" ; 
	echo $x | hfst-pair-test ../.deps/kjh.twol.hfst | sed 's/^/     /g'; 
	echo ""; 
done
