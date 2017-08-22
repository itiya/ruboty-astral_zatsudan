require "ruboty/astral_zatsudan/actions/zatsudan"

module Ruboty
  module Handlers
    class Zatsudan < Base
      on /生きてる？/, name: 'zatsudan', description: 'zatsudan'
      on /死んでる？/, name: 'zatsudan', description: 'zatsudan'
      on /つらい/, name: 'zatsudan', description: 'zatsudan'

      def zatsudan(message)
        Ruboty::AstralZatsudan::Actions::Zatsudan.new(message).call
      end
    end
  end
end
