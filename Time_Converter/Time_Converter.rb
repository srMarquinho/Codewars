# TEST CASES

Test.describe("Basic tests") do
Test.assert_equals(convert(Time.new(2016, 2, 8, 16, 42, 59)), "16:42:59,000")
Test.assert_equals(convert(Time.new(1951, 10, 31, 2, 2, 24.4)), "02:02:24,399")
Test.assert_equals(convert(Time.new(1523, 5, 29, 23, 2, 2.01)), "23:02:02,009")
Test.assert_equals(convert(Time.new(1850, 12, 30, 23, 59, 59.876, "-02:00")), "23:59:59,875")
Test.assert_equals(convert(Time.new(1850, 12, 30, 23, 59, 59.8763, "-02:00")), "23:59:59,876")
Test.assert_equals(convert(Time.new(1850, 12, 30, 13, 39, 19)), "13:39:19,000");
Test.assert_equals(convert(Time.new(1978, 3, 18, 12, 0, 0, 0)), "12:00:00,000");
Test.assert_equals(convert(Time.new(1850, 12, 30, 11, 11, 11.15)), "11:11:11,150");
Test.assert_equals(convert(Time.new(1850, 12, 30, 0, 0, 0.470)), "00:00:00,469");
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(time) time.strftime("%H:%M:%S,%L") end
40.times do
  time=Time.new(1,1,1,randint(0,23),randint(0,59),randint(0,59),randint(0,999999)/1000.0)
  expected=sol(time)
  Test.it("Testing for the expected value of #{expected}") do
  Test.assert_equals(convert(time),expected,"It should work for random inputs too")
  end
end
end

#-------------------------------

# SOLUTION
def convert(time)
  time.strftime("%H:%M:%S,%L")
end