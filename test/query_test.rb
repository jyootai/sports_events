require 'minitest/autorun'
require 'sports_events'

class QueryTest < Minitest::Test
	def test_query
		date=Time.now.day-2
		assert_equal "http://www.zhibo8.cc", SportsEvents::Uri
		assert_equal SportsEvents.query("#{date}"),"对不起，暂无赛事数据提供"
	end
end
