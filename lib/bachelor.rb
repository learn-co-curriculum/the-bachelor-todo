require 'pry'

# def get_season(data, target_season)
#   data.fetch(target_season)
#   # data.find do |season, season_hash| 
#   #   binding.pry
#   #   season == target_season
#   # end
# end


def get_winner(season)
  winner = nil
  season.each do |contestant|
    if contestant["status"] == "Winner"
     winner = contestant["name"]
    end
  end
  #binding.pry
  winner
end

def get_first_name_of_season_winner(data, season)
  # target_season = get_season(data,season)
  target_season = data.fetch(season)
  winner = get_winner(target_season)
  #binding.pry
  first_name = winner.split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |seasons, values|
     values. each do |woman|
     if woman["occupation"] == occupation
      return woman.fetch("name")
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |seasons, values|
    values. each do |woman|
      if woman["hometown"] == hometown
        hometown_count = hometown_count + 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, values|
    values. each do |woman|
      if woman["hometown"] == hometown
      return woman.fetch("occupation")
    end
  end
end
end

def average(ages)
  sum = ages.inject(0){|sum, age| sum + age}
  (sum/ages.length).round
end


def get_average_age_for_season(data, season)
  # code here
  ages = []
  target_season = data.fetch(season)
  target_season.each do |woman|
    ages << woman["age"].to_f
  end
  average(ages)
end