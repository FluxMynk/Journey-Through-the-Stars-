//@param text_id
function scr_text_id(text_id) 
    {
        switch (text_id) 
            {
                
                case "1":
                    scr_text("alien, you are my alien! ");
                    break; 
                
                case "2":
                    scr_text("you cannot give up! ");
                    break; 
                
                case "3":
                    scr_text("CAUSE I AM PERFECT");
                        
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
                        
                case "5":
                    scr_text("All life is equally beautiful!");
                    break; 
                
            }
    } 