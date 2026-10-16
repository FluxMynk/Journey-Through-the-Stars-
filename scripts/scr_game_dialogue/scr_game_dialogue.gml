Hazel = 0;


//@param text_id
function scr_text_id(text_id) 
    {
        switch (text_id) 
            {
                 case "hazel":
                      scr_text("Oh! Hey there! You're Hazel right?","cedric") 
                      scr_text(". . . .")
                      scr_text("Ummmm, Hello? Are you hazel? Wiz told me to introduce myself to you","cedric")
                      scr_text("Then do it and leave me alone.")
                      scr_text("(That was harsh)","cedric")
                      scr_text("I Am Cedric, You can call me Ced for short","cedric")
                          scr_colored_text(5,10, c_yellow, c_yellow, c_white, c_white)
                      scr_text("I Am also a vampire! But don't worry i wont suck your blood :3","cedric")
                          scr_colored_text(12, 18, c_red, c_red, c_white, c_white)
                      scr_text("Hopefully we'll be good friends","cedric-happy")
                      scr_text(". . . .")
                      scr_text("You know, since the both of us will be training with Wiz. . .","cedric")
                      scr_text("He is called Master, not 'Wiz'")
                      scr_text("Oh, Sorry! He told me to just call him Wiz so i didn't know","cedric")
                      scr_text(". . . .")
                      scr_text(". . . .","cedric")
                      scr_text("(I should leave her alone)","cedric") 
                      break;
                
                case "hazel-leave":
                    scr_text("(I should leave her alone)","cedric") 
                    break;
                   
                case "4":
                    scr_text("Hi! I'm cedric, the vampire mage, how are you doing today?","cedric");
                        scr_colored_text(8, 13, c_yellow, c_yellow, c_yellow, c_yellow)
                    scr_text("Sing along!");
                    scr_text("Ahhhh, now and then, now and then, I'll just break again","cedric");
                        scr_option("it's bitter","4-yes")
                        scr_option("wha?","4-no")
                        scr_option("Shoujo A is bad","4-NO")
                    break; 
                    case "4-yes":
                        scr_text("The cold, the cold, the cold, the cold","cedric-happy")
                        break;
                    
                    case "4-no":
                        scr_text("bad fluxmynk","cedric-dissapointed")
                        break;
                    
                    case "4-NO":
                        scr_text(". . .","cedric-shocked")
                        break;
                        
            }
    } 