# Initial storywriting session:

## As a user...

* I want to begin a new game.
* I want clear instructions on how to play the game.
* I want to be able to make a guess of four colors each round.
* I want to be able to guess any combination of the four letters.
* I want my guesses to be case insensitive.
* I want to be told the number of correct color guesses.
* I want to be told the number of correct color & placement guesses.
* I want to be told when I've won the game.
* I want to be told how many guesses it took me to win.
* I want to be able to quit at any point.
* I want to know how long it took me to guess the final answer correctly.


## As a program...

* I want to tell the user that any guess shorter than four characters is too short.
* I want to tell the user that any guess longer than four is too long.
* I want to be able to tell the user whether the guess was the correct color.
* I want to be able to tell the user whether the guess was in the correct spot.
* I want to keep track of the user's number of guesses.
* I want to return the "end flow" process when the user guesses all four colors correctly.
* I want to return an error message if the user makes an error.
* I want to ask the user to play again after the user has won the game




# Additional things I know I should have tested right off the bat but didn't because programming is hard:

## sequence_generator

* test_colors_can_be_repeated
* test_it_is_actually_random

## sequence_matcher

* test_it_compares_secret_code_with_guess_of_user
* test_it_returns_number_of_colors_guessed_correctly
* test_it_returns_number_of_colors_guessed_correctly_in_correct_spot

## user_guess

* test_it_is_insensitive_to_case
* test_it_returns_error_message_if_user_enters_unrecognizable_input
* test_turn_counter_adds_one_turn_for_each_guess




# Other things still to do

* Timer
* High scores
* Multi-level gameplay
* Make sure turn counter starts over when user decides to play again (<-- fix this soon, sara!)
