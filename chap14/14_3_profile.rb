def profile block_description, &block
  profiling_required = false

  if profiling_required
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end

  puts "#{number.to_s.length} digits"
end
