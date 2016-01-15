## Objectives

1. Write Helpers
2. Use helpers in their views

## Outline

Use the [solution from this previous lab as the "starter code"](https://github.com/learn-co-curriculum/displaying-associations-rails-lab/tree/solution).

  * Pretty much it's a playlist app. Artists have many Songs. 
  * To make the starter code work, can you add in the ability to write in the artist name in the Song form. Then `find_or_create_by`. If it's empty put it under a Artist called "Unknown". Also ad din the artist name to the `show` 
  * Sometimes when you create Songs you don't know the Artist name. So you leave it blank
  * We want to display something better then just Unknown. Want to encourage better artist names
  * So we will display artist name if it's there, if not (it's unknwon) then we display a link to the edit page for that artist. If the artist is blank (returns `nil`) then we return a link to edit the song
  * Have them write that as a partial
  * Use it in the show and the index of Song
