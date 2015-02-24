require! {
  \events
  \fs
}

c           = new events.EventEmitter
c.token     = process.env.TOKEN
c.key       = process.env.KEY
c.users     = process.env.USERS ? __dirname + "/../users.json"
try c.board_default_card = JSON.parse process.env.BOARD_DEFAULT_CARD
c.separator = new RegExp(process.env.SEPARATOR || "\\s{2,}")
try
  c <<< require __dirname + "/../default.json"

module.exports = c
