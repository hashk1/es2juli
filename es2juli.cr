
def usage
  puts "USAGE: crystal es2juli.cr -e [input.txt] (Juliamo to Esperanto)"
  puts "       crystal es2juli.cr -j [input.txt] (Esperanto to Juliamo)"
  exit
end

def convert(line, option = nil) 

  es_list = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "R",
    "S",
    "T",
    "U",
    "V",
    "Z",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "r",
    "s",
    "t",
    "u",
    "v",
    "z",
    "\u0108", # Ĉ
    "\u0109", # ĉ
    "\u011c", # Ĝ
    "\u011d", # ĝ
    "\u0124", # Ĥ
    "\u0125", # ĥ
    "\u0134", # Ĵ
    "\u0135", # ĵ
    "\u015c", # Ŝ
    "\u015d", # ŝ
    "\u016c", # Ŭ
    "\u016d", # ŭ
    "!",
    "?",
    "\\"
  ]
    
  juli_list = [
    "\uff21", # Ａ
    "\uff22", # Ｂ
    "\uff23", # Ｃ
    "\uff24", # Ｄ
    "\uff25", # Ｅ
    "\uff26", # Ｆ
    "\uff27", # Ｇ
    "\uff28", # Ｈ
    "\uff29", # Ｉ
    "\uff2a", # Ｊ
    "\uff2b", # Ｋ
    "\uff2c", # Ｌ
    "\uff2d", # Ｍ
    "\uff2e", # Ｎ
    "\uff2f", # Ｏ
    "\uff30", # Ｐ
    "\uff32", # Ｒ
    "\uff33", # Ｓ
    "\uff34", # Ｔ
    "\uff35", # Ｕ
    "\uff36", # Ｖ
    "\uff3a", # Ｚ
    "\uff41", # ａ
    "\uff42", # ｂ
    "\uff43", # ｃ
    "\uff44", # ｄ
    "\uff45", # ｅ
    "\uff46", # ｆ
    "\uff47", # ｇ
    "\uff48", # ｈ
    "\uff49", # ｉ
    "\uff4a", # ｊ
    "\uff4b", # ｋ
    "\uff4c", # ｌ
    "\uff4d", # ｍ
    "\uff4e", # ｎ
    "\uff4f", # ｏ
    "\uff50", # ｐ
    "\uff52", # ｒ
    "\uff53", # ｓ
    "\uff54", # ｔ
    "\uff55", # ｕ
    "\uff56", # ｖ
    "\uff5a", # ｚ
    "\u3322", # ㌢
    "\u334d", # ㍍
    "\u3318", # ㌘
    "\u3314", # ㌔
    "\u3336", # ㌶
    "\u3303", # ㌃
    "\u333b", # ㌻
    "\u330d", # ㌍
    "\u3357", # ㍗
    "\u332b", # ㌫
    "\u3327", # ㌧
    "\u3326", # ㌦
    "\u3349", # ㍉
    "\u3351", # ㍑
    "\u334a"  # ㍊
  ]

  es = es_list.join("")
  juli = juli_list.join("")

  if option == "-e"
    return line.tr(juli, es)
  elsif option == "-j"
    return line.tr(es, juli)
  else
    exit
  end
end

option = ARGV.size > 0 ? ARGV[0] : nil
usage if option != "-e" && option != "-j"

if ARGV.size > 1
  File.open(ARGV[1], "r").each_line do |line|
    puts convert(line, option)
  end
else
  STDIN.each_line do |line|
    puts convert(line, option)
  end
end
