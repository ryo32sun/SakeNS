# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveStorage::AnalyzeJob.queue_adapter = :inline
ActiveStorage::PurgeJob.queue_adapter = :inline


Admin.create!(
  email: ENV['ad_email'],
  password: ENV['ad_pass']
) 

Customer.create!([
  {
    email: ENV['cus_email'],
    name: ENV['cus_name'],
    password: ENV['cus_pass'],
  },
  {
    email: "a@a",
    name: "日本酒好き",
    password: "000000",
  },
  {
    email: "a@b",
    name: "焼酎派",
    password: "000000",
  },
  {
    email: "a@c",
    name: "ビール党",
    password: "000000",
  },
  {
    email: "a@d",
    name: "退会済み",
    password: "000000",
    is_deleted: true,
  },
])

# coding: utf-8
ShopGenre.create!([
  {genre: "買えるお店"},
  {genre: "飲めるお店"}
])

SakeGenre.create!([
  {genre: "日本酒"},
  {genre: "焼酎"},
  {genre: "ウイスキー"},
  {genre: "ビール・発泡酒"},
  {genre: "ワイン"},
  {genre: "果実酒"},
  {genre: "スピリッツ"},
  {genre: "リキュール"},
  {genre: "カクテル"},
  {genre: "その他"}
])

Sake.create!([
  {
    sake_genre_id: 1,
    name: "磯自慢",
    prefectures: 22,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/isojiman.jpg")),filename: 'isojiman.jpg')
  },
  {
    sake_genre_id: 1,
    name: "田酒",
    prefectures: 5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/denshu.jpg")),filename: 'denshu.jpg')
  },
  {
    sake_genre_id: 2,
    name: "和み",
    prefectures: 14,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/nago.jpg")),filename: 'nago.jpg')
  },
  {
    sake_genre_id: 2,
    name: "二階堂",
    prefectures: 44,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/nikai.jpg")),filename: 'nikai.jpg')
  },
  {
    sake_genre_id: 1,
    name: "豊能梅",
    prefectures: 39,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/noto.jpg")),filename: 'noto.jpg')
  },
  {
    sake_genre_id: 4,
    name: "キリン　スプリングバレー",
    prefectures: 14,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/valler.jpg")),filename: 'valler.jpg')
  },
  {
    sake_genre_id: 4,
    name: "サッポロ　黒ラベル",
    prefectures: 12,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/sapporo.jpg")),filename: 'sapporo.jpg')
  },
  {
    sake_genre_id: 1,
    name: "大関",
    prefectures: 28,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/ozeki.jpg")),filename: 'ozeki.jpg')
  },
  {
    sake_genre_id: 4,
    name: "サントリー　プレミアムモルツ",
    prefectures: 13,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/molt.jpg")),filename: 'molt.jpg')
  },
  {
    sake_genre_id: 1,
    name: "水鳥記",
    prefectures: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mizu.jpg")),filename: 'mizu.jpg')
  },
  {
    sake_genre_id: 1,
    name: "蒼天伝",
    prefectures: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mizu.jpg")),filename: 'mizu.jpg')
  },
  {
    sake_genre_id: 1,
    name: "大杉",
    prefectures: 26,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mimuro.jpg")),filename: 'mimuro.jpg')
  },
  {
    sake_genre_id: 5,
    name: "マルティーニ",
    prefectures: 48,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/matini.jpg")),filename: 'matini.jpg')
  },
  {
    sake_genre_id: 4,
    name: "キリン　一番搾り",
    prefectures: 14,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kirin.jpg")),filename: 'kirin.jpg')
  },
  {
    sake_genre_id: 1,
    name: "千歳鶴",
    prefectures: 1,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/chitose.jpg")),filename: 'chitose.jpg')
  },
  {
    sake_genre_id: 9,
    name: "カシスビア",
    prefectures: 48,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/cassis.jpg")),filename: 'cassis.jpg')
  },
  {
    sake_genre_id: 1,
    name: "紀土 KID",
    prefectures: 30,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    sake_genre_id: 1,
    name: "醸し人九平次",
    prefectures: 23,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    sake_genre_id: 2,
    name: "赤兎馬",
    prefectures: 46,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    sake_genre_id: 5,
    name: "ビーニャ・バルディビエソ",
    prefectures: 48,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/binya.jpg")),filename: 'binya.jpg')
  },
  {
    sake_genre_id: 1,
    name: "天吹",
    prefectures: 41,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/amabuki.jpg")),filename: 'amabuki.jpg')
  },
  {
    sake_genre_id: 1,
    name: "満寿泉",
    prefectures: 16,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/masu.jpg")),filename: 'masu.jpg')
  },
  {
    sake_genre_id: 1,
    name: "三千櫻",
    prefectures: 1,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/masu.jpg")),filename: 'masu.jpg')
  },
])

SakePost.create!([
  {
    sake_id: 1,
    customer_id: 2,
    feature: "特徴をここに記述します１",
    impression: "感想をここに記述します１",
    rate: 4.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/isojiman.jpg")),filename: 'isojiman.jpg')
  },
  {
    sake_id: 2,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/denshu.jpg")),filename: 'denshu.jpg')
  },
  {
    # name: "和み",
    sake_id: 3,
    customer_id: 3,
    feature: "特徴をここに記述します３",
    impression: "感想をここに記述します３",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/nago.jpg")),filename: 'nago.jpg')
  },
  {
    # name: "二階堂",
    sake_id: 4,
    customer_id: 3,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/nikai.jpg")),filename: 'nikai.jpg')
  },
  {
    # name: "豊能梅",
    sake_id: 5,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/noto.jpg")),filename: 'noto.jpg')
  },
  {
    # name: "キリン　スプリングバレー",
    sake_id: 6,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/valler.jpg")),filename: 'valler.jpg')
  },
  {
    # name: "サッポロ　黒ラベル",
    sake_id: 7,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/sapporo.jpg")),filename: 'sapporo.jpg')
  },
  {
    # name: "大関",
    sake_id: 8,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/ozeki.jpg")),filename: 'ozeki.jpg')
  },
  {
    # name: "サントリー　プレミアムモルツ",
    sake_id: 9,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/molt.jpg")),filename: 'molt.jpg')
  },
  {
    # name: "水鳥記",
    sake_id: 10,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mizu.jpg")),filename: 'mizu.jpg')
  },
  {
    # name: "蒼天伝",
    sake_id: 11,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mizu.jpg")),filename: 'mizu.jpg')
  },
  {
    # name: "大杉",
    sake_id: 12,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mimuro.jpg")),filename: 'mimuro.jpg')
  },
  {
    # name: "マルティーニ",
    sake_id: 13,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/matini.jpg")),filename: 'matini.jpg')
  },
  {
    # name: "キリン　一番搾り",
    sake_id: 14,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kirin.jpg")),filename: 'kirin.jpg')
  },
  {
    # name: "千歳鶴",
    sake_id: 15,
    customer_id: 1,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/chitose.jpg")),filename: 'chitose.jpg')
  },
  {
    # name: "カシスビア",
    sake_id: 16,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/cassis.jpg")),filename: 'cassis.jpg')
  },
  {
    # name: "紀土 KID",
    sake_id: 17,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    # name: "醸し人九平次",
    sake_id: 18,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    # name: "赤兎馬",
    sake_id: 19,
    customer_id: 1,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/kid.jpg")),filename: 'kid.jpg')
  },
  {
    # name: "ビーニャ・バルディビエソ",
    sake_id: 20,
    customer_id: 4,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/binya.jpg")),filename: 'binya.jpg')
  },
  {
    # name: "天吹",
    sake_id: 21,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 4.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/amabuki.jpg")),filename: 'amabuki.jpg')
  },
  {
    # name: "満寿泉",
    sake_id: 22,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/masu.jpg")),filename: 'masu.jpg')
  },
  {
    # name: "三千櫻",
    sake_id: 23,
    customer_id: 2,
    feature: "特徴をここに記述します２",
    impression: "感想をここに記述します２",
    rate: 3.5,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/masu.jpg")),filename: 'masu.jpg')
  },
])

Shop.create!([
  {
    shop_genre_id: 1,
    name: "三吉屋サロン",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します１",
    address: "神奈川県相模原市南区相模台４丁目１２−２",
  },
  {
    shop_genre_id: 1,
    name: "今井商店",
    prefectures: 22,
    remark: "ここに電話番号や営業日など記述します２",
    address: "静岡県伊東市猪戸１丁目４−１７",
  },
  {
    shop_genre_id: 1,
    name: "大矢商店",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します２",
    address: "神奈川県大和市南林間１丁目８−１９",
  },
  {
    shop_genre_id: 1,
    name: "リカーランドトップ",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します２",
    address: "神奈川県座間市ひばりが丘１丁目１−２３",
  },
  {
    shop_genre_id: 1,
    name: "のざき酒店",
    prefectures: 37,
    remark: "ここに電話番号や営業日など記述します２",
    address: "香川県さぬき市志度９５３−２",
  },
  {
    shop_genre_id: 1,
    name: "西武池袋",
    prefectures: 13,
    remark: "ここに電話番号や営業日など記述します２",
    address: "東京都豊島区南池袋１丁目２８−１",
  },
  {
    shop_genre_id: 2,
    name: "イーサン食堂",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します２",
    address: "神奈川県大和市南林間２丁目１０−４１",
  },
  {
    shop_genre_id: 2,
    name: "巴屋",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します２",
    address: "神奈川県大和市南林間５丁目１−６",
  },
  {
    shop_genre_id: 2,
    name: "KFCレストラン　南町田グランベリーパーク店",
    prefectures: 13,
    remark: "ここに電話番号や営業日など記述します２",
    address: "東京都町田市鶴間3-4-1",
  },
  {
    shop_genre_id: 1,
    name: "藤原屋みちのく酒紀行 エスパル仙台店",
    prefectures: 4,
    remark: "ここに電話番号や営業日など記述します２",
    address: "宮城県仙台市青葉区中央１丁目１−１ エスパル仙台 東館 ２階",
  },
  {
    shop_genre_id: 1,
    name: "杉山集会所",
    prefectures: 4,
    remark: "ここに電話番号や営業日など記述します２",
    address: "京都府舞鶴市字杉山４３０",
  },
  {
    shop_genre_id: 1,
    name: "イオンモール座間",
    prefectures: 14,
    remark: "ここに電話番号や営業日など記述します２",
    address: "神奈川県座間市広野台２丁目１０−４",
  },
  {
    shop_genre_id: 1,
    name: "千歳鶴酒ミュージアム",
    prefectures: 1,
    remark: "ここに電話番号や営業日など記述します２",
    address: "北海道札幌市中央区南３条東５丁目2",
  },
  {
    shop_genre_id: 2,
    name: "瓦町フラッグ屋上ビアガーデン",
    prefectures: 37,
    remark: "ここに電話番号や営業日など記述します２",
    address: "香川県高松市常磐町１丁目３−１",
  },
  {
    shop_genre_id: 1,
    name: "かがた屋酒店",
    prefectures: 13,
    remark: "ここに電話番号や営業日など記述します２",
    address: "東京都品川区小山５丁目１９−１５",
  },
  {
    shop_genre_id: 1,
    name: "藤沢屋酒店",
    prefectures: 13,
    remark: "ここに電話番号や営業日など記述します２",
    address: "東京都板橋区仲宿５７−１４",
  },
  {
    shop_genre_id: 1,
    name: "伊勢元酒店",
    prefectures: 13,
    remark: "ここに電話番号や営業日など記述します２",
    address: "東京都荒川区西尾久4-27-6",
  },
])

ShopPost.create!([
  {
    shop_id: 1,
    sake_post_id: 1,
    customer_id: 2,
    rate: 4
  },
  {
    shop_id: 2,
    sake_post_id: 2,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 3,
    sake_post_id: 3,
    customer_id: 3,
    rate: 4.5
  },
  {
    shop_id: 4,
    sake_post_id: 4,
    customer_id: 3,
    rate: 3.5
  },
  {
    shop_id: 5,
    sake_post_id: 5,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 6,
    sake_post_id: 6,
    customer_id: 4,
    rate: 3.5
  },
  {
    shop_id: 7,
    sake_post_id: 7,
    customer_id: 4,
    rate: 3
  },
  {
    shop_id: 8,
    sake_post_id: 8,
    customer_id: 2,
    rate: 3.5
  },
  {
    shop_id: 9,
    sake_post_id: 9,
    customer_id: 4,
    rate: 4.5
  },
  {
    shop_id: 10,
    sake_post_id: 10,
    customer_id: 2,
    rate: 4
  },
  {
    shop_id: 10,
    sake_post_id: 11,
    customer_id: 2,
    rate: 3.5
  },
  {
    shop_id: 11,
    sake_post_id: 12,
    customer_id: 2,
    rate: 3
  },
  {
    shop_id: 12,
    sake_post_id: 13,
    customer_id: 4,
    rate: 3
  },
  {
    shop_id: 12,
    sake_post_id: 14,
    customer_id: 4,
    rate: 2.5
  },
  {
    shop_id: 13,
    sake_post_id: 15,
    customer_id: 1,
    rate: 5
  },
  {
    shop_id: 14,
    sake_post_id: 16,
    customer_id: 4,
    rate: 3.5
  },
  {
    shop_id: 15,
    sake_post_id: 17,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 15,
    sake_post_id: 18,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 15,
    sake_post_id: 19,
    customer_id: 1,
    rate: 5
  },
  {
    shop_id: 4,
    sake_post_id: 20,
    customer_id: 4,
    rate: 5
  },
  {
    shop_id: 16,
    sake_post_id: 21,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 17,
    sake_post_id: 22,
    customer_id: 2,
    rate: 5
  },
  {
    shop_id: 17,
    sake_post_id: 23,
    customer_id: 2,
    rate: 5
  },
])