import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

// Connects to data-controller="render-response"
export default class extends Controller {
  connect() {
  }

  async getTaskPartial () {
    const response = await get("/projects/task_field");

    if (response.ok) {
      const body = await response.html;
      const tasksSection = document.querySelector("#tasks");
      const templateElement = document.createElement("template");
      templateElement.innerHTML = body;

      tasksSection.appendChild(templateElement.content.firstElementChild);
    }
  }
}
