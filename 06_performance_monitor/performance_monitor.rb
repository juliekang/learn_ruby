def measure(count = 1)
  start = Time.now
  count.times { yield }
  stop = Time.now
  (stop - start) / count
end