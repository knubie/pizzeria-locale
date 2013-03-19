$ ->
  # Auto set up SRCs for HiRes.js
  $('img').attr 'data-1x', ->
    $(@).attr 'src'
  .attr 'data-2x', ->
    $(@).attr('src').replace('.', '@2x.')

  view =
    menu: [
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
    ]

  $('body').html Mustache.render($('body').html(), view)
