#Test Cases:

Test.describe("Basic tests") do
  Test.assert_equals(mph('00:01:09.77'), '128.995 mph', 'AJohnnie Parsons in 1950')
  Test.assert_equals(mph('00:00:57.14'), '157.508 mph', 'A. J. Foyt in 1965')
  Test.assert_equals(mph('00:00:40.436'), '222.574 mph', 'Emerson Fittipaldi and Arie Luyendyk tied for fastest lap to three decimal places in 1990')
  Test.assert_equals(mph('00:00:39.2692'), '229.187 mph', 'Tony Kanaan (my personal favorite) in 2003')
  Test.assert_equals(mph('00:00:39.1501'), '229.884 mph', 'Danica Patrick in 2005')
  Test.assert_equals(mph('02:40:03.4181'), '0.937 mph', 'Wow.. That is 187.433 mph for a whole race by Tony Kanaan in 2013!')
end

Test.describe("Random tests") do
  def randint(a,b) rand(b-a+1)+a end
  def sol(lap_time)
	t = lap_time.split(":").map(&:to_f)
	h = t[0] + t[1]/60 + t[2]/60/60
	(sprintf "%.3f", 2.5/h) + ' mph'
  end
  40.times do
    lap_time = "#{randint(0,23)}:#{randint(0,59)}:#{randint(0,59)}:#{randint(0,999999)/1000.0}"
    expected = sol(lap_time)
    Test.it("Testing for the expected value of #{expected}") do
      Test.assert_equals(mph(lap_time),expected,"It should work for random inputs too")
    end
  end
end

#------------------------------
#Solution:

def mph(lap_time)
  t = lap_time.split(":").map(&:to_f)
  h = t[0] + t[1]/60 + t[2]/60/60
  (sprintf "%.3f", 2.5/h) + ' mph'
end