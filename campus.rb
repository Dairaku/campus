class Pokemon
	attr_accessor :name, :hp, :attack

	def initialize(name,hp,attack)
		@name = name
		@hp = hp
		@attack = attack
	end
end

Pika = Pokemon.new("ピカチュウ",30,5)
Zeni = Pokemon.new("ゼニガメ",50,8)

puts "*************************","戦闘開始","*************************"

	if Pika.attack > Zeni.attack then

		1.upto(5) do |i|
			puts "-----","第#{i}戦","-----"

			Zeni.hp = Zeni.hp - Pika.attack

			puts "ピカチュウの残りのHP:#{Pika.hp}"
			puts "ゼニガメの残りのHP:#{Zeni.hp}"

			if Zeni.hp < 0
				sleep 2
				puts "*************************","決着!","*************************","ゼニガメ瀕死!ピカチュウの勝利！" 
				break #=> uptoを抜ける
			end
			sleep 1 #=> 1秒待つ
		end

	else
		1.upto(5) do |i|
			puts "-----","第#{i}戦","-----"

			Pika.hp = Pika.hp - Zeni.attack
			puts "ピカチュウの残りのHP:#{Pika.hp}"
			puts "ゼニガメの残りのHP:#{Zeni.hp}"

			if Pika.hp < 0
				sleep 2
				puts "*************************","決着!","*************************","ピカチュウ瀕死!ゼニガメの勝利！" 
				break #=> uptoを抜ける
			end
			sleep 1 #=> 1秒待つ
		end
	end




