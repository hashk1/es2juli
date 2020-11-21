# The MIT License (MIT)
#
# Copyright (c) 2020 hashk1
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# ユリアーモフォント (Juliamo Font)
# http://sukerasparo.com/amrilato/sp004/font.html
# http://uw1.gyutto.jp/sozai/kotonoha_juliamofont.zip
# This font can only be used for personal purposes.
# Commercial purposes and redistribution are prohibited.

def usage
  puts "USAGE: crystal es2juli.cr -e [input.txt] (Juliamo to Esperanto)"
  puts "       crystal es2juli.cr -j [input.txt] (Esperanto to Juliamo)"
  exit
end

def convert(line, option = nil) 
  es = "ABCDEFGHIJKLMNOPRSTUVZabcdefghijklmnoprstuvz\u0108\u0109\u011C\u011D\u0124\u0125\u0134\u0135\u015C\u015D\u016C\u016D!?\\"
  juli = "\uFF21\uFF22\uFF23\uFF24\uFF25\uFF26\uFF27\uFF28\uFF29\uFF2A\uFF2B\uFF2C\uFF2D\uFF2E\uFF2F\uFF30\uFF32\uFF33\uFF34\uFF35\uFF36\uFF3A\uFF41\uFF42\uFF43\uFF44\uFF45\uFF46\uFF47\uFF48\uFF49\uFF4A\uFF4B\uFF4C\uFF4D\uFF4E\uFF4F\uFF50\uFF52\uFF53\uFF54\uFF55\uFF56\uFF5A\u3322\u334D\u3318\u3314\u3336\u3303\u333B\u330D\u3357\u332B\u3327\u3326\u3349\u3351\u334A"

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
