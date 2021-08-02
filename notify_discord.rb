require 'faraday_curl'
require 'yaml'

CONFIG_FILENAME = 'notify_discord.yml'
config = YAML.load_file(CONFIG_FILENAME)

DEFAULT_USER_NAME = "notify_discord"

WEBHOOK_URL = config["webhook_url"]

conn = Faraday.new(url: WEBHOOK_URL) do |f|
    f.request :url_encoded
    f.request :curl
    f.adapter Faraday.default_adapter
end

content = ARGV[0] || $stdin.gets
conn.post("", {"username": config["username"] || DEFAULT_USER_NAME, "content": content})
   
