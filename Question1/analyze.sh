if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one argument."
    exit 1
fi
path="$1"
if [ ! -e "$path" ]; then
    echo "Error: The specified path does not exist."
    exit 1
fi
if [ -f "$path" ]; then
    echo "The given path is a file."
    echo "Lines, words, and characters:"
    wc "$path"

elif [ -d "$path" ]; then
    echo "The given path is a directory."
    total_files=$(find "$path" -type f | wc -l)
    txt_files=$(find "$path" -type f -name "*.txt" | wc -l)
    echo "Total number of files: $total_files"
    echo "Number of .txt files: $txt_files"
else
    echo "Error: Unsupported file type."
fi