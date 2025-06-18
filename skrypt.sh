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

elif [[ $1 == "--error" || $1 == "-e" ]]; then
	count=${2:-100}
	for i in $(seq 1 $count); do
		mkdir -p "error${i}"
		echo -e "error${i}.txt\nskrypt.sh\n$(date)" > "error${i}/error${i}.txt"
		done
fi
