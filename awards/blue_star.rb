module Awards
  class BlueStar < Base

    def requalify
      check_expiration
      2.times { degrade }
    end

    def check_expiration
      @quality -= 2 if @expires_in <= 0
    end
  end
end