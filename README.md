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
```

## Contributing

1. Fork it ( https://github.com/jyootai/sports_events/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
