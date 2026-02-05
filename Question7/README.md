Commands and outputs:

<img width="504" height="302" alt="Screenshot 2026-02-05 at 11 15 41 PM" src="https://github.com/user-attachments/assets/e86b9241-070c-4272-b2ee-5c245089810a" />

patterns.sh screenshot:

<img width="729" height="264" alt="Screenshot 2026-02-05 at 11 16 15 PM" src="https://github.com/user-attachments/assets/df2a1248-09ba-4683-9cde-c1b4f5dadf2d" />

words.txt screenshot:

<img width="311" height="244" alt="Screenshot 2026-02-05 at 11 16 27 PM" src="https://github.com/user-attachments/assets/aeebfadb-8502-48e4-82ef-418ebbdf2fb5" />

Explanations:

The script patterns.sh processes words from words.txt file and classifies them based on vowel and consonant patterns. First the text is converted into one word per line and all characters are converted to lowercase so that case does not affect matching. Words containing only vowels are extracted and written into vowels.txt and words containing only consonants are written into consonants.txt. Words which contain both vowels and consonants but start with a consonant are identified using pattern matching and stored in mixed.txt.
