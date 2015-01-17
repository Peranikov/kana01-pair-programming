class Kana01
  def self.compute(formula)
    or_parse(formula)
    and_parse(formula)
    add(formula)
    multipli(formula)

    formula.to_i
  end

  def self.add(formula)
    while true
      regexp = /(\d*\+\d*)/
      match = formula.match(regexp)
      return if match.nil?
      answer = eval(match[1])
      formula.sub!(regexp, answer.to_s)
    end
  end

  def self.multipli(formula)
    while true
      regexp = /(\d*\*\d*)/
      match = formula.match(regexp)
      return if match.nil?
      answer = eval(match[1])
      formula.sub!(regexp, answer.to_s)
    end
  end

  def self.and_parse(formula)
    while true
      regexp = /(\d*\&\d*)/
      match = formula.match(regexp)
      return if match.nil?
      answer = eval(match[1])
      formula.sub!(regexp, answer.to_s)
    end
  end

  def self.or_parse(formula)
    while true
      regexp = /(\d*\|\d*)/
      match = formula.match(regexp)
      return if match.nil?
      answer = eval(match[1])
      formula.sub!(regexp, answer.to_s)
    end
  end
end
