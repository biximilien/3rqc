module Schedule
  class TimeSlot
    attr_accessor :begin_at, :end_at

    def initialize(begin_at, end_at)
      @begin_at = begin_at
      @end_at = end_at
    end

    def reserve(user)
      ScheduleTimeSlot.create!(user: user, time_range: (@begin_at..@end_at))
    end
  end
end
