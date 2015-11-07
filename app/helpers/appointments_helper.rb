module AppointmentsHelper
  def appointment_summary(appointment)
    if current_user.admin?
      "#{appointment.user.full_name}: #{appointment_format_time(appointment.start_time)} - #{appointment_format_time(appointment.end_time)}"
    else
      "#{appointment_format_time(appointment.start_time)} - #{appointment_format_time(appointment.end_time)}"
    end
  end

  def appointment_format_time(time)
    time.strftime('%H:%M')
  end
end
