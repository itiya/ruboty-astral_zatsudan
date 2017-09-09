module Ruboty
  module Handlers
    class Zatsudan < Base
      env :ASTRAL_MASTER, "botのリプライ対象"

      on /生きてる？/, name: 'alive', description: '生きてるかどうか聞く'
      on /死んでる？/, name: 'dead', description: '死んでるかどうか聞く'
      on /(つら|辛)い/, name: 'tsurai', description: 'つらい時の話'
      on /(無)|(ニャオス)|(駄目)|(無理)/, name: 'sanpo', description: '散歩サジェスト'
      on /(頭が)*ぼーっとしてる/, name: 'sanpo', description: '散歩サジェスト'
      on /annual report/, name: 'annual_report', description: '定時報告'
      on /おはよう(ございます)?([!！])?/, name: 'hello', description: 'あさのあいさつ'

      def alive(message)
        message.reply("生きるとはどういうことなんでしょうね……？")
      end

      def dead(message)
        message.reply("死んでるわけないじゃないですか！")
      end

      def tsurai(message)
        message.reply("人生，数値が上がったり下がったりするだけですから気楽に行きましょう！")
      end

      def sanpo(message)
        message.reply("散歩してみてはどうですか？\n橋のあたりまで行ったり，市場のほうに行ってみたりすると良いですよ！")
      end

      def hello(message)
        message.reply("おはようございます！\nやることを書き出して，今日も１日がんばりましょうね！")
      end

      def annual_report(message)
        message.reply("@#{ENV['ASTRAL_MASTER']} 1時間経ちましたよ！\nやったことを書き出して，次の1時間でやることを書き出してくださいね！\n辛かったり，頭がぼーっとしてたりしたら，私に相談してくださいね？")
      end

    end
  end
end
