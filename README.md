# SportsEvents

The gem help you query sports events simply

## Installation

Add this line to your application's Gemfile:

    gem 'sports_events'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sports_events

## Usage

```ruby
irb> require "sports_events"
true
irb> detail = SportsEvents.query("12")
irb> detail.info
23:00 英超第16轮 切尔西 - 赫尔城 上海体育    乐视    PPTV 手机看直播  比分直播
23:00 英超第16轮 莱切斯特城 - 曼城 乐视    PPTV 手机看直播  比分直播 
23:00 英超第16轮 伯恩利 - 南安普顿 等待更新 手机看直播  比分直播
            ……
            ……
irb> detail.xijia
23:00 西甲第15轮 赫塔菲 - 巴塞罗那 CCTV5直播    新浪    QQ    乐视    PPTV  手机看直播 文字直播 比分直播
            ……
            ……
irb> detail.yingchao
23:00 英超第16轮 切尔西 - 赫尔城 上海体育    乐视    PPTV  手机看直播 文字直播 比分直播
23:00 英超第16轮 莱切斯特城 - 曼城 乐视    PPTV  手机看直播 文字直播 比分直播 
23:00 英超第16轮 伯恩利 - 南安普顿 无插件直播  手机看直播 文字直播 比分直播
            ……
            ……
irb> detail.dejia
22:30 德甲第15轮 奥格斯堡 - 拜仁慕尼黑 CCTV5+    PPTV直播  手机看直播 文字直播 比分直播 
22:30 德甲第15轮 柏林赫塔 - 多特蒙德 广体    QQ    乐视    PPTV  手机看直播 文字直播 比分直播
22:30 德甲第15轮 沙尔克04 - 科隆 无插件直播  手机看直播 文字直播 比分直播
            ……
            ……
irb> detail.yijia
03:45 意甲第15轮 拉齐奥 - 亚特兰大 无插件直播  手机看直播 文字直播 比分直播 
19:30 意甲第15轮 尤文图斯 - 桑普 新浪    QQ    乐视    PPTV 手机看直播  比分直播
22:00 意甲第15轮 热那亚 - 罗马 CCTV5+ 手机看直播  比分直播 
            ……
            ……
irb> detail.fajia
00:00 法甲第18轮 甘冈 - 巴黎圣日耳曼   乐视直播 手机看直播  比分直播
00:00 法甲第18轮 里尔 - 图卢兹  手机看直播  比分直播 
04:00 法甲第18轮 摩纳哥 - 马赛 等待更新 手机看直播  比分直播
            ……
            ……
```

## Contributing

1. Fork it ( https://github.com/jyootai/sports_events/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
