Commands and outputs:

<img width="491" height="210" alt="Screenshot 2026-02-05 at 11 07 03 PM" src="https://github.com/user-attachments/assets/e1569902-ea8c-4c1e-97fd-a6d9a5715662" />

input.txt screenshot:

<img width="680" height="109" alt="Screenshot 2026-02-05 at 11 07 38 PM" src="https://github.com/user-attachments/assets/5df7f625-3f6d-4ec1-971a-3d49368174f5" />


metrics.sh screenshot:

<img width="803" height="438" alt="Screenshot 2026-02-05 at 11 08 04 PM" src="https://github.com/user-attachments/assets/f7245437-565e-4ee7-9b15-3d21f49c70f0" />

Explanations:

The script metrics.sh is used to analyze text from input.txt file. First the text is converted into one word per line using tr command and unnecessary characters are removed. The words are then processed using pipes to find longest and shortest words based on their length. Total number of words and total characters are calculated to find average word length.
