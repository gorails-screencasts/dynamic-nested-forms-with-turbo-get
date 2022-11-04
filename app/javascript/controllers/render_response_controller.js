import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

// Connects to data-controller="render-response"
export default class extends Controller {
  connect() {
  }

  async getTaskPartial () {
    const response = await get("/projects/task_field", {responseKind: "turbo-stream"});
  }
}
