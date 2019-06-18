# Step 1 - Integrate basic theme to asset pipeline
local host: http://0.0.0.0:3000

/ - and see a stubbed out, non-dynamic, page with the theme
  # Routes - so under config/routes.rb, we set the home route to route 'site#index'
  # Controller - we now have to generate a controller called site and have an index action

# Step 2 - Allow user to CRUD Lists
  @ List Controller 
    # Index
  - Need a Model
  - Need a Controller
    ~ This is a Recourse 
      rails generate resource
        * We want to change our routes to be Index(Controller) and Index(Action)
          * 'rails destroy controller site' to delete the site controller we made
  - Load data onto views/index
      * Model is the chef
      * Controller is the waiter 
      
      # Always good to check the generated Resource in order. Check for the Controller, the Model, and then 'rails c' to go into the console, and see if you can successfully create an object
I want user to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate many lists and see each lists item
  * Lists model
    @ has many items
  * Items model 
    @ belongs to a list