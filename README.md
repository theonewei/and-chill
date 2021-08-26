# README

# &Chill
***

&Chill is a clone of popular video streaming website Netflix. It provides functionality for creating an account, making profiles, adding movies to My List, searching for movies, and playing movies.

and-chill-app.herokuapp.com

![image](https://user-images.githubusercontent.com/24535630/125956113-12101be4-d2b2-447c-88d1-eeaeab763405.png)

For the backend of this app, persistant data is stored in PostgreSQL. The server and backend logic is handled by Ruby and Rails. The frontend is made using Javascript, React, and Redux.

Since all frontend data is stored in a Redux store, information must either be retrivied again upon refresh. However in order to ensure that only a logged in user is able to access the content, the user had to be bootstrapped to the window so that it would persist upon refresh. A similiar issue arose when adding the functionality to append videos to My List. My List is associated with a particular profile so in order to ensure that a user could continue to add videos to My List, the current profile also had to be bootstrapped to the window.

```
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <% if logged_in? %>
        <script type="text/javascript">
            window.current_user = <%= render(
            "api/users/user.json.jbuilder",
            user: current_user
            ).html_safe %>
        </script>
    <% end %>
    <% if profile_set? %>
        <script type='text/javascript'>
            window.current_profile = <%= render(
                'api/profiles/profile.json.jbuilder',
                profile: current_profile
            ).html_safe %>
        </script>
    <%end%>
</head>
```

Netflix is a aesthetically pleasing site and &Chill is designed to replicate every aspect of Netflix's theme and componenets. The only areas where styling is different is when the styling is based upon a function that &Chill doesn't have such as recommending videos based on viewing history. Even small details such as the timing of animations were styled closely to the original site's.

Faded transition from spotlight video to the video catalog:
![image](https://user-images.githubusercontent.com/24535630/125958868-01716852-f3dc-4380-b23e-f52d279f3b8c.png)


Account dropdown menu:

![image](https://user-images.githubusercontent.com/24535630/125958677-e12da903-df92-49b4-b7c9-87ace3c3cefa.png)

My List page:

![image](https://user-images.githubusercontent.com/24535630/125959342-8c3accbe-2ad9-4edb-9795-dcbea1d782b1.png)



<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

making a difference

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...![image](https://user-images.githubusercontent.com/24535630/125955845-641fb53c-5d38-4008-958e-12be2cdad578.png) -->