import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    mode: "range",
    minDate: "today",
  });
}

export { initFlatpickr };
