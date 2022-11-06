class Thermostat {
  constructor() {
    this.temperature = 20;
    this.powerSavingMode = false;
  }

  getTemperature() {
    if (this.temperature > 25 && this.powerSavingMode === true) this.temperature = 25;
    return this.temperature;
  }

  up() {
    this.temperature += 1;
  }

  down() {
    this.temperature -= 1;
  }

  setPowerSavingMode(state) {
    this.powerSavingMode = state;
  }

  reset() {
    this.temperature = 20;
  }
}
module.exports = Thermostat;
