<h1>Testing Log</h1>

This log is a document to demonstrate the final testing that was performed on llama Palooza as a complete application. It will be broken down into 2 tests. The first will be a checklist of functions and possible errors to check documented below. The second will be a user test performed by a fellow student to assess the useability of the app's functions and to see how the user experience is without guidance from me the developer.

<h2>Test 1</h2>

**Completed on the 05/09/2019**

**Below is a list of functions to check**<br><br>

1. Test the users llama choice option at the profile screen.
  * Im expecting that i should be able to select any llama i want and it should display that llama in the battle match up screen. If i enter an invalid selection it should tell me and give me a chace to rectify it.
2. Does the Llama's name appear in the battle match up? test all llamas
3. Test the randomize Llama option (selection 4)try it a few times.
  * Im expecting that it should randomize a differnt Llama each time as sampled from an array.If i choose an option that isnt valid it should tell me and let me try again. 
4. Does the sloths attributes get displayed in the match up and change each time?
5. Test the heads or tails method a few times.
  * The result should change and the winner is displayed before battle each time.
  * Try inputing the incorrect input to ensure it asks for another try.
6. Battle. check that the actual winner is displayed each time as expected.
  * The winner of heads and tails should start each time.
7. Loop the game a few times choosing a new llama and keeping current llama.
  * The sloths attributes should change each time even when keeping the same llama. 
  * Ensure that incorrect input is handled and a chance given to rectify.<br><br>

  **Results**
  
1. Test returned as expected. **PASS**
2. Test returned as expected. **PASS**
3. Test returned as expected. **PASS**
4. Test returned as expected. **PASS**
5. Test returned as expected. **PASS**
6. Test returned as expected. **PASS**
7. Tes did not return as expected **Fail**
  * I was able to decide on choosing a llama again the first time but then the second time it got stuck in the no llama choice loop. Time to review the logic and De-Bug this issue before release.<br><br>
  **Update 6/09/2019**
  * Repaired the loop logic and tested repeatedly. Everything seems to be in order.
  * Test returned as expected. **PASS**

<h2>Test 2</h2>

**Completed on the 06/09/2019**

**Instructions to the tester**<br><br>
Make your way through the application. Use the full range of functions and dont be shy. I wont give you any direction as of the use unless you get stuck. Feel free to try and break it if you want. Provide feeback on useability and how you feel about its ease of use without guidance. Any feeback appreciated.<br><br>

**Results**<br>
**Tested by fellow student Sarah** 
The user was able to use the app without any guidance from myself. The feedback was provided that it was simple enough to navigate with the commands that were supplied on screen. The user did find some non-colored text in my invalid response loop that i was able to fix up. The user enjoyed the game and suggested Some additional features for improvment including different attack points depending on attack types that are pulled from the array. I had found the bug mentioned in the above test before this test and the user wasnt able to break the app. Also mentioned was that they enjoyed the colours and won the game!