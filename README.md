# es2juli

## What's this?
This is a Esperanto-Juliamo characters converter.  
To use Juliamo characters, downloading Juliamo font from official site is needed.  
This source code is written in [crystal](https://crystal-lang.org). 

## Juliamo font
Download and install the Juliamo font from [official download site](http://sukerasparo.com/amrilato/sp004/font.html).  
Unfortunately, this site is supported only Japanese.  
Please see the official site for detail.  

Be careful. This font can only be used for personal purposes.  
Commercial purposes and redistribution are prohibited.

## Usage
1. Install crystal, see [install page](https://crystal-lang.org/install/) for detail.

1. convert input text: 
```
# Juliamo to Esperanto
crystal es2juli.cr -e [input.txt] 
# or 
cat [input.txt] | crystal es2juli.cr -e

# Esperanto to Juliamo
crystal es2juli.cr -j [input.txt] 
# or 
cat [input.txt] | crystal es2juli.cr -j
```

If you want to build the code: `crystal build es2juli.cr`, then 
```
# Juliamo to Esperanto
./es2juli -e [input.txt] 
# or 
cat [input.txt] | ./es2juli -e

# Esperanto to Juliamo
./es2juli -j [input.txt] 
# or 
cat [input.txt] | ./es2juli -j
```

Of cause this code works on ruby: `cp es2juli.cr es2juli.rb`, then 
```
# Juliamo to Esperanto
ruby es2juli.rb -e [input.txt] 
# or 
cat [input.txt] | ruby es2juli.rb -e

# Esperanto to Juliamo
ruby es2juli.rb -j [input.txt] 
# or 
cat [input.txt] | ruby es2juli.rb -j
```

## License
The source code is licensed MIT.


