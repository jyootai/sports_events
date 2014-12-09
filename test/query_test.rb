require 'minitest/autorun'
require 'sports_events'

class QueryTest < Minitest::Test
  def test_query
    date=Time.now.day-2
    sports_events =  SportsEvents.query("#{date}")
    assert_equal "http://www.zhibo8.cc", SportsEvents::Uri
    assert_equal sports_events.data,"对不起，暂无赛事数据提供"
  end
end
