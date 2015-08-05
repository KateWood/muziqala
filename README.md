[![Build Status](https://travis-ci.org/KateWood/muziqala.svg?branch=master)](https://travis-ci.org/KateWood/muziqala)

# muziqala

Muziqala is an app that allows users to link their accounts for other streaming services and listen to all of their music in one place.

Users can search for music from any of the services they have linked to their account and make playlists of their favorite music, without worrying about which services provide which songs.

#### Technologies Used

* Ruby 2.1.5

* Rails 4.2.1

* PostgreSQL Database

* Bootstrap-SASS ~> 3.3.4

* Testing: RSpec, FactoryGirl, Capybara, Travis CI

#### Getting Started

If you fork this repo, you must run `bundle install` and `rake db:migrate` in order for the app to function properly.

Muziqala uses Spotify authentication, so set up your own version of the app on Facebook to obtain your own App ID and Secret Key.

#### Connect with Spotify

Welcome to Muziqala!
<br>
![Muziqala Landing Page](/app/assets/images/muziqalalanding.png)

Before enjoying all that Muziqala has to offer, you must authenticate with Spotify.
<br>
![Connect to Spotify Button](/app/assets/images/connectbutton.png)

Now that you're signed in, it's time to search for your favorite music. Just choose a category from the drop down and type in what you want to find:
<br>
![Search](/app/assets/images/search.png)

Your search results will appear on a new page.
<br>
![Search Results](/app/assets/images/searchresults.png)

If you want to add a track to the community playlist, just click this button:
<br>
![Add to Playlist Button](/app/assets/images/addtoplaylist.png)

The New Behavior form will appear in a modal.
<br>
![New Behavior Form](/app/assets/images/newbehavform.png)
<br>
The user enters the behavior description and impact (how much will this behavior increase your meaning esteem for this category?).

Now you have a Meaning Category!
![Complete Meaning Category](/app/assets/images/complete.png)

Complete this process for each important area of your life, and that will be your complete Meaning Profile.






