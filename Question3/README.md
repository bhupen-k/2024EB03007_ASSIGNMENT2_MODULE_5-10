Commands:

touch validate_results.sh

touch marks.txt

Explanation:

The files validate_results.sh and marks.txt file were created to store the logic and student marks data.

marks.txt screenshot:

<img width="774" height="177" alt="Screenshot 2026-02-05 at 10 40 18 PM" src="https://github.com/user-attachments/assets/37ba1f0a-b9ce-42f3-91de-ca1dd40afef4" />

validate_results.sh screenshot:

<img width="766" height="798" alt="Screenshot 2026-02-05 at 10 41 02 PM" src="https://github.com/user-attachments/assets/1194e869-44b5-4fef-90f7-2c4dbd15f353" />

Checking the test cases:

<img width="567" height="294" alt="Screenshot 2026-02-05 at 10 42 45 PM" src="https://github.com/user-attachments/assets/49d3a3e6-a8c8-4579-9388-e199bad2bf35" />

Explanation:

The script reads marks.txt line by line using a while loop and comma as field separator. For each student it checks marks of all three subjects and counts how many subjects are failed. Based on the fail count it decides whether the student has failed in exactly one subject or passed all subjects.
