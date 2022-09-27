require "os"

env = require "../env"

env.load("", false)

print(os.getenv("DB_EMPTY"))

os.exit(0)
