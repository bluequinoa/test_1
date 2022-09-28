lat <- runif(1)
lon <- runif(1)
lat <- round(lat,1)
lon <- round(lon,1)

choice_lat<- ""
score <- 0
while(choice_lat!=lat){
  choice_lat <- readline(prompt = "guess lat : ")
  if(choice_lat == lat){
    print("well done! ")
    print(paste("your score is ",score))
  }else if (choice_lat > lat){
    print("less")
    score <- score + 1
  }else{
    print("more")
    score <- score + 1
  }
}




choice_lon <- ""

while(choice_lon!=lon){
  cat("1 - play\n2 - High Score\nq - quit")
  choice <- readline(prompt = "what is your choice? ")
  if(choice == 1){
    print("A nice game here")
  }else if (choice == 2){
    print(df_player)
  }
}

cat("1 - play\n2 - High Score\nq - quit")


choice_game <- ""
cat("1 - start playing\n2 - quit")
choice_game <- readline(prompt = "what is your choice ?")
if(choice_game == 1){
  print("here we go!")
  print("In this game, your goal is to guess the lat/lon of a bird equiped with a gps")
  print("the bird is not mooving for the moment")
  
  #do the game
}else if (choice_game == 2){
  print("ciao looser")}



#input avec le nom du joueur 
# subset() pour foutre tout dans un data set



