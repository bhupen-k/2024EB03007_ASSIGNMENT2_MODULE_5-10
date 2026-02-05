if [ ! -f words.txt ]; then
    echo "Error: words.txt file not found."
    exit 1
fi

words=$(tr -c '[:alpha:]' '\n' < words.txt | tr '[:upper:]' '[:lower:]' | sed '/^$/d')
echo "$words" | grep -E '^[aeiou]+$' > vowels.txt
echo "$words" | grep -E '^[^aeiou]+$' > consonants.txt
echo "$words" | grep -E '^[^aeiou][a-z]*[aeiou][a-z]*$' > mixed.txt
echo "Pattern classification completed."