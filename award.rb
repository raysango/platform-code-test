class Award
  TYPES = {'Blue First' => 'BlueFirst', 'Blue Distinction Plus' => 'BlueDistinctionPlus', 'Blue Compare' => 'BlueCompare', 'Blue Star' => 'BlueStar'}

  def initialize(name, expires_in, quality)
    @award = TYPES[name] ? Object.const_get("Awards::#{TYPES[name]}").new : Awards::Base.new
    @award.init_values(expires_in, quality)
  end

  def quality
    @award.quality
  end

  def expires_in
    @award.expires_in
  end

  def requalify
    @award.requalify
  end

  def expire
    @award.expire
  end
end
