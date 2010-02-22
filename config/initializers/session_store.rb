# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tape_session',
  :secret      => 'f90ceb67ec8d935a54a53da337b38a4794ea511c9921171192fd1bd0c75f2d1e3784eb6a5ba51d4227ff16fb8d74dd944b15b1269640703e4b48b2c9d8d9e08a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
