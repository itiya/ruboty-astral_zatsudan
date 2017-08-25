require "ruboty/astral_zatsudan/actions/suggest"

module Ruboty
  module Handlers
    class Suggest < Base
      on /(何|なに)(すれば|したら|すると)(良い|いい)(と思う)*？/, name: 'suggest', description: 'なにをすればいいか（事前に設定しておいた）ヒントをくれます'

      def suggest(message)
        Ruboty::AstralZatsudan::Actions::Suggest.new(message).call
      end
    end
  end
end
