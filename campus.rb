class Pokemon
	attr_accessor :name, :hp, :attack

	def initialize(name,hp,attack)
		@name = name
		@hp = hp
		@attack = attack
	end
end

Pika = Pokemon.new("ピカチュウ",30,13)
Zeni = Pokemon.new("ゼニガメ",50,6)

puts "*************************","戦闘開始","*************************"


1.upto(5) do |i|

	puts "-----","第#{i}戦","-----"

	puts "ピカチュウの残りのHP:#{Pika.hp}"

	Zeni.hp = Zeni.hp - Pika.attack
	puts "ゼニガメの残りのHP:#{Zeni.hp}"

	if Zeni.hp < 0
		sleep 2
		puts "*************************","決着!","*************************","ゼニガメ瀕死!ピカチュウの勝利！" 
		break #=> uptoを抜ける
	end

	sleep 1 #=> 1秒待つ

end




