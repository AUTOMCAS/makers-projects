const Thermostat = require('./thermostat');

const thermostat = new Thermostat();

describe('Thermostat', () => {
  describe('getTemperature()', () => {
    it('returns temperature', () => {
      expect(thermostat.getTemperature()).toEqual(20);
    });
  });

  describe('up()', () => {
    it('increases temperature by 2', () => {
      thermostat.up();
      thermostat.up();
      expect(thermostat.getTemperature()).toEqual(22);
    });
  });

  describe('down()', () => {
    it('decreases temperature by 1', () => {
      thermostat.down();
      expect(thermostat.getTemperature()).toEqual(21);
    });
  });

  describe('setPowerSavingMode()', () => {
    it('caps max temperature at 25', () => {
      thermostat.setPowerSavingMode(true)
      for (let i = 0 ; i < 10 ; i++) {
        thermostat.up();
      }
      expect(thermostat.getTemperature()).toEqual(25);
    });

    it('can be turned off', () => {
      thermostat.setPowerSavingMode(false)
      thermostat.up();
      expect(thermostat.getTemperature()).toEqual(26);
    });
  });

  describe('reset()', () => {
    it('resets temperature', () => {
      thermostat.reset();
      expect(thermostat.getTemperature()).toEqual(20);
    });
  });
});
