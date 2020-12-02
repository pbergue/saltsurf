import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ 'star' ]

  connect() {
  }

  colorStar(event) {
    const id = event.target.dataset.id;
    this.colorAllStars(id);
  }

  colorAllStars(id) {
    this.starTargets.forEach((star)=>{
      if (star.dataset.id <= id) {
        star.classList.remove('far');
        star.classList.add('fas');
      }
      else {
        star.classList.remove('fas');
        star.classList.add('far');
      }
    })
  }

  setRating(event) {
    const rating = event.target.dataset.id;
    const id = this.data.get("sessionid");
    Rails.ajax( {
      type: "patch",
      url: `/profile/sessions/${id}/update_rating`,
      data: `rating=${rating}`,
      success: (data) => {
        console.log("Grand success", data);
        this.data.set("rating", rating);
      },
      error: (data) => {console.log("Grand error", data)}
    } )
  }

  resetRating(event) {
    this.colorAllStars(this.data.get("rating"));
  }
}
