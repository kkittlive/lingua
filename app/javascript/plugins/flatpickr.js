import flatpickr from "flatpickr"
import "flatpickr/dist/themes/light.css" // Note this is important!

const date = new Date();
const roundMinutes = (date) => {

    date.setHours(date.getHours() + Math.ceil(date.getMinutes()/60));
    date.setMinutes(0);

    return date;
}

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true,
  defaultDate: roundMinutes(date),
  minuteIncrement: 15,
  minDate: "today",
  maxDate: new Date().fp_incr(90),
  minTime: "07:00",
  maxTime: "22:00",
  time_24hr: true
})
