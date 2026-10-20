


//@param text_id
function scr_text_id(text_id) 
    {
        switch (text_id) 
            {
                
                //--------------lake-------------//
                case "hazel":
                    scr_text("Hey there!","cedric-smile") 
                    scr_text(". . .")
                    scr_text("You're hazel right?","cedric")
                    scr_text(". . .")  
                    scr_text("(Talk about passive agressiveness.)","cedric-dissapointed")
                    scr_text("Can i introduce myself atleast?","cedric")
                    scr_text("Hurry up and do it then leave me alone.")
                    scr_text("(That was harsh.)","cedric")
                    scr_text("I Am Cedric! You can call me Ced for short.","cedric")
                        scr_colored_text(5,10, c_yellow, c_yellow, c_white, c_white)
                    scr_text("I Am also a vampire! But don't worry i don't drink blood!","cedric-smile")
                        scr_colored_text(12, 18, c_red, c_red, c_white, c_white)
                    scr_text("Hopefully we'll be good friends.","cedric-smile")
                    scr_text(". . . .")
                    scr_text("You know, since the both of us will be training with Wiz. . . ?","cedric")
                    scr_text("He is called Master, not 'Wiz.'")
                    scr_text(". . . .","cedric")
                    scr_text(". . . .")
                    scr_text("(This is going nowhere)","cedric-dissapointed")
                      break;
                
                case "hazel-leave":
                    scr_text("(I should leave her alone.)","cedric") 
                    break;
                    
                    
                    
                
                //------------inside the house--------------//
                case "bed-hazel":
                    scr_text("A bed with dark blue sheets.")
                    scr_text("I wonder who this bed belongs to. . .","cedric")
                    break;       
                case "bed-cedric":
                    scr_text("A bed with grey sheets and a very comfy pillow.")
                    scr_text("That's where i woke up.","cedric")
                    scr_text("The bed's very soft though so I'm not going to complain.","cedric-smile")
                    break;
                case "bed-wiz":
                    scr_text("A bed with dark blue sheets.")
                    scr_text("The word 'W I Z' is carved into the frame. . .")
                    scr_text("This must be wiz's bed. . .","cedric")
                    scr_text("Why is it dark blue while mine is an ugly grey?!","cedric-confused")
                    break;
                case "bedside-table":
                    scr_text("A bedside table.")
                    scr_text("The bottom drawer only has a few books about magic. . .","cedric")
                    scr_text("I don't understand any of them.","cedric-confused")
                    break;
                case "wardrobe-1":
                    scr_text("A small wooden closet with a clothes rack inside.")
                    scr_text("Why is there only dark blue ponchos in here!?!","cedric-confused")
                    break;
                case "wardrobe-2":
                    scr_text("A small wooden closet with a clothes rack inside.")
                    scr_text("There is only wizard hats in here. . .","cedric")
                    scr_text("I honestly don't know why i expected something else.","cedric-dissapointed")
                    break;
                case "boxes":
                    scr_text("A bunch of cardboard boxes with varying sizes.")
                    scr_text("I wonder what's in these boxes?","cedric")
                    scr_text("Look inside?")
                        scr_option("Why not?","boxes-yes")
                        scr_option("Don't be nosy!","boxes-no")
                    break;
                    case "boxes-yes":
                        scr_text("I'll take a look. . .","cedric")
                        scr_text("Inside the boxes you find. . an arrow pointing to the left. . A plant pot. . And a toy bear.")
                        scr_text("Is that my teddy bear???","cedric-confused")
                        scr_text("How did it get here???","cedric-confused")
                        break;
                    case "boxes-no":
                        scr_text("It probably has wiz's stuff. . .","cedric")
                        break;
                    
                
                
                
                
                //--------------Wiz--------------//
                case "wiz":
                    scr_text("Hey kid! How are you feeling right now?")
                    scr_text("Wiz! I was looking for you since i woke up in that small, poorly built house!", "cedric-smile")
                    scr_text("Way to criticize my building skills, i spent a lot of time learning and training to become a builder. . .")
                    scr_text("And you still got the tiling wrong. . .","cedric-smile")
                    scr_text("Hey! I didn't say i became a good one!")
                    scr_text("Hehehe!","cedric-happy")
                    scr_text("So what is this place exactly?","cedric-confused")
                    scr_text("This is my secret hideout! Or as i like to call it, The hidden valley!")
                        scr_colored_text(56,69, c_green, c_green, c_white, c_white)
                    scr_text("No one outside the valley can enter without casting the correct spell, which only I and hazel know!")
                    scr_text("No one can see the inside from the outside too, So no one will know that you're here. . .")
                    scr_text("Now you really ARE a kidnapper!","cedric-dissapointed")
                    scr_text("By the way, Who's hazel?","cedric-confused")
                    scr_text("You haven't met her yet? She spends most of her time either at the house or the lake. . .")
                    scr_text("You should go introduce yourself!")
                    scr_text("Okay then, Time to reveal my origins!","cedric-smile")
                    break;
                case "wiz-2":
                    scr_text("Go introduce yourself to hazel!")
                    break;
                case "wiz-3":
                    scr_text("I talked to her at the lake but she seemed mad at something. . .","cedric")
                    scr_text("Well, if she is at the lake then she is definitely mad at something. . .")
                    scr_text("Don't worry about it though, ced, when she sits alone at the lake, most of the time she is just mad at me. . .")
                    scr_text("She's sweet once you get to know her.")
                    scr_text("Is she your wife?","cedric-smile")
                    scr_text("What??? Of course not! She is my apprentice! If i had a wife like her i'd jump into this pond.")
                    scr_text("Damn she is that stubborn?","cedric")
                    scr_text("Much more than you think.")
                    scr_text("Well, I'll be on the swing if you ever need me. . .","cedric")
                    scr_text("Hey! wait! I have a task for you. . .")
                    scr_text("I want you to head to my cool Wizard Tower and bring me a Star!")
                        scr_colored_text(30, 42, c_blue, c_blue, c_white, c_white)
                        scr_colored_text(58, 62, c_yellow, c_yellow, c_white, c_white)
                    scr_text("I Honestly thought you were lame and didn't have one of those. . .","cedric-smile")
                    scr_text("How dare you! I'm the coolest of them all!")
                    scr_text("Okay now listen up, you'll have to go through the trees up there and go north through the maze to reach my tower. . .")
                    scr_text("There's a maze? I don't really like mazes. . .","cedric")
                    scr_text("Don't worry, you'll love this one! I made it myself!")
                    scr_text("Ok now hurry up! You don't want to keep me waiting, Don't you?")
                    scr_text("I'm on it!","cedric-smile")
                    break;
                case "wiz-4":
                    scr_text("You don't want to keep me waiting, Don't you? Go get the star!")
                    break;
                
                
                
                
                //--------------------signs------------------//
                case "sign1":
                    scr_text("Room 1:                                      A Tree! Who doesn't like em!")
                    scr_text("apparantely Capitalists.","cedric-smile")
                    break;
                case "sign2":
                    scr_text("Room 2:                                      She didn't wanna talk yet she still said a few words, how many were they again?")
                    scr_text("If i recall correctly, She said the least amount of words possible. . .","cedric")
                    break;
                case "sign3":
                    scr_text("Room 3:                                      Did you know you can make DIY stars using Cardboard? All you need is a spare box!")
                    scr_text("Now i want to make a cardboard star!","cedric-happy")
                    break;
                case "sign4":
                    scr_text("Room 4:                                      Plain and simple math(please don't use a calculator), What is ((996 * 754 -301.6/754)/497.8) + 2?")
                    scr_text("A brain like mine doesn't need a calculator!","cedric-smile")
                    scr_text("Ok so cancel the 754, Divide the 301.6 over 754, Subtract the 0.4 from the 996, Divide it by 497.8, And don't forget to add the 2!","cedric")
                    scr_text("The answer should be 4, which way was that again?","cedric-confused")
                    break;
                case "sign5":
                    scr_text("Room 5:                                      Did you check the bench near the house? Say, How do you go to it again?")
                    break;
                case "sign6":
                    scr_text("Room 6:                                      Nothing's better than watching the sunset with a loved one, Don't you think?")
                    scr_text("Sounds like a nice idea","cedric-smile")
                    break;
                case "sign7":
                    scr_text("Room 7:                                      Which way was wiz's tower again?")
                    scr_text("DAMMIT","cedric-shocked")
                    break;
                case "sign-end":
                    scr_text("Haiiiiiii! :3")
                    scr_text("Congrats on finishing the Maze! Now  you have finally finished the game! It was short ik, hopefully it was fun!")
                    scr_text("I would like to thank the punks(friends) that convinced me that game developing was fun(they were right)")
                    scr_text("and also peyton burnham for his awesome tutorials that helped me with bug solving and implementing character portraits")
                    scr_text("That's it, Thanks for playing, You can finish the game by entering the wite door up there, cya :3")
                    scr_text("I don't understand ANY of this. . .","cedric-confused")
                    scr_text("At least there is a door made of literal light! Who doesn't want to go to heaven?","cedric")
                    break;
                case "sign-start":
                    scr_text("Weclome to the maze! hopefully it'll be an enjoyable experience. . .")
                    scr_text("Before starting I'd advise you to explore and interact with stuff(and people) as much as you can, You don't want to miss out on anything, don't you?")
                    scr_text("Oh and one more thing, Right = 1, Up = 2, and just continue the cycle yourself!")
                    scr_text("Now you're ready to go! Have fun!")
                    scr_text("I Personally don't find mazes that fun but we'll see. . .","cedric")
                    break;
                
                
                
                
                //-----------------decorations-----------------//
                case "bench":
                    scr_text("A sturdy, Blue, Park bench.")
                    scr_text("It has the words 'Belongs to wiz' carved on it.")
                    scr_text("A Comfy bench in the middle of a quiet forest. . .","cedric")
                    scr_text("This is very nice","cedric-smile")
                    break;
                case "swing":
                    scr_text("Oh a Swing!","cedric-smile")
                    scr_text("Might be useful for lazing around. . .","cedric-smile")
                    break;
                
                
                
                //----------------------trigger blocks-----------------------//
                case "forest-wiz":
                    scr_text("This place is nothing like the castle. . .","cedric")
                    scr_text("Not like it matters, I'd rather eat raw fish than go back there anyways!","cedric")
                    scr_text("Wait i think that's called sushi. . .","cedric-confused") 
                    scr_text("HEY KID! COME DOWN HERE!")
                    scr_text("That sounds like wiz! Better get going!","cedric-smile")
                    break;
                case "starting room":
                    scr_text(". . .")
                    scr_text("Ehhhhh. . .")
                    scr_text("My head hurts so fricking much. . .")
                    scr_text("What's this over my eyes? i can't see a thing. . .")
                    scr_text("Well time to remove it!")
                    if not instance_exists(obj_textbox) 
                        { 
                            room_goto_next()
                            instance_destroy(obj_cedric)
                        }    
                    break;
                case "starting room-2":
                    scr_text("A Wizard hat?? Did wiz put it on me when i passed out?","cedric-confused")
                    scr_text("I have to admit it's comfy though. . .","cedric-smile")
                    scr_text(". . .","cedric")
                    scr_text("What is this place?","cedric-confused")
                    scr_text("The tiling is wrong. . .","cedric-dissapointed")
                    scr_text("Well, time to look around!")
                    break;
                case "forest":
                    scr_text("This must be the forest wiz talked about. . .","cedric")
                    scr_text("But where is wiz?","cedric-confused")
                    scr_text("I gotta look for him, As usual.","cedric-dissapointed")
                    break;
                case "maze-fail":
                    scr_text(". . .","cedric")
                    scr_text("Dammit.","cedric-dissapointed")
                    break;
                case "lake":
                    scr_text(". . .")
                    scr_text("(It's Quiet in here. . .)","cedric")
                    break;
                
                
                //-------------testing-------------//
                case "4":
                    scr_text("Hi! I'm cedric, the vampire mage! how are you doing today?","cedric-smile");
                        scr_colored_text(8, 13, c_yellow, c_yellow, c_yellow, c_yellow)
                    scr_text("Sing along!");
                    scr_text("Ahhhh, now and then, now and then, I'll just break again","cedric-smile");
                        scr_option("it's bitter","4-yes")
                        scr_option("wha?","4-no")
                        scr_option("Shoujo A is bad","4-NO")
                    break; 
                    case "4-yes":
                        scr_text("The cold, the cold, the cold, the cold!","cedric-happy")
                        break;
                    
                    case "4-no":
                        scr_text("bad fluxmynk","cedric-dissapointed")
                        break;
                    
                    case "4-NO":
                        scr_text(". . .","cedric-shocked")
                        break;
            }
    } 