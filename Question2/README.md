Commands:

touch log_analyzer.sh

chmod +x log_analyzer.sh

Explanation:

It is used to create the file log_analyzer.sh and makes the script executable.

log_analyzer.sh file screenshot:

<img width="618" height="627" alt="Screenshot 2026-02-05 at 10 07 36 PM" src="https://github.com/user-attachments/assets/a31c4e67-94b0-4cd1-81a5-541b745e404c" />

System.log file screenshot:

<img width="605" height="194" alt="Screenshot 2026-02-05 at 10 08 28 PM" src="https://github.com/user-attachments/assets/9aa054ca-77a9-4b58-ac24-86037e9d6697" />

Test cases checked for different scenarios screenshot:

<img width="562" height="337" alt="Screenshot 2026-02-05 at 10 08 41 PM" src="https://github.com/user-attachments/assets/b39f462f-971b-4347-b482-ae7b542d5ae6" />

Explanation:

First it checks whether exactly one argument is given or not and also verifies if the log file exist and if it is readable. After this, the script counts total number of log entries and counts how many INFO, WARNING and ERROR messages are there in the file using grep and wc commands. It also extracts the most recent ERROR message from the log file. Finally, a summary report file is generated with current date in the filename and all results are written into it.
