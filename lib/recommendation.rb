module Recommendation
    def recommend_game #recommend's games to users
        .where('id != ?', self.id)
        other_users = self.class.all.where.not(:id self.id)

        recommend = Hash.new(0)

        other_users.each do |user|

            common_games = user.games & self.games 

            weight = common_games.size.to_f / user.games.size

            (user.games - common_games).each do |game|
                recommend[game] += weight
            end

        end

        sort_recommended = recommend.sort_by { |key, value| value }.reverse
    end
    
end