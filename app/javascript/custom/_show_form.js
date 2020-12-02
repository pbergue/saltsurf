const showForm = () => {

  const sessionCards = document.querySelectorAll(".session-card");
  sessionCards.forEach( (sessionCard) => {

    const updateDescriptionForm = sessionCard.querySelector(".update-description");
    const editButtonDescription = sessionCard.querySelector(".edit-button-description");

    const updateRatingForm = sessionCard.querySelector(".update-rating");
    const editButtonRating = sessionCard.querySelector(".edit-button-rating")

    editButtonRating.addEventListener('click', event => {
      updateRatingForm.classList.toggle("hidden");

    });

    editButtonDescription.addEventListener('click', event => {
      updateDescriptionForm.classList.toggle("hidden");
    });

  })

}

export { showForm }
