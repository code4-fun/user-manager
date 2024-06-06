const { faker } = require('@faker-js/faker')
const bcryptjs = require('bcryptjs')

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    const fakeUsers = [];

    function getRandomDate(start, end) {
      return new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()))
    }

    function getRandomPhoto() {
      const extensions = ['jpeg', 'jpg', 'png']
      const extension = faker.helpers.arrayElement(extensions)
      return faker.datatype.boolean() ? `${faker.string.uuid()}.${extension}` : null
    }

    for (let i = 0; i < 100; i++) {
      const name = faker.person.firstName();
      const hashedPassword = bcryptjs.hashSync(name, 7)

      fakeUsers.push({
        id: faker.string.uuid(),
        name: name,
        lastName: faker.helpers.arrayElement([faker.person.lastName(), null]),
        email: faker.internet.email(),
        password: hashedPassword,
        sex: faker.helpers.arrayElement(['Male', 'Female', null]),
        photo: getRandomPhoto(),
        refreshToken: faker.string.uuid(),
        createdAt: getRandomDate(new Date(2020, 0, 1), new Date()),
      });
    }

    await queryInterface.bulkInsert('Users', fakeUsers, {});
  },

  async down(queryInterface) {
    await queryInterface.bulkDelete('Users', null, {});
  }
};
