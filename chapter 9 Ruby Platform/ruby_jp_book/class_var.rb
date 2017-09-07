class Quiz5
    @@v1 = 1
    def v1; @@v1; end
    def v1=(value); @@v1 = value; end
end
class Quiz5Ext < Quiz5
end
quiz5 = Quiz5.new
 #quiz5.v1 = 10 #1
 puts quiz5.v1
 quiz5ext = Quiz5Ext.new
 puts quiz5ext.v1
 quiz5ext.v1 = 10
 puts quiz5.v1
 quiz5.v1 = 100
 puts quiz5ext.v1
  class Quiz6
      @@v1 = 1
      def v1; @@v1; end
    end
    class Quiz6Ext < Quiz6
        @@v1 = 2
    end
    puts Quiz6.new.v1
