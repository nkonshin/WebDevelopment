class Proisvodnaya
    def initialize(n)
        @n = n
        if @n == 1 then
            y0 = Math.sin(0.49)
            y1 = Math.sin(0.5)
            y2 = Math.sin(0.51)
        else
            y0 = Math.sin(0.49+1)/Math.cos(0.49+1)
            y1 = Math.sin(0.5+1)/Math.cos(0.5+1)
            y2 = Math.sin(0.51+1)/Math.cos(0.51+1)
        end
        differ(y0,y1,y2)
    end
    
    def differ(y0,y1,y2)
        h = 0.01
        @y01 = ((-1)*3*y0+4*y1-y2)/(2*h)
        @y11 = ((-1)*y0+y2)/(2*h)
        @y21 = (y0-4*y1+3*y2)/(2*h)
        a = @y01+@y11+@y21
        puts a
        return a
    end
    
    def visov(lam = nil)
        if block_given?
            yield(@y01,@y11,@y21)
        elsif lam
            lam.call(@y01,@y11,@y21)
        end
    end
end
