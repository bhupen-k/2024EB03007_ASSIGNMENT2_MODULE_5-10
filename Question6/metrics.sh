if [ ! -f input.txt ]; then
    echo "Error: input.txt file not found."
    exit 1
fi

words=$(tr -c '[:alnum:]' '\n' < input.txt | tr '[:upper:]' '[:lower:]' | sed '/^$/d')
longest=$(echo "$words" | awk '{ print length, $0 }' | sort -nr | head -n 1 | cut -d" " -f2)
shortest=$(echo "$words" | awk '{ print length, $0 }' | sort -n | head -n 1 | cut -d" " -f2)
total_words=$(echo "$words" | wc -l)
total_chars=$(echo "$words" | awk '{ sum += length } END { print sum }')
average=$(echo "scale=2; $total_chars / $total_words" | bc)
unique_words=$(echo "$words" | sort | uniq | wc -l)

echo "Longest word: $longest"
echo "Shortest word: $shortest"
echo "Average word length: $average"
echo "Total number of unique words: $unique_words"