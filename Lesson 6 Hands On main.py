#Create a class named Stadium
class Stadium:
    # 2. The docstring for the `Dog` class
    """The summary docstring for the Stadium class. This class represents a Stadium."""

    # 3. The initializer of the class, where the class properties are initialized
    def __init__(self, name, city_state, capacity):
        """Initializer"""
        self.name = name    #: The `name` property represents the Stadium's name
        self.city_state = city_state      #: The `age` property represents the Stadium's state
        self.capacity = capacity    #: The `name` property represents the dog's name
    """Describe the Stadium"""
    def describe_stadium(self):
        print("The" + self.name + "is located" + self.city_state + "and holds" + self.capacity + "fans.")
    def sport_played (self,sport):
        print("The following sport is played"+sport)
    def seats_available(self,seats):
        print("There are"+seats+"available")
stadium1=Stadium("Mercedes Benz Arena","Atlanta","70,000")
stadium1.describe_stadium()
stadium1.sport_played("football")
stadium1.seats_available("15,000")

#Use the init method to include the following three properties: stadium1.describe_stadium()
#name
#city_state
#capacity
#Hint! What is the property that is included in every method? Don't forget that one! self
#Initialize each property/attribute within the init method
#Include a docString for the class and method
#Create another method within the Stadium class named describe_stadium
#The describe_stadium method should utilize each method from the Stadium class which will then print a description of the arena (see step 10 for an example of a description)
#Create a new instance of the Stadium class named stadium1
#The stadium1 instance should provide values for each of the three properties of the Stadium class
#Finally, stadium1 should call the describe_stadium method.
#The output should be similar to the following:

#the Mercedes Benz Arena is located in Atlanta, GA and holds 70,000 fans.
#Part II
#Add two more methods to the Stadium class:
#sport_played - This method should accept one argument that specifies the sport that is played
#seats_available - This method should accept one argument that specifies how many seats are available
#Each of the above method should print out a sentence using the argument provided (see step 4 for output)
#Using the stadium1 instance, call each of the new methods, providing the relevant arguments. As an example, if the following code to use the class were added:
#After running this program in your terminal, the output should be similar to the following:
#The Mercedes Benz Arena is in Atlanta, GA and holds 70000 fans.
#The following sport is mainly played in this stadium: Football
#There are 15000 seats still available for tonight's game.
