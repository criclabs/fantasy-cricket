# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Declare some global variables

TEAMS_IN_LEAGUE = 3
PLAYERS_PER_TEAM = 11
AGE_CATEGORIES = %w(Junior Adult)
PLAYER_CATEGORIES = %w(batsman bowler all-rounder keeper)
#INITIAL_PLAYER_PRICES = [0, 1000, 800, 600]
# Budget is average player price for each team player plus a bit.
# 2014 season: PLAYERS_PER_TEAM * 85
# 2015 season: PLAYERS_PER_TEAM * 100
INITIAL_TEAMCASH = PLAYERS_PER_TEAM * 100

# At the start of each season you have to set these parameters manually. That's not much good.
LOWEST_LS_TOTAL = -10
HIGHEST_LS_TOTAL = 1727
LOWEST_OPENING_PRICE = 45
HIGHEST_OPENING_PRICE = 252
BASE_PRICE = LOWEST_OPENING_PRICE
PRICE_PER_POINT = (HIGHEST_OPENING_PRICE - LOWEST_OPENING_PRICE) / ((HIGHEST_LS_TOTAL - LOWEST_LS_TOTAL) + 0.0)

# Initialize the Rails application.
Hartlapp::Application.initialize!
# Initialise the settings
#Setting.enable_changes = true
#binding.pry
