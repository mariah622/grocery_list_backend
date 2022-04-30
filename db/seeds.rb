# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fruit = Category.create(name: 'fruit')
vegetables = Category.create(name: 'vegetables')
dairy = Category.create(name: 'dairy')
beverage = Category.create(name: 'beverage')

Item.create([
    {name: 'Banana', price: 1.00, color: 'yellow', description: 'Look for greenish banana so they do not get ripe too fast.', category: fruit},
    {name: 'Apple', price: 0.50, color: 'red', description: 'Look for shiny red apples.', category: fruit},
    {name: 'Watermelon', price: 5.99, color: 'green', description: 'Look for the biggest one.', category: fruit},
    {name: 'Asparagus', price: 3.99, color: 'green', description: 'Look for thick ones.', category: vegetables},
    {name: 'Lettuce', price: 0.99, color: 'green', description: 'Look for nice sized bunch.', category: vegetables},
    {name: 'Potato Sack', price: 4.99, color: 'brown', description: 'No rotten potatoes.', category: vegetables},
    {name: 'Ice Cream', price: 5.99, color: 'white', description: 'Häagen-Dazs.', category: dairy},
    {name: 'Pepsi', price: 2.99, color: 'black', description: '2 liter.', category: beverage}



])
