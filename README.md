## Info

I'm not dutch so I cannot verify the correctness of the labels :)

Models are created using json_to_dart web utility, then I modified the source removing a lot of
unnecessary fields.

Instead of hardcoding an id for showing an apartment (that could not be available when reviewing the
app), I decided to show the first page of all available apartments in Amsterdam, with the
possibility to click on each one and see the details.

## Packages used

* http for network requests
* url_launcher for making calls and open external urls like google maps (see below)
* get_it as service locator
* flutter_html for render some fields that arrive in html format (like "waarde")

I didn't added a video package for playing videos. I prefer to leave the app as simple as I can. 