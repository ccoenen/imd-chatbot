@echo off

SETLOCAL

SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%
SET HUBOT_IRC_SERVER=irc.wolki.de
SET HUBOT_IRC_ROOMS=#imdrocks

node_modules\.bin\hubot.cmd --name "berndibernd" %*
