#The menu board at Chipotle Reads: 
menu = {
	style: ["burrito", "bowl", "crispy corn tacos", "soft corn tacos", "soft flour tacos", "salad"],
	meat: ["steak", "carnitas", "chicken", "barbacoa", "sofritas"],
	rice_bean_veg: ["cilantro-lime brown rice", "cilantro-lime white rice", "black beans", "pinto beans", "fajita veggies"],
	toppings: ["sour cream", "guacamole", "cheese", "romaine lettuce", "roasted chili-corn salsa", "tomatillo green-chilli salsa (medium hot)", "tomatillo red-chilli salsa (hot)", "fresh tomato salsa (mild)"]
}

#This line should not be changed, it is the starting hash for your order! 
my_order = {}


####### INSTRUCTIONS: ###########
	#Use methods to add create your order, you can only call items from the main hash to them to the my_order hash- You should not be writing any strings unless you do the bonus. 

	#By end it should look something like: 
		#my_order = { style: "burrito", meat: "chicken", rice_bean_veg: ["cilantro-lime brown rice", "black beans"], toppings: ["guacamole", "cheese", "romaine lettuce"]}


#########  LETS GO!  ##########

#STEP ONE:
	#you are in line at chipotle and what to know what different styles they have
	#Display all the options available for style 
puts "The styles are:" 
puts menu[:style]



#STEP TWO:
	#Using the empty my_order hash, 
	#Chose your style from the available options and add a new key value pair to that hash
puts ''
puts 'What style do you want?'	
style = gets.chomp
until menu[:style].include? style.downcase
	puts "Sorry, that is not a style option, please order again."
	puts "What style do you want?"
	style = gets.chomp

end	
my_order[:style] = style.downcase

puts ''
#STEP THREE:
	#Chose what meat you want & add it to your my_order hash
puts menu[:meat]	
puts "What meat do you want?"
meat = gets.chomp
until menu[:meat].include? meat.downcase
	puts "Sorry, that is not a style option, please order again."
	puts "What style do you want?"
	meat = gets.chomp
end	
my_order[:meat] = meat
puts "This is going to be a flamo " + my_order[:meat] + ' ' + my_order[:style]
#STEP FOUR:
	#Chose what rice, bean or veggies you want and it as a new key value pair to my_order. 
		#HINT: You may want to chose more than one option, how will you store multiples in your order?
puts '' 		
puts "The rice, beans, and veggies are"  
puts menu[:rice_bean_veg]

puts "Do you want any rice, beans, or veggies?" 
rbv = gets.chomp
if rbv.downcase == "yes"
	puts "Do you want rice?"
	riceyesno = gets.chomp
	if riceyesno.downcase == "yes"
		puts "Which rice do you want, white or brown?"
		rice = gets.chomp
		if rice.downcase == "white"
			my_order[:rice_bean_veg] = "cilantro-lime white rice"
		elsif rice.downcase == "brown"
			my_order[:rice_bean_veg] = "cilantro-lime brown rice"
		else puts "Sorry, we don't have that rice here."	
		end
	else puts "Ok, let\'s move on."
	end	
	puts "Do you want beans?"
	beansyesno = gets.chomp
	if beansyesno.downcase == "yes"
		puts "Which beans do you want, black beans or pinto beans?"
		beans = gets.chomp
		if beans.downcase == "black beans"
			my_order[:rice_bean_veg] << "black beans"
		elsif beans.downcase == "pinto beans"
			my_order[:rice_bean_veg] << "pinto beans"
		else puts "Sorry, we don\'t have those beans here."
		end
	else puts "Next we have veggies."
	end
	puts "Do you want fajita veggies?"
	veg = gets.chomp
	if veg.downcase == "yes"
		my_order[:rice_bean_veg] << "fajita veggies"
	else puts 'veggies aren\'t that good anyways.'
	end
else puts "Okay, the toppings server will be with you shortly."
	puts ''
	puts ''
	puts''
end			
				
						
					
#STEP FIVE
	#Check to see if your favorite topping is included in the available options


#STEP SIX
	#Chose at least 3 toppings to add to your order

#STEP SEVEN
	#Oops! You didn't want one of those toppings! How do you remove the second one you put in there?


#STEP EIGHT
	#Print your hash and see if your order was made correctly! Bon Appetit! 





#### BONUS 1 #######
	#Display your order in a sentence
		#This will be challenging when it comes to working with your multiple choices for toppings

	#Example: "Can I please have a burrito. For meat, I would like chicken with cilantro-lime white rice and black beans. Then I would like sour cream, cheese and roasted-corn salsa as my toppings. Thank you!"



#### BONUS 2 #####
	#Make this into a command line application that allows the user to input their order 


#### BONUS 3 ######
	#Experiment with more ways of nesting data structures by having my_order contain both the main, sides, a drink and dessert. How would you restructure my_order to accomodate for that? 


	