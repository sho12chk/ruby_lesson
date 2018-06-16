def nil_test(val=nil)
  val ||= "default"
end

p nil_test()
# "default"
p nil_test("test")
# "test"