#csvファイルに書き込む
require 'csv'

puts '1(新規でメモを作成) 2(既存のメモ編集する)'
new_add = gets.chomp.to_i


puts "拡張子を除いたファイル名を入力してください"
file_name = gets.chomp.to_s
puts "メモしたい内容を記述してください"
puts "完了したらCtrl+Dを押します"

#memo_type = readlines(chomp: true)


memo_type = readlines.map &:chomp

if new_add == 1
  new_file_name =file_name
  new_memo_type = memo_type

  CSV.open("#{new_file_name}.csv", 'w') do|csv|
    csv << new_memo_type
  end

elsif new_add == 2

  add_file_name = file_name
  add_memo_type = memo_type
 CSV.open("#{add_file_name}.csv", "a") do |csv|
   csv << add_memo_type
 end
else
  puts "無効な処理です"

end
