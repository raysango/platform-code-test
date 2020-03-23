module Awards
  class BlueFirst < Base
    def requalify
      upgrade
      upgrade if @expires_in <= 10
      upgrade if @expires_in <= 5
      check_min_quality
    end

    def check_min_quality
      @quality = MIN_QUALITY if (@quality < MIN_QUALITY) || (@expires_in < 0)
    end
  end
end