class UberHash < Hash
  def initialize
    @collection = {}
  end

  def method_missing(method_id, *args)
    if method_id[-1] == '='
      key = method_id[0..-2]
      @collection[key.to_sym] = args.first
    else
      @collection[method_id]
    end
  end
end
