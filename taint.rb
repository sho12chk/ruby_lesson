$SAFE = 1

begin
  safe = "puts '安全'"
  eval(safe)

  unsafe = "危険"
  unsafe.taint
  eval(unsafe)
rescue SecurityError
  p "危険：#{$!}"
end
