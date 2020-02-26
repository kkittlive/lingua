import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true,
  defaultDate: new Date(),
  minuteIncrement: 15,
  minDate: "today",
  maxDate: new Date().fp_incr(90),
  minTime: "07:00",
  maxTime: "22:00",
})
