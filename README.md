## automata: customizable Langton's ant-style cellular automata

Essentially, this was originally a *really* fast and optimized version of Langton's Ant. I realized that by changing the order of the instructions `left()`, `right()`, and `move()` inside the main loop, you could make different CA. Feel free to experiment. The current setup is a very interesting one: as the ant iterates through, it adds a new layer on the outside of the current structure, and changes the inside back to normal. Try clicking in whitespace and see what happens.

_Controls_:

* Click - moves the ant to the cursor position
* <kbd>space</kbd> - resets the screen
* <kbd>=</kbd> - speeds up the simulation
* <kbd>-</kbd> - slows down the simulation
* <kbd>m</kbd> - pauses until another key is pressed
