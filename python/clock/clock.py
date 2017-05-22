class Clock(object):

    def __init__(self,hour,minute):
        if(hour<0):
            hour+= ((hour // 24)+1)*24
        if (minute<0):
            minute+= ((minute // 60)+1)*60
        self.hour = hour % 24
        self.minute = minute % 60

    def add(self, minute):
        self.minute+=minute
        if(self.minute>=60):
            m = self.minute  // 60
            self.minute-= m*60
            self.hour+= m
        if(self.hour>=24):
            h = self.hour // 24
            self.hour-= h*24
        return self

    def __str__(self):
        if(self.minute<10):
            minute =str(0)+str(self.minute)
        else:
            minute = str(self.minute)

        if(self.hour<10):
            hour =str(0)+str(self.hour)
        else:
            hour = str(self.hour)
        return hour+":"+minute

    def __eq__(self, clock):
        if(self.hour == clock.hour and self.minute == clock.minute):
            return True
        return False
