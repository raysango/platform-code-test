module Awards
  class Base
    attr_accessor :expires_in, :quality
    MAX_QUALITY = 50
    MIN_QUALITY = 0

    def init_values(expires_in, quality)
      @expires_in = expires_in
      @quality = quality
    end

    def requalify
      check_expiration
      degrade
    end

    def upgrade
      check_min_quality
      @quality += 1
      check_max_quality
    end

    def check_max_quality
      @quality = MAX_QUALITY if @quality > MAX_QUALITY
    end

    def degrade
      @quality -= 1
      check_min_quality
    end

    def check_min_quality
      @quality = MIN_QUALITY if (@quality < MIN_QUALITY)
    end

    def check_expiration
      @quality -= 1 if @expires_in <= 0
    end

    def expire
      @expires_in -= 1
    end
  end
end