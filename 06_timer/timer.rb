def format(h,m,s)
  f_res = ''
  if h < 10
    f_res += '0' + h.to_s + ':'
  else
    f_res += h.to_s + ':'
  end

  if m < 10
    f_res += '0' + m.to_s + ':'
  else
    f_res += m.to_s + ':'
  end

  if s < 10
    f_res += '0' + s.to_s
  else
    f_res += s.to_s
  end

  return f_res
end

class Timer
  #write your code here
  attr_reader :seconds

  def initialize
    @seconds = 0
  end
  
  def seconds=(s)
    @seconds = s
  end

  def time_string
    if @seconds < 60
      @hr = 0
      @min = 0
      @sec = @seconds
      return format(0,0,@sec)
    elsif @seconds >= 60 && @seconds < 3600
      @hr = 0
      @min = @seconds/60
      @sec = @seconds%60
      return format(@hr,@min,@sec)
    else
      @hr = @seconds/3600
      if @seconds%3600 < 60
        @min = 0
        @sec = @seconds%3600
      else
        @min = (@seconds%3600)/60
        @sec = @seconds - @hr*3600 - @min*60
      end
      return format(@hr,@min,@sec)
    end
  end
end
