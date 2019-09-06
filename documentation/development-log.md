<h1>Development Log</h1>

**04/09/2019 morning**<br><br>
As we approach the halfway mark on the development of llama Palooza i felt it was time to make a log entry and report in on how i am going and a few things i have learnt. There are also a couple of things i feel i will do better next time as a result of my progress so far.<br><br>

I am from an overall perspective happy with my progress so far. Thanks to a bit of guidance from matt i feel im on the right track to developing an AGILE program that will easily be able to be tailored into other things in the future. The script is also much DRY-er than i feel it would have originally been. The reason for this is that as my understanding of how to write methods, into the classes within the app, has developed i have been able to dramatically increase my success in this area.<br><br>

My main concern is that although i have been constantly testing everything as i progress i feel that from a profesional development point of view a more formal style of TDD should be employed in th future. My app will come with all the approproate tests however they should have been written before hand. The limitation here was my level of competence and understanding of how to efficiently write the classes and mehtods. In the future i feel i will be better preopared to do this.<br><br>

**05/09/2019 afternoon**<br><br>
I have a fully operational "bug free". touch wood :D. app this afternoon. I encountered a bug with the winner display screen because i had a "break if" in the code and if it did break at that point it wasnt accuratley recording the winner/loser. It took me a fair bit of review to find it but once i did i was able to rectify by ensuring the value of winner/loser is updated before the break. Apart from that i had some issues with looping to different sections in the game depending on player selection. I ended up using a loop do around the game with a nested until loop in the section i wanted to loop otherwise. With a couple of conditionals ofcourse. i also had to re assign a nill value to the variables that were being used as conditionals for the loops.<br><br>

Looking forward to spending some time working on the "fluff". its mostly coloured but time to do some more testing and seeing what fun stuff i can add before its due.

**05/09/2019 afternoon**<br><br>
After completing alot of testing today and tonight. I am pleased to say i am truly almost there. After going through my TDD tests and catching up on them i made several changes to the code to keep it as agile and testable as possible. This was a great learning experience and i look forward to honing my TDD skills in the future. The lack of experience and knowing of how to peice a code together made it hard if not impossible for me to write my code from pre written tests. But i can certainly see the benefit of coding/developing this way to create an agile code that is easy to peace togther and apart to do what is needed.<br><br>

During my final testing of the overall app i encountered a small bug with the looping of the program to diferrent sections. I think its a small logic issue which will be first on my list of repairs in the morning.<br><br>

**06/09/2019 afternoon**<br><br>
**2:43PM**<br><br>
I have completed this project and i am ready to submitt it for grading. I hope that future aspiring developers will take something from these documents that they will be able to use to help them with there own projects. I also look forward to looking back on this one day and laughing at at how i used to write code and struggled my way through my first assignment.<br><br>

Major learning curves during this assignment have been TDD is key to Agile re workable code. Utilising classes to store methods is a great way to keep your source code DRY (Dont repeat yourself). You will see that my main source code script is mostly just printing strings to the screen and calling methods from within the classes.<br><br>

Time managment is key! Dont bite of more than you can chew. Thats what side projects are for :D. I also learnt that i love coding and the constant learning journey that will be provided everyday that i fire up the laptop and start solving problems. Project management tools (Like Trello) are really handy and can help keep you focused and on track. Also the true and tested Flow chart diagram is an absolute gem when it comes to figuring out the flow of your app and can help alot during the process of writing your code when trying to figure out your logic.<br><br>

Peace!


