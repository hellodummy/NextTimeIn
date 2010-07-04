# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nexttimein_session',
  :secret      => '24ef5e4fe724ce063f338d58d85417955c859f7573516bda3334354dbbee337eb19abbe9ada16e094c8c9ea188ad3e7fa73c17fb09f352a3e3ca2c5310c5a440'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
