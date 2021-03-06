import Rails from "@rails/ujs"

const initSelectForm = () => {
  const seshForm = document.getElementById("seshSelectorForm");
  if (!seshForm) return;

  const updateSessions = document.getElementById("sesh_selector");
  updateSessions.addEventListener("change", () => {
    seshForm.submit();
  });
};

export { initSelectForm };
