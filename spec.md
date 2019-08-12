# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    # Game has_many Events
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    #Game belongs_to Company
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    #Game has_many Users, through UserGames
    #Event has_many Users, through UserGames 
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    #User has_many Events, through UserEvents/Event has_many Users, through UserEvents
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    #UserGames has a star_rating attribute.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    #Validations for User, Event, and Game models.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    #Scope method for Events that are online and Events that are in-person
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    #OmniAuth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    #nested Events resources within Games resources
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    #created new Events through the Games show page and passed in the game id
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    #had errors displayed on all form pages for if validations were missed.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
    #used helper methods for various models, including average_rating of games, require_login, and event_host_username
- [x] Views use partials if appropriate
    #used partials for forms