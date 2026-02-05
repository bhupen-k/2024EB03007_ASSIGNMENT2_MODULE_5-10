Commands and outputs:

<img width="658" height="268" alt="Screenshot 2026-02-05 at 11 28 44 PM" src="https://github.com/user-attachments/assets/7626c93a-69e3-45d8-b60f-f32efb758395" />

zombie_prevention.c screenshot:

<img width="621" height="577" alt="Screenshot 2026-02-05 at 11 29 12 PM" src="https://github.com/user-attachments/assets/5892b383-a37d-49f8-a034-436438714033" />

Explanation:

This C program demonstrates how zombie processes can be prevented. The parent process creates multiple child processes using fork(). Each child process prints its PID and terminates immediately. The parent process then waits for all child processes using the wait() system call and prints the PID of each child it cleans up. Since the parent collects the exit status of every child, no zombie processes are left in the system.
