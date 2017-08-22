module Ruboty
  module AstralZatsudan
    module Actions
      class Fizzbuzz < Ruboty::Actions::Base
        def call
          message.reply(zatsudan)
        end

        private

        def zatsudan
          case message
            when "生きてる？" == message then "生きるとはどういうことでしょうか？"
            when "死んでる？" == message then "Botに死はないのです……"
            else "意図しない言動ですね"
          end
        end

      end
    end
  end
end
