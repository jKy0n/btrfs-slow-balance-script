#
#
#		Create by jKyon =D
#	This is one of my firsts Scripts, enjoy o/
#
	echo " 		*** 		BtrFS Balance Routine 		*** "
	echo ""
	echo ""
#
	for (( metaData = 0; metaData < 101; metaData++ )); do
#
		echo ''
		echo " MetaData Balance $metaData% "
		echo ""
		sudo btrfs balance start -musage=$metaData /
		echo ""
	done
#
#
	for (( data = 0; data < 101; data++ )); do
#
		echo ''
		echo " Data Balance $data% "
		echo ""
		sudo btrfs balance start -dusage=$data /
		echo ""
	done
#
	echo " 		*** 	BtrFS Balance Routine ends =)	*** "
	echo ""
	echo " 		-------------------------------------- "