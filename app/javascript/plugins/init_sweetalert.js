import { formElements } from '@rails/ujs';
import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    const form = document.querySelector("#new_booking")
    swalButton.addEventListener('click', () => {
      swal(options);
    });
  }
};

const SweetAlertButton = () => {
  const form = document.getElementById("new_booking");
  if (form) {
    const button = document.getElementById("sweet-alert-demo")
    button.addEventListener("click", () => {
      console.log("hello")
      const swalbutton = document.querySelector(".swal-button--confirm");
      console.log(swalbutton)
      swalbutton.addEventListener("click", () => {
        form.submit();
      });
    });
  }
}

export { initSweetalert, SweetAlertButton };
