########################################
########　趣味がサッカーの人を見つける！
########################################

class User   #ユーザークラス

  attr_accessor :name,:old,:hobby

  def initialize(name:,old:,hobby:)
    self.name = name
    self.old = old
    self.hobby = hobby
  end

  def self.info(users)    #ユーザーの個人情報メソッド
    text = %("個人情報"\n)
    users.each.with_index(1) do |user,i|
      text +="#{i}.#{user.name}は#{user.old}歳で、趣味は#{user.hobby}です。\n"
    end
    text
  end

end

class Discov  #趣味発見クラス

  def self.discover(users, discover_word)  #趣味発見メソッド
    text = ""
    users.each do |user|
      text += "\n趣味が#{discover_word}の方を発見しました。それは#{user.name}です。" if user.hobby.include?(discover_word)
    end
    text
  end

end

###########################################
###########　インスタンス変数へ値をセット！
###########################################

user1 = User.new(name:"太郎",old:32,hobby:"フットサル")
user2 = User.new(name:"次郎",old:24,hobby:"サッカー")
user3 = User.new(name:"花子",old:27,hobby:"生け花")

users = [user1,user2,user3]
discover_word = "サッカー"

###########################################
############ メインコード
###########################################

puts User.info(users)
puts Discov.discover(users,discover_word)

__END__
