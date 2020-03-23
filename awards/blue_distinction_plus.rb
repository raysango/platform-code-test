module Awards
  class BlueDistinctionPlus < Base
    MAX_QUALITY = 80

    def requalify
      @quality = MAX_QUALITY
    end

    def expire
      @expires_in
    end

  end
end