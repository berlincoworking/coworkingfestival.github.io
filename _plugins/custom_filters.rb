module Jekyll
  module CustomFilters
    # adds proper date/time to each event based on start date & event weekday and time
    # Tuesday, 06:45 PM, 2022-09-05 -> 2022-09-06 18:45
    def add_start_datetime(events, events_meta)
      start_date = Date.parse(events_meta['start_date']) # '2022-09-05'
      event_days = events_meta['days'].split # ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']

      events.map do |event|
        weekday = event['weekday'].strip
        start_time = event['start_time'].strip
        weekday_index = event_days.index(weekday) || event_days.count
        date = start_date + weekday_index
        time = Time.parse(start_time)
        datetime = DateTime.new(date.year, date.month, date.day, time.hour, time.min, time.sec)
                           .strftime('%F %H:%M') # "2022-09-05 13:00"
        event.merge({ 'start_datetime' => datetime })
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomFilters)
