module Lita
  module Handlers
    class Love < Handler
      LOVE = [
        "<3",
        "i love you",
        "je t'aime",
        "dear",
        "cherie",
        "♡",
        "♥",
        "❤"
      ]

      route(/#{LOVE.join("|")}/i, :love)

      def love(r)
        r.reply(t("love", user: r.user.name))
      end

      Lita.register_handler(self)
    end
  end
end
