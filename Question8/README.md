Commands and explanations:

<img width="501" height="344" alt="Screenshot 2026-02-05 at 11 22 02 PM" src="https://github.com/user-attachments/assets/f3b817a0-0fb2-4b75-8efe-47c3a4f0f76c" />

bg_move.sh screenshot:

<img width="664" height="456" alt="Screenshot 2026-02-05 at 11 23 33 PM" src="https://github.com/user-attachments/assets/b38d5378-bbc0-4677-88a2-3d5e8f90d5a1" />

Explanation:

The script bg_move.sh accepts a directory path as input and moves all files inside it into a backup subdirectory. Each move operation is executed in the background using the & operator. The PID of each background process is displayed using the $! variable and the PID of the running script is shown using $$. After starting all background jobs, the wait command is used to pause the script until all move operations are completed.
