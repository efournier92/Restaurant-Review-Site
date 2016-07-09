#Restaurant Review Site
This is a practice application I made while I was a student at Launch Adacemy in Boston. I built it to practice developing database schema and building a full Rails app as efficiently as possible. The whole site took only a couple hours. The assignment was to Create a Rails application that allows users to view restaurants and corresponding reviews about each one made by anonymous site visitors.

###Setup Instructions
```no-highlight
$ cd restaurant-reviews
$ bundle
$ rake
```

##Models
* Restaurant
  * name
  * address
  * city
  * state
  * zip code
  * description (optional)
* Review
  * restaurant ID
  * rating (1-5)
  * review_body
  * timestamp

*All features are backed by RSpec/Capybara tests, located in the `spec` folder.*
##Features
* Visiting the root path displays a list of all restaurants
* Visiting the `/restaurants` path displays a list of restaurants
* Visiting the `/restaurants/new` path displays a form for creating a new restaurant
* Visiting the `/restaurants/10` path displays the restaurant details for a restaurant with the ID of 10
* User sees the newly created restaurant after filling out form correctly
* User sees error message if form is filled out incorrectly
* Visiting the `/restaurants/10/reviews/new` should display a form for creating a new review for a restaurant with ID = 10
* Visiting the `/restaurants/10` path should also include all reviews for a restaurant with ID = 10
* Clicking categories path in header displays the name of all categories.
* All categories have an associated show page, accessible via categories index
* Restaurant show page displays category
* Category is set via the new restaurant form

