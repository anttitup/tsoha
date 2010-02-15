# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kuvalauta2_session',
  :secret      => '7100848f2de47f4f5a0cd33538400ce347ce1c703dc0cb19bee8dee940cebd8dd8f822a593bd184abca92719c72dabee1f137404b8a35fe4f0e496e1ec741b6b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
