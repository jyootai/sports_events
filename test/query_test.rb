require 'minitest/autorun'
require 'sports_events'

class QueryTest < Minitest::Test
  def test_query
    illegal_date = Time.now.day-2
    legal_date = Time.now.day
    sports_events1 =  SportsEvents.query("#{illegal_date}")
    assert_equal "http://www.zhibo8.cc", SportsEvents::Uri
    assert_equal sports_events1.data,"对不起，暂无赛事数据提供"
  end
end
