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
                    scr_text("ahhhh, now and then, now and then, ill just break again");
                        scr_option("it's bitter","4-yes")
                        scr_option("wha?","4-no")
                        scr_option("Shoujo A is bad","4-NO")
                    break; 
                    case "4-yes":
                        scr_text("The cold, the cold, the cold, the cold")
                        break;
                    case "4-no":
                        scr_text("bad fluxmynk")
                        break;
                    case "4-NO":
                        scr_text("FUCK YOU")
                        break;
                
                case "5":
                    scr_text("All life is equally beautiful! ");
                    break; 
                
            }
    } 