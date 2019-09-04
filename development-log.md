<h1>Development Log</h1>

**04/09/2019**<br><br>
As we approach the halfway mark on the development of llama Palooza i felt it was time to make a log entry and report in on how i am going and a few things i have learnt. There are also a couple of things i feel i will do better next time as a result of my progress so far.<br><br>

I am from an overall perspective happy with my progress so far. Thanks to a bit of guidance from matt i feel im on the right track to developing an AGILE program that will easily be able to be tailored into other things in the future. The script is also much DRY-er than i feel it would have originally been. The reason for this is that as my understanding of how to write methods, into the classes within the app, has developed i have been able to dramatically increase my success in this area.<br><br>

My main concern is that although i have been constantly testing everything as i progress i feel that from a profesional development point of view a more formal style of TDD should be employed in th future. My app will come with all the approproate tests however they should have been written before hand. The limitation here was my level of competence and understanding of how to efficiently write the classes and mehtods. In the future i feel i will be better preopared to do this.<br><br>

**04/09/2019**
I have a fully operational "bug free". touch wood :D. app this afternoon. I encountered a bug with the winner display screen because i had a "break if" in the code and if it did break at that point it wasnt accuratley recording the winner/loser. It took me a fair bit of review to find it but once i did i was able to rectify by ensuring the value of winner/loser is updated before the break. Apart from that i had some issues with looping to different sections in the game depending on player selection. I ended up using a loop do around the game with a nested until loop in the section i wanted to loop otherwise. With a couple of conditionals ofcourse. i also had to re assign a nill value to the variables that were being used as conditionals for the loops.<br><br>

Looking forward to spending some time working on the "fluff". its mostly coloured but time to do some more testing and seeing what fun stuff i can add before its due.