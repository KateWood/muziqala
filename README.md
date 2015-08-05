[![Build Status](https://travis-ci.org/KateWood/muziqala.svg?branch=master)](https://travis-ci.org/KateWood/muziqala)

# muziqala

Muziqala is an app that allows users to link their accounts for other streaming services and listen to all of their music in one place.

Users can search for music from any of the services they have linked to their account and make playlists of their favorite music, without worrying about which services provide which songs.

#### Technologies Used

* Ruby 2.1.5

* Rails 4.2.1

* PostgreSQL Database

* Bootstrap-SASS ~> 3.3.5

* Testing: RSpec, FactoryGirl, Capybara, Travis CI

#### Build Your Meaning Profile

So, how does Applied Meaning work? I'm glad you asked.

Each user creates meaning categories - areas in their life that bring them meaning and happiness. Some examples are family, friends, career, health, and hobbies.

Once a user has signed up on the Applied Meaning website, they can start building their meaning profile by clicking this button:
<br>
![New Meaning Category Button](/app/assets/images/newcatbtn.png)

The New Meaning Category form will appear in a modal.
<br>
![New Meaning Category Form](/app/assets/images/newcatform.png)
<br>
The user enters the category name, importance (how important is this?), and meaning esteem (do you feel like you put in enough effort relative to how important this is?).

![Empty Meaning Category](/app/assets/images/catnosubs.png)
Now that you have a meaning category set up, it's time to add sub categories. Just click the plus button:
<br>
![New Sub Category Button](/app/assets/images/newsubbtn.png)

The New Sub Category form will appear in a modal.
<br>
![New Sub Category Form](/app/assets/images/newsubform.png)
<br>
The user enters the sub category name, importance, and meaning esteem. 

![Meaning Category with Sub Categories](/app/assets/images/catnobehav.png)
Once all of the user's sub categories are added, it's time to add behaviors to each sub category by clicking this button:
<br>
![New Behavior Button](/app/assets/images/newbehavbtn.png)

The New Behavior form will appear in a modal.
<br>
![New Behavior Form](/app/assets/images/newbehavform.png)
<br>
The user enters the behavior description and impact (how much will this behavior increase your meaning esteem for this category?).

Now you have a Meaning Category!
![Complete Meaning Category](/app/assets/images/complete.png)

Complete this process for each important area of your life, and that will be your complete Meaning Profile.






