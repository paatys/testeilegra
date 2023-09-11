const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    "viewportWidth": 1380,
    "viewportHeight": 720,
    defaultCommandTimeout: 5000,
    baseUrl:'https://blogdoagi.com.br/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
