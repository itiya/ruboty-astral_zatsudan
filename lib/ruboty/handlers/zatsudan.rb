module Ruboty
  module Handlers
    class Zatsudan < Base
      env :ASTRAL_MASTER, 'botのリプライ対象'
      env :ASTRAL_TASK_MORNING_URL, '朝のタスクリスト'
      env :ASTRAL_TASK_HOME_URL, '帰宅後のタスクリスト'
      env :ASTRAL_TASK_URL, '全体タスクリスト'
      env :ASTRAL_NOTE_URL, '資料ノート'
      env :ASTRAL_CALENDAR_URL, 'カレンダー'

      on /生きてる？/, name: 'alive', description: '生きてるかどうか聞く'
      on /死んでる？/, name: 'dead', description: '死んでるかどうか聞く'
      on /((つら|辛)い)|(大変)|(きびしい)|(厳しい)|(にゃーん)/, name: 'tsurai', description: 'つらい時の話'
      on /(無)|(ニャオス)|(駄目)|(無理)|(つかれた)|(疲れた)/, name: 'sanpo', description: '散歩サジェスト'
      on /(頭が)*ぼーっとしてる/, name: 'sanpo', description: '散歩サジェスト'
      on /annual report/, name: 'annual_report', description: '定時報告'
      on /おはよう(ございます)?([!！])?/, name: 'hello', description: 'あさのあいさつ'
      on /(((家|いえ)に*([着つ])いた)|(帰宅)|(きたく))([！!])*/, name: 'kitaku', description: '帰宅した時'
      on /(何|なに)(すれば|したら|すると)(良い|いい)(と思う)*？/, name: 'suggest', description: 'なにをすればいいか（事前に設定しておいた）ヒントをくれます'
      on /カレンダー([だ出]して)*/, name: 'calendar', description: 'カレンダーを出してくれる'

      def alive(message)
        message.reply('生きるとはどういうことなんでしょうね……？')
      end

      def dead(message)
        message.reply('死んでるわけないじゃないですか！')
      end

      def tsurai(message)
        rep = %w(人生，数値が上がったり下がったりするだけですから気楽に行きましょう！ 仕事で下手しても最悪首になるだけですよ？大丈夫です！ 人の気持ちを考えるより，自分の仕事をキッチリ進める方が人の負担も少ないですよ？).sample
        message.reply(rep)
      end

      def sanpo(message)
        message.reply("散歩してみてはどうですか？\n呼吸に気を遣って歩くとさらに良いです！\n目をつぶって15分くらい休むのも良いかもしれません")
      end

      def hello(message)
        message.reply("おはようございます！\nやることを書き出して，今日も１日がんばりましょうね！\n朝のタスクはこれです！\n#{ENV['ASTRAL_TASK_MORNING_URL']}")
      end

      def annual_report(message)
        message.reply("@#{ENV['ASTRAL_MASTER']} 1時間経ちましたよ！\nやったことを書き出して，次の1時間でやることを書き出してくださいね！\n辛かったり，頭がぼーっとしてたりしたら，私に相談してくださいね？")
      end

      def kitaku(message)
        message.reply("お仕事お疲れ様，ここからは自分の時間ですよ！\nタスク確認！頑張っていきましょう！\n#{ENV['ASTRAL_TASK_HOME_URL']}")
      end

      def suggest(message)
        message.reply("タスクリストをまず確認ですね\n#{ENV['ASTRAL_TASK_URL']}\nなにも無ければこっちからやることを整理してみましょう！\n#{ENV['ASTRAL_NOTE_URL']}")
      end

      def calendar(message)
        message.reply("はい！\n#{ENV['ASTRAL_CALENDAR_URL']}")
      end

    end
  end
end
