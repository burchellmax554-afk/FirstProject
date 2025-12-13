# 2025 updates: I didn't even know about comments when I wrote this in 2018
# Any comments you see were only added just now
# I also spaced out my code sections better. It was a mess before.

word = "codeskulptor"
guessed = ""
lives = 5
won = False

print("Welcome to Hangman!")
print("You have 5 lives.")
print("The word has", len(word), "letters.")

while lives > 0 and not won:
    display = ""

    # Build the display word
    for letter in word:
        if letter in guessed:
            display = display + letter
        else:
            display = display + "_"
    
    print("\nWord:", display)
    print("Lives left:", lives)
    
    # Check if the word is fully guessed
    if "_" not in display:
        won = True
        break
    
    guess = input("Guess a letter: ")
    
    # Very basic input handling
    if guess in word:
        print("Correct!")
        guessed = guessed + guess
    else:
        print("Wrong!")
        lives = lives - 1
        guessed = guessed + guess

# End of game
if won:
    print("\nYou won! The word was:", word)
else:
    print("\nYou lost!")
    print("The word was:", word)