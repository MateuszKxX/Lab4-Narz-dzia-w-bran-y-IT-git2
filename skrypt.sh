if [[ &1 == "--date" ]]; then
	date
fi

elif [[ $1 == "--logs" ]]; then
	count=${2:-100}
	for i in $(seq 1 $count); do
		filename="log${i}.txt"
		echo -e "$filename\nskrypt.sh\n$(date)" > $filename
	done
fi

elif [[ $1 == "--help" ]]; then
	echo "--date	Show current date"
	echo "--logs [n]	Create n log files"
	echo "--help	Show help"
fi
