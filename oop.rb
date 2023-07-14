# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :color, :name

    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say(unicorn_name)
        @name = "*~* teehee #{unicorn_name} teehee *~*"
    end
end

unicorn1 = Unicorn.new("Bjorn")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :thirsty, :pet

    def initialize(name, thirsty = true, pet = "Bat")
        @name = name
        @thirsty = thirsty
        @pet = pet
    end

    def change_pet(favorite_pet)
        @pet = favorite_pet
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Dominic")
vampire1.change_pet("mouse")
vampire1.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :is_hungry

    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
    end

    def eat(meals)
        @is_hungry = meals
        if meals > 3
            puts "#{name} is no longer hungry."
        else
         puts "#{name} is hungry."
        end
    end
end

meals = 6

dragon1 = Dragon.new("Berthoud", "Charlie", "Opalescent")
dragon1.eat(meals)

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age, :has_ring

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        if age >32 
            @is_adult = true
        else
            @is_adult = false
        end
        if age >100 
            @is_old = true
        else
            @is_old = false
        end
        if name == "Frodo"
            @has_ring = true
        else
            @has_ring = false
        end
    end

    def celebrate_birthday
       puts age + 1
    end
end
year = age + 1

hobbit1 = Hobbit.new("Sam", "happy")
hobbit2 = Hobbit.new("Frodo","sad")
hobbit3 = Hobbit.new("Gumby", "flat", 34)
hobbit3.celebrate_birthday