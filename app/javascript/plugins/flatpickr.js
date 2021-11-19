import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const dates = document.querySelector(".date-booked");
  if (dates) {
  flatpickr(".datepicker", {
    inline: true,
    mode: "range",
    minDate: "today",
    disable: JSON.parse(dates.dataset.dates),
  });
  }
}

export { initFlatpickr };
