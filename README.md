[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

# Pastegrok

Pastegrok is a quick and easy way to post your ngrok forwarded tunnel to PasteBin. This is useful in a rush or when you simply want to stay in the terminal.

## Setup

Pastegrok setup is simple, all you need to do is install the requirements.txt:

---------------------------------------------------------------------------------
> sudo pip install -r requirements.txt
---------------------------------------------------------------------------------

Set the correct chmod permissions:

---------------------------------------------------------------------------------
> chmod +x pastegrok
---------------------------------------------------------------------------------

And run setup.sh with your PasteBin API devkey (https://pastebin.com/doc_api) as the first argument, your PasteBin username as the second, and your PasteBin password as the third:

---------------------------------------------------------------------------------   
> bash setup.sh [DEVKEY] [USERNAME] [PASSWORD]
---------------------------------------------------------------------------------

You can now run Pastegrok with its automatic default arguments:

---------------------------------------------------------------------------------
> pastegrok
---------------------------------------------------------------------------------

Or with its optional arguments listed below:

---------------------------------------------------------------------------------
time        when your post should expire | N(ever) 10M(inutes) 1H(our) 1D(ay)
              1W(eek) 2W(eeks) 1M(onth) 6M(onths) 1Y(ear) | Default = 1W(eek)
              
privacy     how private you want your ngrok tunnel to be (IMPORTANT: PRIVATE
              RECOMMENDED) | 0 = Public 1 = Unlisted 2 = Private | Default = 2

---------------------------------------------------------------------------------

### Notes
  
There are 2 unfixable (unfixable as far as I am aware, reach out if you are aware of a fix) bugs to do with the handling of usernames/passwords in either the terminal or POST request to Pastebin when executing setup.py. This is due to username and password syntax (equals signs, ampersandes, crocodile symbols, etc) conflicting with terminal and POST request data and may cause "Bad API request, invalid login" errors or general weirdness in the terminal.
  
You can try quoting out the password and/or username, but from my tests that just causes API issues. There is genuinely no fix for this I'm pretty sure.
