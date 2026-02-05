Commands:

touch analyze.sh

chmod +x analyze.sh

Explanation:

It is used to create an empty shell script file named analyze.sh, and chmod +x is used so that it can be executed directly from the terminal.

File analyze.sh screenshot:

<img width="601" height="535" alt="Screenshot 2026-02-05 at 9 50 59 PM" src="https://github.com/user-attachments/assets/28f26636-ac9d-41d9-a84d-2876caf5b380" />

Explanation

It first checks how many arguments are given using $#. If more than one or no argument is given then it shows an error message. 
Then it checks whether the given path actually exist or not. If the path is a file, it uses wc command to show number of lines, words and characters. If the path is a directory then it counts total number of files and number of the text files using find command.

Checking the script using some test cases for each scenario:

<img width="569" height="350" alt="Screenshot 2026-02-05 at 9 55 46 PM" src="https://github.com/user-attachments/assets/82ba697b-068a-47cb-8cca-ab1bc40785ad" />
