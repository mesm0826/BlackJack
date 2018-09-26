require "./dealer"
require "./decks"
require "./message"
require "./user"

extend Message
# ゲーム開始
start()
# 名前入力
user_name = input_username()

# 初期化
user = User.new(user_name)
dealer = Dealer.new

# 山札の準備
decks = Decks.new

# ユーザー側の開始時手札
user.init_card(decks)

# ディーラー側の開始時手札
dealer_second_card = dealer.init_card(decks)

# ユーザー側の現在の得点
user.show_my_point

# ユーザー側のターン

# ディーラー側のターン

# ユーザー側の現在の得点

# ディーラー側の現在の得点

# 勝敗判定
