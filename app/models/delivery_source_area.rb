class DeliverySourceArea < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '北海道' },
    { id: 3, name: '青森県' },
    { id: 4, name: '岩手県' },
    { id: 5, name: '宮城県' },
    { id: 6, name: '秋田県' },
    { id: 7, name: '山形県' },
    { id: 8, name: '福島県' },
    { id: 9, name: '茨城県' },
    { id: 10, name: '栃木県' },
    { id: 11, name: '群馬県' }
    { id: 12, name: '埼玉県' }
    { id: 13, name: '千葉県' }
    { id: 14, name: '東京都' }
    { id: 15, name: '神奈川県' }
    { id: 16, name: '新潟県' }
    { id: 17, name: '富山県' }
    { id: 18, name: '石川県' }
    { id: 19, name: '福井県' }
    { id: 20, name: '山梨県' }
    { id: 21, name: '長野県' }
    { id: 22, name: '岐阜県' }
    { id: 23, name: '静岡県' }
    { id: 24, name: '愛知県' }
    { id: 25, name: '三重県' }
    { id: 26, name: '滋賀県' }
    { id: 27, name: '京都府' }
    { id: 28, name: '大阪府' }
    { id: 29, name: '兵庫県' }
    { id: 30, name: '奈良県' }
    { id: 31, name: '和歌山県' }
    { id: 32, name: '鳥取県' }
    { id: 33, name: '島根県' }
    { id: 34, name: '岡山県' }
    { id: 35, name: '広島県' }
    { id: 36, name: '山口県' }
    { id: 37, name: '徳島県' }
    { id: 38, name: '香川県' }
    { id: 39, name: '愛媛県' }
    { id: 40, name: '高知県' }
    { id: 41, name: '福岡県' }
    { id: 42, name: '佐賀県' }
    { id: 43, name: '長崎県' }
    { id: 44, name: '熊本県' }
    { id: 45, name: '大分県' }
    { id: 46, name: '宮崎県' }
    { id: 47, name: '鹿児島県' }
    { id: 48, name: '沖縄県' }
    { id: 49, name: '未定' }
  ]

  %option{"aria-selected" => "true", :label => "選択してください"}
          %option{"aria-selected" => "false", :label => "北海道", :value => "1"}
          %option{"aria-selected" => "false", :label => "青森県", :value => "2"}
          %option{"aria-selected" => "false", :label => "岩手県", :value => "3"}
          %option{"aria-selected" => "false", :label => "宮城県", :value => "4"}
          %option{"aria-selected" => "false", :label => "秋田県", :value => "5"}
          %option{"aria-selected" => "false", :label => "山形県", :value => "6"}
          %option{"aria-selected" => "false", :label => "福島県", :value => "7"}
          %option{"aria-selected" => "false", :label => "茨城県", :value => "8"}
          %option{"aria-selected" => "false", :label => "栃木県", :value => "9"}
          %option{"aria-selected" => "false", :label => "群馬県", :value => "10"}
          %option{"aria-selected" => "false", :label => "埼玉県", :value => "11"}
          %option{"aria-selected" => "false", :label => "千葉県", :value => "12"}
          %option{"aria-selected" => "false", :label => "東京都", :value => "13"}
          %option{"aria-selected" => "false", :label => "神奈川県", :value => "14"}
          %option{"aria-selected" => "false", :label => "新潟県", :value => "15"}
          %option{"aria-selected" => "false", :label => "富山県", :value => "16"}
          %option{"aria-selected" => "false", :label => "石川県", :value => "17"}
          %option{"aria-selected" => "false", :label => "福井県", :value => "18"}
          %option{"aria-selected" => "false", :label => "山梨県", :value => "19"}
          %option{"aria-selected" => "false", :label => "長野県", :value => "20"}
          %option{"aria-selected" => "false", :label => "岐阜県", :value => "21"}
          %option{"aria-selected" => "false", :label => "静岡県", :value => "22"}
          %option{"aria-selected" => "false", :label => "愛知県", :value => "23"}
          %option{"aria-selected" => "false", :label => "三重県", :value => "24"}
          %option{"aria-selected" => "false", :label => "滋賀県", :value => "25"}
          %option{"aria-selected" => "false", :label => "京都府", :value => "26"}
          %option{"aria-selected" => "false", :label => "大阪府", :value => "27"}
          %option{"aria-selected" => "false", :label => "兵庫県", :value => "28"}
          %option{"aria-selected" => "false", :label => "奈良県", :value => "29"}
          %option{"aria-selected" => "false", :label => "和歌山県", :value => "30"}
          %option{"aria-selected" => "false", :label => "鳥取県", :value => "31"}
          %option{"aria-selected" => "false", :label => "島根県", :value => "32"}
          %option{"aria-selected" => "false", :label => "岡山県", :value => "33"}
          %option{"aria-selected" => "false", :label => "広島県", :value => "34"}
          %option{"aria-selected" => "false", :label => "山口県", :value => "35"}
          %option{"aria-selected" => "false", :label => "徳島県", :value => "36"}
          %option{"aria-selected" => "false", :label => "香川県", :value => "37"}
          %option{"aria-selected" => "false", :label => "愛媛県", :value => "38"}
          %option{"aria-selected" => "false", :label => "高知県", :value => "39"}
          %option{"aria-selected" => "false", :label => "福岡県", :value => "40"}
          %option{"aria-selected" => "false", :label => "佐賀県", :value => "41"}
          %option{"aria-selected" => "false", :label => "長崎県", :value => "42"}
          %option{"aria-selected" => "false", :label => "熊本県", :value => "43"}
          %option{"aria-selected" => "false", :label => "大分県", :value => "44"}
          %option{"aria-selected" => "false", :label => "宮崎県", :value => "45"}
          %option{"aria-selected" => "false", :label => "鹿児島県", :value => "46"}
          %option{"aria-selected" => "false", :label => "沖縄県", :value => "47"}
          %option{"aria-selected" => "false", :label => "未定", :value => "99"}
  end
