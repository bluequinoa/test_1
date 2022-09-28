#parameters:
lat <- runif(1,min = 0, max = 10)
lon <- runif(1,min = 0, max = 10)
lat <- round(lat,0)
lon <- round(lon,0)
choice_game <- ""
choice_lat <- ""
choice_lon <- ""
score <- 0

#sinon dicitonnaire de plusieurs capitales avec les lat/lon à prendre random
#recuperer les lat/lon du dictionnaire avec les index
#garder le nom de la capitale dans une variable (utile?)


#function guess lat
function_guess_lat <- function(lat,choice_lat,score)
  while(choice_lat!=lat){
    choice_lat <- readline(prompt = "guess lat : ")
    if(choice_lat == lat){
      print("well done! ")
      print("now guess lon")
    print(paste("for now your score is ",score))
    }else if (choice_lat > lat){
      print("less")
      score <- score + 1
    }else{
      print("more")
      score <- score + 1
    }
  }


#function guess lon
function_guess_lon <- function(lon,choice_lon,score)
while(choice_lon!=lon){
  choice_lon <- readline(prompt = "guess lon : ")
  if(choice_lon == lon){
    print(paste("your total score is ",score))
    print("well done! ")
  }else if (choice_lon > lon){
    print("less")
    score <- score + 1
  }else{
    print("more")
    score <- score + 1
  }
}



#start the game
player_name <- readline(prompt = "what is your name ?")
cat("1 - start playing\n2 - quit")
choice_game <- readline(prompt = "what is your choice ?")
if(choice_game == 1){
  print(paste("here we go! ",player_name))
  print("In this game, your goal is to guess the lat/lon of a bird equiped with a gps")
  print("the bird is not mooving for the moment")
  function_guess_lat(lat,choice_lat,score)
  function_guess_lon(lon,choice_lon,score)
}else if(choice_game == 2){
  print(paste("ciao ",player_name," le gros noob"))
}

#store the score
storage_score <- c(name=player_name,score=score)
print(storage_score)
