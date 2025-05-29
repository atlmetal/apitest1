## Rubytify.

You are going to create an app that will fetch info from the spotify api and serves over a rails rest API. The app is called: `Rubitify`

### Importer
The importer part of the `Rubytify` has this requirements:

- Register a new app for spotify developer: https://developer.spotify.com/dashboard. After registering the new app make sure to get your client id and secret for API authentication.
- You can find the Spotify web API documentation here: https://developer.spotify.com/documentation/web-api.
- Create a rails app with this models: Artist, Album, Song.
- create a rake task that loads the following artist list from a `yml` file inside your project files and import the specified artists, all of their albums and songs.

```yml
artists:
  - Artic Monkeys
  - Metallica      
  - Nirvana
  - Diomedes Diaz
  - AC/DC
  - 311
  - Calle 13
  - BTS
  - El ultimo de la fila
  - Atercipelados
  - Alci Acosta
  - Green Day
  - Tormenta
  - Chuck Berry
  - Joe Cuba
  - Compay Segundo
  - Buena Vista Social Club
  - Masacre
  - Pantera
  - Ruben Blades
  - Los Hermanos Zuleta
  - Carlos Vives
  - Muse
```
- Fields you need to fetch for artists:
```
  - name
  - image(Any image of the artist)
  - genres(You must record all of them)
  - popularity
  - spotify_url
  - spotify_id
```
- Fields you need to fetch for albums:
```
  - name
  - image(Any image of the album)
  - spotify_url
  - total_tracks
  - spotify_id
```
- Fields you need to fetch for songs:
```
  - name
  - spotify_url
  - preview_url(30 second audio)
  - duration_ms
  - explicit
  - spotify_id
```

### Rubitify API
The API for `Rubitify` has this requirements:

- The API will return json responses. We expect the root of the response to be an object with a `data` attribute. And in that attribute include the response data(an object or an array depending on the case). for example a response for a song list may be something like this: 
```
{
  data: [
    {
      name: "song One",
      spotify_url: "https://api.spotify.com/v1/tracks/0O3xlhTJPTrGevY2FnYUQC",
      preview_url: "https://p.scdn.co/mp3-preview/7a7becf24a93022ae9068ac3cb2e88e61563e268",
      duration_ms: 9870,
      explicit: true
    },
    {
      name: "song Two",
      spotify_url: "https://api.spotify.com/v1/tracks/0O3xlhTJPTrGevY2FnYUQC",
      preview_url: "https://p.scdn.co/mp3-preview/7a7becf24a93022ae9068ac3cb2e88e61563e268",
      duration_ms: 9870,
      explicit: true    
    }
  ]
}
```
- The format specified above is very important for us because we will test your api.
- Make sure you configure cross origin requests https://demisx.github.io/rails-api/2014/02/18/configure-accept-headers-cors.html
- You will develop an api with the following endpoints.
```
- /api/v1/artists
- /api/v1/artists/:id/albums
- /api/v1/albums/:id/songs
- /api/v1/genres/:genre_name/random_song
```
 - The endpoint `/api/v1/artists` should return all artists ordered by their popularity. with the following fields:
 ```
  - id
  - name
  - image
  - genres
  - popularity
  - spotify_url
 ```
 
 - The endpoint `/api/v1/artists/:id/albums` should return all albums for an artist with the following fields:
 ```
  - id
  - name
  - image
  - spotify_url
  - total_tracks
 ```
 
 - The endpoint `/api/v1/albums/:id/songs` should return all songs for an album with the following fields:
 ```
  - name
  - spotify_url
  - preview_url
  - duration_ms
  - explicit
 ```
 
  - The endpoint `/api/v1/genres/:genre_name/random_song` should return a random song that matches the specified genre. The response should contain the following fields:
 ```
  - name
  - spotify_url
  - preview_url
  - duration_ms
  - explicit
 ```
 
 ## What you should know we expect:
 - You should fork this repository https://github.com/AyendaRooms/test and create a pull request against the same repo.
 - We expect you to deploy this app somewhere we can see it live(Like Heroku).
 - We expect you to structure your app in a way that makes sense and it's easy to understand.
 - We expect you to write specs with `rspec` for your app(Probably not for every single line but make sure you cover critical paths).
 - The 2 outputs we expect from this test are a base url for the working API and a pull request create in the repository we specified above.