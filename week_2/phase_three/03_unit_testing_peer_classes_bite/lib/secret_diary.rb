class SecretDiary
  def initialize(diary)
    @diary = diary
    @locked = true
  end

  def read
    fail "Go away!" if @locked == true
    return @diary.read
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
