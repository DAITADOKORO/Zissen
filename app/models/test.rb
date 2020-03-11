class Test < ApplicationRecord

その他

 def name=(name) #セッター。インスタンス変数を代入するためのメソッドname=のこと。
  @name = name
 end

 def name #ゲッター。インスタンス変数の内容を参照するためのメソッド。
  @name
 end

 attr_accessor :name, :address #ゲッターとセッターをこれ一文で実現できる
 attr_reader :name #ゲッターのみ
 attr_writer :name #セッターのみ
  test = Test.new
  test.name = '山田'
  => '山田' #といった具合に保存できるように。

  attr_reader :name, :address
  def initialize(name, address)
#rubyのオブジェクトをnewメソッドで生成するとき実行されるinitializeメソッドの中身。
    @name = name
    @address = address
  end


"#{name}" #text中などに引っ張って来たデータを反映させるために。
          #シングルクォーテーションだとそのまま文字列が返ってくるためNG

  return if !value #valueがnilかfalseなら以降の処理をしない
  return if value.nil? #nil単品版


条件文

unless age > 20 #忘れがちなunlessさん。elseはあるけどelsifはない。

puts 'hello' if true #後置きif。trueかfalse。１行分の処理のみに使う。



配列

a = [1,2,3]

a.each do |element|
  puts element
end

for element in a
  puts element
end
# 上記の二つは同じ

a << 4 #配列に要素を追加する

ハッシュ

options = { tokyo: 1, kanagawa: 2 }
puts options[:tokyo]
options[:niigata] = 3 #ハッシュに追加

options.each do |key, value|
  puts key
  puts value
end
# キーと値をeach文で回して取得できる

# 数字がキー { 11 => 1 }
# 文字列がキー { "tokyo" => 1 }
# ハッシュロケットの代わりにコロン　{"tokyo" : 1 }
# シンボルがキー { :tokyo => 1 }
# ハッシュロケットの代わりにコロン　{ tokyo: 1 } 一番メジャー

end
