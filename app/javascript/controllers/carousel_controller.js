import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "dot"]

  connect() {
    this.index = 0
    this.startX = 0
    this.element.addEventListener("touchstart", this.onTouchStart.bind(this), { passive: true })
    this.element.addEventListener("touchend", this.onTouchEnd.bind(this), { passive: true })
    this.update()
  }

  disconnect() {
    this.element.removeEventListener("touchstart", this.onTouchStart.bind(this))
    this.element.removeEventListener("touchend", this.onTouchEnd.bind(this))
  }

  onTouchStart(e) {
    this.startX = e.touches[0].clientX
  }

  onTouchEnd(e) {
    const delta = e.changedTouches[0].clientX - this.startX
    if (Math.abs(delta) < 30) return
    delta < 0 ? this.next() : this.prev()
  }

  next() {
    this.index = (this.index + 1) % this.slideTargets.length
    this.update()
  }

  prev() {
    this.index = (this.index - 1 + this.slideTargets.length) % this.slideTargets.length
    this.update()
  }

  update() {
    this.slideTargets.forEach((slide, i) => {
      slide.classList.toggle("hidden", i !== this.index)
    })
    this.dotTargets.forEach((dot, i) => {
      dot.classList.toggle("opacity-100", i === this.index)
      dot.classList.toggle("opacity-30", i !== this.index)
    })
  }
}
