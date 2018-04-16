$LOAD_PATH.unshift '.'
autodir = 'somedir'
Dir.glob("#{autodir}/*.rb").each do |f|
  require f
end
puts "hello world"
