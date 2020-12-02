import Rails from "@rails/ujs"

const initSelectForm = () => {
  const seshForm = document.getElementById("seshSelectorForm");
  const updateSessions = document.getElementById("sesh_selector");
  updateSessions.addEventListener("change", () => {
    seshForm.submit();
  });
};

export { initSelectForm };
