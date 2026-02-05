commands and outputs:

<img width="623" height="325" alt="Screenshot 2026-02-05 at 11 01 43 PM" src="https://github.com/user-attachments/assets/e9094564-90ef-4493-a0e2-f748ac47fddb" />

sync.sh file screenshot:

<img width="520" height="494" alt="Screenshot 2026-02-05 at 11 02 17 PM" src="https://github.com/user-attachments/assets/f36cea72-3011-41fd-a6f6-85d6fe54c102" />

Explanation:

The script sync.sh is used to compare two directories dirA and dirB. First it checks whether both directories exist or not. Then it lists files which are present only in dirA and only in dirB using ls and grep commands. After that it checks files with same name present in both directories and compares their contents using cmp command. If the contents are same it prints matching message otherwise it shows that files are different.
