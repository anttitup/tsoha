# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_galleria_session',
  :secret      => 'a87fab4c7b94135570cafaf813c01bf6b504b29b194079900385c297a9da2df4ed72331c22254bed3250779c87f345541e2ef6828fe5e7537e13c0b89fbf4db0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
