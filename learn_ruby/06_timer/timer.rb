class Timer
  #write your code here
  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end
  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def time_string
    hr = @seconds/3600
    min = (@seconds%3600)/60
    sec = @seconds%60
    "#{'%02d' % hr }:#{'%02d' % min}:#{'%02d' % sec}"
  end

end
