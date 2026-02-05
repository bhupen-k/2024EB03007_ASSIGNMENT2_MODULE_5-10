
if [ ! -f emails.txt ]; then
    echo "Error: emails.txt file not found."
    exit 1
fi
grep -E '^[a-zA-Z0-9]+@[a-zA-Z]+\.com$' emails.txt | sort | uniq > valid.txt
grep -Ev '^[a-zA-Z0-9]+@[a-zA-Z]+\.com$' emails.txt > invalid.txt
echo "Email processing completed."
echo "Valid emails stored in valid.txt"
echo "Invalid emails stored in invalid.txt"