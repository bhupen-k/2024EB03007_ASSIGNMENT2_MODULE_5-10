if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one directory path."
    exit 1
fi
dir="$1"
if [ ! -d "$dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

echo "Script PID is $$"
mkdir -p "$dir/backup"
for file in "$dir"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$dir/backup/" &
        echo "Started background move for $(basename "$file") with PID $!"
    fi
done
wait
echo "All background move operations completed."