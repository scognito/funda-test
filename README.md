## Info

I'm not dutch so I cannot verify the correctness of the labels :)

JSON models are created using json_to_dart web utility: many values were automatically set nullable
so
I used the ! / ? / ?? operators quite ofter. Usually I ask the backend team for which ones are
mandatory.

## Packages used

I've used the minimum number of packages for the purpose

* http for network requests
* url_launcher for making calls and open external urls like google maps or make a phone call
* provider for simple state management
* get_it as service locator for dependency injection
* flutter_html for render some fields that arrive in html format (like "waarde")

I didn't added a video package for playing videos. I prefer to leave the app as simple as I can.

## Notes

I didn't use any routing or i18n package since the test app is basic

## Tests

Integration test are in the integration_test directory