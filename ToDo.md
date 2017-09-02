<!-- Write the code to get (artist_name) and set (artist_name=) the Artist associated with a given Song model. -->
Write a helper method to display the artist for a song, with the following considerations:
  Put the method in the appropriate helper file following the principle of Separation of Concerns
  Name the method display_artist
  If the artist name is not nil, return a link to the artist's show page
  If the artist name is nil, return a link to the song's edit page, with a link text of "Add Artist"
Use the helper to display the artist on the songs#show and songs#index pages.
