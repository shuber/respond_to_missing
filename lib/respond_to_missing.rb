# Defines <tt>Object#respond_to_missing?</tt> and patches <tt>Object#respond_to?</tt> unless this functionality has already been implemented (ruby versions 1.9+)
module RespondToMissing
  autoload :Version, 'respond_to_missing/version'

  def respond_to?(method_name, include_private = false)
    super || !!respond_to_missing?(method_name, include_private)
  end

  def respond_to_missing?(method_name, include_private)
    false
  end
end

Object.send(:include, RespondToMissing) unless respond_to?(:respond_to_missing?)