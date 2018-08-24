ObjectSpace.each_object(Class) do |klass|
  puts klass.name
end
