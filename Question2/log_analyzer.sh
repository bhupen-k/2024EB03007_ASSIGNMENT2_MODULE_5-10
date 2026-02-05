if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one log file name."
    exit 1
fi
logfile="$1"
if [ ! -f "$logfile" ] || [ ! -r "$logfile" ]; then
    echo "Error: Log file does not exist or is not readable."
    exit 1
fi

total_entries=$(wc -l < "$logfile")
info_count=$(grep -c " INFO " "$logfile")
warning_count=$(grep -c " WARNING " "$logfile")
error_count=$(grep -c " ERROR " "$logfile")
latest_error=$(grep " ERROR " "$logfile" | tail -n 1)
date_str=$(date +"%Y-%m-%d")
report_file="logsummary_$date_str.txt"
{
    echo "Log Summary Report - $date_str"
    echo "-----------------------------"
    echo "Total log entries: $total_entries"
    echo "INFO messages: $info_count"
    echo "WARNING messages: $warning_count"
    echo "ERROR messages: $error_count"
    echo ""
    echo "Most recent ERROR message:"
    echo "$latest_error"
} > "$report_file"

cat "$report_file"