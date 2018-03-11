hp = rand(10..15) #スライムのHP
myhp = 15 #自分のHP
enemy_strength = hp #敵の強さ
name = "yoshito"


puts <<~HEREDOC

スライムがあらわれた

スライムのHPは#{hp}だ

HEREDOC



while true
  puts <<~HEREDOC
  1:攻撃
  2:逃げる

  HEREDOC

  print "コマンドを入力："
  command = gets.to_i
  puts ""

  if command == 1

    puts "#{name}の攻撃"
    num = rand(4)

    if num == 0
      puts "会心の一撃！！！"
      damage = rand(10..15)
    else
      damage = rand(5..9)
    end

    puts "#{name}は#{damage}のダメージを与えた"
    hp -= damage
    puts ""

    if hp > 0
      puts "スライムのHPは#{hp}だ"
    else
      puts "スライムのHPは0だ"
    end

    if hp > 8
      puts "スライムはピンピンしている"
    elsif hp > 5
      puts "スライムはまだまだ元気だ"
    elsif hp > 3
      puts "スライムは弱っている"
    elsif hp > 0
      puts "スライムは瀕死だ"
    else
      sleep(2)
      puts "スライムは死んだ"

      exp = enemy_strength * 2
      gold = enemy_strength * 100
      puts "#{name}は#{exp}の経験値と#{gold}ゴールドを獲得した"
      exit
    end

      puts ""
      puts "スライムの攻撃"
      damage = rand(6..9)
      myhp = myhp - damage
      puts "#{name}は#{damage}のダメージを受けた"
      puts ""

    if myhp <= 0
      puts "#{name}は死んだ"
      exit
    else
      puts "#{name}のHPは#{myhp}だ"
    end
    puts ""
  elsif command == 2

    puts "#{name}は逃げ出した"
    exit
  else
    puts "そんなコマンドはありません"
  end
end



=begin

以下の処理を行うプログラムを書いてください

・hpを10で定義
・スライムがあらわれた
・スライムのHPは〜だ：hpを事前に定義しておく
変数展開は #{} で書く

・主人公の名前を定義する
・damageの変数を定義する
・gets.to_iでdamageに値を入力できるようにする
・スライムに〜のダメージを与えた



スライムの残りHP
8よりも上:スライムはピンピンしている
5よりも上:スライムはまだまだ元気だ
3よりも上:スライムは弱っている
0よりも上:スライムは瀕死だ
それ以外:スライムは死んだ
=end