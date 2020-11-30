vagitables = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

puts "いらっしゃいませ！商品を選んで下さい。"
vagitables.each.with_index(1) do |vagitable, i|
  puts "#{i}.#{vagitable[:name]}(#{vagitable[:price]}円)"
end

print "商品番号を選択 >"
select_vagitable_num = gets.to_i

chosen_vagitable = vagitables[select_vagitable_num - 1]

puts "#{chosen_vagitable[:name]}ですね。何個買いますか？"
print "個数を入力 >"
quanity = gets.to_i

total_price = chosen_vagitable[:price] * quanity
if quanity >= 5
  puts "5個以上なので10%割引となります!"
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"
puts "お買い上げありがとうございました。"

