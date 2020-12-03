const showForm = () => {

  const sessionCards = document.querySelectorAll(".session-card");
  sessionCards.forEach( (sessionCard) => {

    const updateDescriptionForm = sessionCard.querySelector(".update-description");
    const editButtonDescription = sessionCard.querySelector(".edit-button-description");

    editButtonDescription.addEventListener('click', event => {
      updateDescriptionForm.classList.toggle("hidden");
    });

  })

}

export { showForm }
