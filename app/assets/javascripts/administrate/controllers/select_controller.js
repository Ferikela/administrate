import { Controller } from "@hotwired/stimulus";
import $ from "jquery";

export default class extends Controller {
  connect() {
    console.log("Hello there!", this.element);
    $(this.element).selectize({
      allowEmptyOption: true
    });
  }
};
