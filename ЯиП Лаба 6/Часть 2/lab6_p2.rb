def schet(e)
    en = Enumerator.new do |y|
        n = 1.0
        y1 = n / (n*n+2)
        loop do
            y.yield y1
            n = n + 1
            y1 = n / (n*n+2)
        end
    end
    en.find { |x| x < e }
end
