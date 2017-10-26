# IMD Chatbot

This is intended to get your feet wet with [Hubot](https://hubot.github.com/) -
a chatbot framework.

## Where do I find my bot?

This repository has been preconfigured for a specific **IRC-Channel** - good old
Internet Relay Chat. In case you don't have an IRC program installed, you can
enter the chat room with your web browser:

http://irc.wolki.de

If you do have an IRC client, connect it to:

```
Server: irc.wolki.de
Channel: #imdrocks
```

## First steps

### Get the code

If you know and **have Git**: `git clone https://github.com/ccoenen/imd-chatbot.git`

If you **don't have git**: go to https://github.com/ccoenen/imd-chatbot and
find the huge green "Clone or download" button. Download a zip and then unzip
it somewhere.

Either way, change into the newly created directory in your terminal  

run `npm install --no-optional` to install the required packages. The
`--no-optional` is somewhat odd, but there appears to be a package that can't
be built on many computers. Luckily, it's optional.

### Configure it

The only required configuration is naming your bot! The name is part of the
start scripts `bin/hubot` (Mac OS/Linux) or `bin/hubot.cmd` (Windows). Open
the one for your platform and replace *berndibernd* with a nice suitable name.

In case you have trouble coming up with a name, try this [baby name generator](http://www.babynames.co.uk/name-builder/?randomname=1).

### Start it

You can start your chatbot locally by running this:

    # on mac os / linux
    bin/hubot
    
    # on Windows
    bin\hubot.cmd

You'll see some start up output and a prompt:

    [Sat Feb 28 2015 12:38:27 GMT+0000 (GMT)] INFO Using default redis on localhost:6379
    your-chosen-name>

Then you can interact with your bot by typing `<your-chosen-name> help` in your terminal.

    berndibernd> berndibernd help
    berndibernd animate me <query> - The same thing as `image me`, except adds [snip]
    berndibernd help - Displays all of the help commands that berndibernd knows about.
    ...

Now **stop the bot** with <kbd>Ctrl</kbd>+<kbd>C</kbd> on your keyboard.

So far, all of this is just happening on your own machine. This mode is very
convenient for debugging, but the point is to have an actual chat bot for many
people, so we need to get it to connect to the actual server!

    # on mac os / linux
    bin/hubot -a irc
    
    # on Windows
    bin\hubot.cmd -a irc

Now head over to your chat client (see "Where do I find my bot" at the top of this
document), and try some commands!

## Hacking your own Scripts

There's an example file in `scripts/example-plain.js` - consisting of a few
blocks of code, which have been commented out. Try a few of those examples, they
are explained in more detail in the [Hubot Scripting Guide](https://hubot.github.com/docs/scripting/).
Please be aware that the website is listing stuff in CoffeeScript format! That's
why they look funny.

You need to restart your hubot when you make changes to your code!

## Add your own script

Toss a file in `scripts/`, Hubot will automatically load it. Use this as your
basic skeleton:

```JavaScript
module.exports = function (robot) {
  // your code goes here.
};
```

you can have as many scripts as you want.

Remember: your scripts are just regular JavaScript files, you can use anything
you want in there! Try moment.js!

## Add someone else's script

take a look at [existing hubot scripts](https://www.npmjs.com/browse/keyword/hubot-scripts).
Find one you like and try to follow the instruction in their readme to get it
up and running!

The usual steps to add another script are:

* `npm install --save <name-of-new-script>`
* adding the name to `external-scripts.json`

Let's try that with `hubot-encourage`:

* `npm install --save hubot-encourage`
* adding the name to `external-scripts.json`


## Adapters

Adapters are the interface to the service you want your hubot to run on, such
as Campfire or IRC. There are a number of third party adapters that the
community have contributed. Check [Hubot Adapters][hubot-adapters] for the
available ones.

As many of you are running on slack, anyway, try [hubot-slack](https://github.com/SlackAPI/hubot-slack).
Documentation is sketchy, basically [they tell you to start over](https://slackapi.github.io/hubot-slack/).
In case you need assistance, let me know!

Once you've added the dependency with `npm install --save` to install it you
can then run hubot with the adapter.

    # mac os / Linux
    bin/hubot -a <adapter>
    
    # windows
    bin\hubot.cmd -a <adapter>

Where `<adapter>` is the name of your adapter without the `hubot-` prefix.

[hubot-adapters]: https://hubot.github.com/docs/adapters/

## Recreate from Scratch

In case you don't like these modifications, [here's documentation on how to get
started with hubot](https://hubot.github.com/docs/)
