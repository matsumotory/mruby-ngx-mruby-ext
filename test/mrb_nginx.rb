##  
## Nginx Test
##

assert("Nginx#hello") do
  t = Nginx.new "hello"
  assert_equal("hello", t.hello)
end

assert("Nginx#bye") do
  t = Nginx.new "hello"
  assert_equal("hello bye", t.bye)
end

assert("Nginx.hi") do
  assert_equal("hi!!", Nginx.hi)
end
