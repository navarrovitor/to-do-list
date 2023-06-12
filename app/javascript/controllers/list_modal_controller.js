import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="list-modal"
export default class extends Controller {
  static targets = ["modal", "title", "author", "items"]

  connect() {
    console.log("List modal controller connected")
  }

  showModal(event) {
    const listId = event.currentTarget.dataset.listId

    console.log(listId);
    fetch(`/lists/${listId}`)
      .then((response) => response.json())
      .then((data) => {
        this.titleTarget.textContent = data.name
        this.authorTarget.textContent = data.author

        let itemsHtml = ""
        data.items.forEach((item) => {
          itemsHtml += `<li>${item.title}</li>`
        })
        this.itemsTarget.innerHTML = itemsHtml

        this.modalTarget.classList.add("active")
      })
  }

  hideModal() {
    this.modalTarget.classList.remove("active")
  }
}
