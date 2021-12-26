# Pastegrok

Pastegrok is a quick and easy way to post your ngrok forwarded tunnel to PasteBin. This is useful in a rush or when you simply want to stay in the terminal and show off your cool forwarded site to everyone on PasteBin! Free promo amiright ;)

## Setup

Pastegrok setup is *super* simple, all you need to do is install the requirements.txt:

---------------------------------------------------------------------------------
> sudo pip install -r requirements.txt
---------------------------------------------------------------------------------

Set the correct chmod permissions:

---------------------------------------------------------------------------------
> chmod +x pastegrok
---------------------------------------------------------------------------------

And run setup.py with your PasteBin API devkey (https://pastebin.com/doc_api) as the first argument, your PasteBin username as the second, and your PasteBin password as the third:

---------------------------------------------------------------------------------   
> sudo python3 setup.py <DEVKEY> <USERNAME> <PASSWORD>
---------------------------------------------------------------------------------

That's it! Now you may run Pastegrok like so:

---------------------------------------------------------------------------------
> pastegrok [TIME TILL PASTE EXPIRATION]
---------------------------------------------------------------------------------

Thanks for using Pastegrok!!!! :)
  
### Notes
  
There are 2 - as far as I am aware - unfixable bugs to do with the handling of usernames/passwords in either the terminal or POST request to Pastebin when executing setup.py. This is due to username and password syntax (equals signs, ampersandes, crocodile symbols, etc) conflicting with terminal and POST request data and may cause "Bad API request, invalid login" errors or general weirdness in the terminal.
  
If you recieve either bug, the simplest fix is to simply quote out the password/username - like so:

---------------------------------------------------------------------------------
> python3 setup.py <DEVKEY> testuser "big&error>>"
---------------------------------------------------------------------------------
