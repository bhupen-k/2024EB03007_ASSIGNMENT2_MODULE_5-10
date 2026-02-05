dirA="dirA"
dirB="dirB"
if [ ! -d "$dirA" ] || [ ! -d "$dirB" ]; then
    echo "Error: One or both directories do not exist."
    exit 1
fi
echo "Files only in $dirA:"
ls "$dirA" | grep -vxF -f <(ls "$dirB")
echo ""
echo "Files only in $dirB:"
ls "$dirB" | grep -vxF -f <(ls "$dirA")
echo ""
echo "Comparing common files:"
for file in $(ls "$dirA"); do
    if [ -f "$dirB/$file" ]; then
        cmp -s "$dirA/$file" "$dirB/$file"
        if [ $? -eq 0 ]; then
            echo "$file : Contents are same"
        else
            echo "$file : Contents are different"
        fi
    fi
done