#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int i;
    pid_t pid;
    printf("Parent process PID: %d\n", getpid());
    for (i = 0; i < 3; i++) {
        pid = fork();
        if (pid == 0) {
            printf("Child process created with PID: %d\n", getpid());
            exit(0);
        } else if (pid < 0) {
            perror("fork failed");
            exit(1);
        }
    }
    for (i = 0; i < 3; i++) {
        pid = wait(NULL);
        printf("Parent cleaned up child process with PID: %d\n", pid);
    }
    printf("All child processes cleaned. No zombies remaining.\n");
    return 0;
}