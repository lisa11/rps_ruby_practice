# Rock, Paper, Scissors -- Rails

In this project, we'll practice basic Ruby.

## Setup

 1. Clone this project.
 1. Open the folder in Atom.
 1. Navigate to the folder in Terminal.
 1. Once you are inside the `rps_ruby_practice` folder in Terminal, run the commands

        bundle install

    and then

        rails server

    If all goes well, you should see something like

        => Booting WEBrick
        => Rails 5.0.1 application starting in development on http://localhost:3000
        => Run `rails server -h` for more startup options
        => Ctrl-C to shutdown server
        [2016-04-17 09:54:29] INFO  WEBrick 1.3.1
        [2016-04-17 09:54:29] INFO  ruby 2.3.0 (2015-12-25) [x86_64-darwin15]
        [2016-04-17 09:54:29] INFO  WEBrick::HTTPServer#start: pid=2155 port=3000

    and the cursor should remain blinking (it should not return you to the command prompt). That means your server is running successfully. (If you do get kicked back to the command prompt, then you most likely have an old Rails server already running, which needs to be shut down. Find the old Terminal window and close it, or Ctrl-C to shut down the server.)

 1. Now that you have a running web server, you can visit your site. In Chrome, navigate to [http://localhost:3000](http://localhost:3000). You should see a page with links to click to start playing Rock, Paper, Scissors. However, if you click on them now, you'll see that the game doesn't work -- yet.

 1. In Atom, locate the file `app/controllers/game_controller.rb`. You will see two lines:

        @computer_move = "Replace this string with the correct value."

        @result = "Replace this string with the correct value."

    These dummy placeholder values are what you are seeing in Chrome. Change them, for example, to be hardcoded strings

        @computer_move = "rock"

        @result = "won"

    and play the game in Chrome.

 1. Your task: add logic to `app/controllers/game_controller.rb` to make the game work correctly.
