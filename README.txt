As Ana learns to program in Ruby, we are documenting it here.

We mostly use pair programming, so one of us "steers" while the other dictates directions and thoughts.

We started out in IRB, talking about what the different object types were (we covered strings and integers basically) and the different ways you can interact with the application, and the application can interact with you.

Adder.rb was the intro where I was doing the "steering", and Multiplier.rb is where I dictated a set of requirements which she translated into a functioning application. Deliberately worded the specification in a way that the order of operation would trip her up (she originally had no parenthesis) but she caught on and fixed it quickly.

11/28/2010: The next time, we added the idea of conditionals. I did the steering here, but we discussed in depth the ideas we were using while we did it. Ana used these newfound ideas in her GuessingGame, which she did primarily on her own, I only helped when she got stuck. I have her write the comments while I give her the specification, and then she fills in the code underneath. Almost 11 and already an agile developer. :)

12/3/2010: By the time she got to madlibs, she did it completely on her own. I gave her the specification, the story it needed to fit, and left her at the computer for a few tens of minutes. When I came back, she had some string manipulation issues, but the logic was all there. Walked her through troubleshooting, and then she had everyone in the house play.

12/4/2010: We went back together and refactored MadLibs to have less redundant code by adding a function. We discussed some of the logic changes we could make to improve the game later, like asking for the gender of your friend, and fixing the a/an issues. 

I introduced the rand() method, which lead directly to our next endeavour:

I told her that I needed a function that would pick two random numbers, and then ask the player for the product. A little over an hour later, she came up with what you see here, except the elsif, which I added to show her how we could make the computer seem quite smart, with only a little effort on our part.







Not that anything here will be likely of use, but here is the license anyway:

Programming with Ana
Copyright (c) 2010 Will Luongo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.