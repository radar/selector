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

To learn how it works, go read [the writeup in my guides repository](https://github.com/radar/guides/tree/master/dependent-select-box.md).