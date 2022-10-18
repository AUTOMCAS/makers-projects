class UserBase {
  constructor(userArray) {
    this.userArray = userArray;
  }

  count() {
    return this.userArray.length;
  }

  getNames() {
    return this.userArray.map((user) => {
      return user.getName();
    });
  }

  getIntroductions() {
    return this.userArray.map((user) => {
      return `Hi, my name is ${user.getName()}`;
    });
  }
}

module.exports = UserBase;
