def measure(count = 1)
  start_time = Time.now
    count.times do 
      yield
    end
  end_time = Time.now
  return (end_time - start_time) / count
end