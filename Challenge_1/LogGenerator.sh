#Creates a sample log file populated with entries
for i in {1..50}; do
	echo "[INFO]: this is an informational message number $i" >> sample.log
	echo "[ERROR]: this is an error message $i" >> sample.log
	echo "[WARNING]: this is a warning message $i" >> sample.log
	echo "[DEBUG]: this is a debug message $i" >> sample.log
done
       	
