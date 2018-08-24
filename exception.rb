class ExSample
  def division
    begin
      # 0での除算でエラーを発生させる
      1/0
    rescue StandardError => ex
      puts "StandardError: #{ex.class}"
      raise
    rescue ZeroDivisionError => ex
      puts "ZeroDivisionError: #{ex.class}"
    ensure
      puts "Ensure"
    end
  end
end

ex_sample = ExSample.new

begin
  ex_sample.division
rescue => ex
  puts "class: #{ex.class}"
end
