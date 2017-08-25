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
            '生きるとはどういうことなのでしょうか……？'
          elsif message.match(/死んでる？/) then
            'もし私が死んだとしても，魂は不滅ですよ'
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
