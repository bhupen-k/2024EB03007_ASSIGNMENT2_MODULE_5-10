Commands and outputs:

<img width="633" height="223" alt="Screenshot 2026-02-05 at 11 44 48 PM" src="https://github.com/user-attachments/assets/85c358e4-cac5-41fe-b4ca-bf3d41d7af4d" />

signal_handling.c screenshot:

<img width="675" height="702" alt="Screenshot 2026-02-05 at 11 45 13 PM" src="https://github.com/user-attachments/assets/bbe99f91-c75b-42c4-8358-f075305b6a94" />

Explanation:

This C program demonstrates signal handling using SIGTERM and SIGINT signals. The parent process runs continuously and registers different signal handlers for each signal. Two child processes are created using fork(). One child sends SIGTERM signal to the parent after 5 seconds and the other child sends SIGINT signal after 10 seconds.

When the parent process receives SIGTERM, it prints a cleanup message and continues running. When SIGINT is received, the parent prints an exit message and terminates gracefully. This shows that the parent process handles each signal differently.
