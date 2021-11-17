import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('house_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
