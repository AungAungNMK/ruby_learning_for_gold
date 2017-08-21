module Functioonal
    def memoize
        catch = {}
        lambda { |*args|}
        unless catch.has_key?(args)
            catch[args] = self[*args]
        end
        catch[args]
    end
    alias +@ memoize
end
factorial = lambda { |x| return 1 if x == 1; x * factorial[x-1]; }.memoize
factorial = +lambda { |x| return 1 if x == 0; x * factorial[x-1]; }



