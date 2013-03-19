$ ->
  # Auto set up SRCs for HiRes.js
  $('img').attr 'data-1x', ->
    $(@).attr 'src'
  .attr 'data-2x', ->
    $(@).attr('src').replace('.', '@2x.')

  view =
    menu: [
      {
        banner: "neapolitan classics"
        description: "Pizza known for being topped with just the right amount of each ingredient, with a base of only tomato sauce, only mozzarella, or both."
        items: [
          {
            name: "Margherita"
            ingredients: 'tomatoes / mozzarella / basil'
          }
          {
            name: "maiale"
            ingredients: 'tomatoes / mozzarella / parmigiano / reggiano / prosciutto crudo / arugula'
          }
          {
            name: "marinara"
            ingredients: 'tomatoes / garlic / oregano'
          }
          {
            name: "bianca"
            ingredients: 'mozzarella / pecorino / garlic / spigarello / sausage'
          }
          {
            name: "mais"
            ingredients: 'mozzarella / sweet corn / creme fraiche / prosciutto cotto'
          }
          {
            name: "campagnola"
            ingredients: 'tomatoes / anchovies / capers / olives / garlic'
          }
        ]
      }
      {
        banner: 'american classics'
        description: 'These flavorful pizzas are the topping combinations that are familiar to most, on a base of both tomato sauce and mozzarella.'
        items: [
          {
            name: 'cheese'
            ingredients: 'tomato sauce / mozzarella'
          }
          {
            name: 'pepperoni'
            ingredients: 'tomato sauce / mozzarella / pepperoni sausage'
          }
          {
            name: 'veggie'
            ingredients: 'tomato sauce / mozzarella / mushroom / red onion / tomato / green pepper / olive'
          }
          {
            name: 'supreme'
            ingredients: 'tomato sauce / pepperoni / sausage / mushroom / red onion / green pepper'
          }
        ]
      }
    ]

  # Remove the HTML from the body,
  # parse it through Mustache with our 'view' object,
  # and reinsert it
  $('body').html Mustache.render($('body').html(), view)
