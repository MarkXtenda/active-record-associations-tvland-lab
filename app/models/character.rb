class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_show(name)
        new_show = Show.new(name)
        new_show.characters << self
        new_show
    end

    def build_network(network)
        new_net = Network.new(network)
        new_net.shows << build_show
      end
end