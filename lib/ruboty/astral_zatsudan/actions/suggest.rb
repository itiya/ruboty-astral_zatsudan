module Ruboty
  module AstralZatsudan
    module Actions
      class Suggest < Ruboty::Actions::Base
        def call
          message.reply(zatsudan)
        end

        private

        def zatsudan
          '私にcron機能を入れるというのをやってください！'
        end

      end
    end
  end
end
