
#Standalone Module:

# module Shout
  
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  # 	words + "!" + ":)"
  # end
#end

# p Shout.yell_angrily("Argh")
# p Shout.yelling_happily("Weee")


#Mixin Module:

module Shout

 def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!" + ":)"
  end

end

class Twist
	include Shout
end

class Detergent
	include Shout
end

twist = Twist.new
p twist.yelling_happily("Well, shake it up baby, now! Twist and shout")
p twist.yell_angrily("I wish this song would never end")

detergent = Detergent.new
p detergent.yelling_happily("This wine is great")
p detergent.yell_angrily("This wine stain will never come out")




# p Shout.yell_angrily("Argh")
# p Shout.yelling_happily("Weee")
