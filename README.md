# Dependent select box example

This application is an example application showing how easy it is to update a select box based on the selection in another. In this example, a "State" select box is automatically updated when the "Country" is selected. To see this for yourself, see the example app on Heroku:

## http://radar-selector.herokuapp.com

```
git clone git@github.com:radar/selector.git
cd selector
rake db:create db:migrate db:seed
rails s
```

Then go to http://localhost:3000 and then click "New Address". Toggle between the countries to see the states change automatically.

## How it works

This application only allows for CRUD operations on addresses. Here's the models and their relationships with each other:

**app/models/address.rb**

```ruby
class Address < ActiveRecord::Base
  belongs_to :country
  belongs_to :state 
end
```
**app/models/country.rb**

```ruby
class Country < ActiveRecord::Base
  has_many :states
end
```

**app/models/state.rb**

```
class State < ActiveRecord::Base
  belongs_to :country
end
```

When we go to create a new address, we'll see this page:

![New address page](/doc/new-address.png)

