[x] Write the code for `#artist_name` and `#artist_name=` so that an `Artist` can be retrieved from, and associated with, a `Song` instance
[x] Write a helper method `#display_artist` in the appropriate `app/helpers` file to be called on in our views. The method's return value should take into consideration whether an artist is already associated with a song:
  [x] If an artist is already associated with the song, return a link to the artist's `show` page
  [x] If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's `edit` page, with a link text of "Add Artist"
[x] Use the helper to display the artist on the `songs#show` and `songs#index` pages

[x] models/spec
[x] artists_helper_spec - i moved this from the last spot
[x] views/songs/show - i moved this from the 4th position (I don't think this order matters)
[x] views/songs/index
[] features/songs_spec
