import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const dates = document.querySelector(".date-booked");
  flatpickr(".datepicker", {
    mode: "range",
    minDate: "today",
    disable: JSON.parse(dates.dataset.dates),
  });
}

export { initFlatpickr };
