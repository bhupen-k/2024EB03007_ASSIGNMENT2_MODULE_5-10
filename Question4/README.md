Commands:

touch emailcleaner.sh

touch emails.txt

Explanation:

It crates the files emailcleaner.sh and emails.txt

emails.txt screenshot:

<img width="979" height="205" alt="Screenshot 2026-02-05 at 10 50 27 PM" src="https://github.com/user-attachments/assets/7cf90f10-6c1c-4bbd-9637-812eadf1003c" />


emailcleaner.sh screenshot:

<img width="658" height="262" alt="Screenshot 2026-02-05 at 10 50 59 PM" src="https://github.com/user-attachments/assets/7eaed367-8b11-4a4d-abaa-7a623d195705" />

Checking the testcases screenshot:

<img width="511" height="315" alt="Screenshot 2026-02-05 at 10 51 23 PM" src="https://github.com/user-attachments/assets/5edd282f-4def-48ec-8838-daaa8a780268" />

Explanation:

emailcleaner.sh is used to process email addresses from emails.txt file. First it checks whether the emails.txt file exist or not. Then grep command with regular expression is used to extract valid email addresses which follow the given format and store them into valid.txt file. The valid emails are sorted and duplicates are removed using sort and uniq commands. After that invalid email addresses are extracted by using grep with invert match option and stored into invalid.txt file.
