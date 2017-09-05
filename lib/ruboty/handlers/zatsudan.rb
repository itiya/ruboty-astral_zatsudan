module Ruboty
  module Handlers
    class Zatsudan < Base
      on /生きてる？/, name: 'alive', description: '生きてるかどうか聞く'
      on /死んでる？/, name: 'dead', description: '死んでるかどうか聞く'
      on /つらい/, name: 'tsurai', description: 'つらい時の話'
      on /(無)|(ニャオス)|(駄目)|(無理)/, name: 'sanpo', description: '散歩サジェスト'

      def alive(message)
        message.reply("生きるとはどういうことなのでしょうか……？")
      end

      def dead(message)
        message.reply("死んでるわけないじゃないですか")
      end

      def tsurai(message)
        message.reply("人生，数値が上がったり下がったりするだけですから気楽に行きましょう！")
      end

      def sanpo(message)
        message.reply("散歩してみてはどうですか？")
      end

    end
  end
end
