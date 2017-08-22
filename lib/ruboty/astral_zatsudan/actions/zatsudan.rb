module Ruboty
  module AstralZatsudan
    module Actions
      class Zatsudan < Ruboty::Actions::Base
        def call
          message.reply(zatsudan)
        end

        private

        def zatsudan
          if message.match(/生きてる？/)
            '生きるとはどういうことでしょうか？'
          elsif message.match(/死んでる？/) then
            'Botに死は存在しないのです……'
          elsif message.match(/つらい/) then
            '人生，数値が上がったり下がったりするだけですから気楽に行きましょう！'
          else
            '意図しない言動ですね'
          end
        end

      end
    end
  end
end
