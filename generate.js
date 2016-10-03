module.exports = function(){
        var faker = require("faker");
        var _ = require("lodash");
        return {
                people: _.times(100, function (n) {
                        return {
                                id: n,
                                name: faker.name.findName(),
                                avatar: faker.internet.avatar(),
                                email: faker.internet.email(),
                                company: faker.company.companyName(),
                                address: {
                                        zip: faker.address.zipCode(),
                                        city: faker.address.city(),
                                        streetName: faker.address.streetName(),
                                        streetAddress: faker.address.streetAddress(),
                                        state: faker.address.state()
                                }
                        }
                })
        }
}
