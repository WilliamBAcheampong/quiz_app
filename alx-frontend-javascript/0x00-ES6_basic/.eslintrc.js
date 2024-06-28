module.exports = {
  env: {
    browser: true,
    node: true,
    es6: true,
  },
  extends: [
    'eslint:recommended',
    // Add more eslint configurations or plugins here as needed
  ],
  parserOptions: {
    ecmaVersion: 2021, // Use the latest ECMAScript standard you are using
    sourceType: 'module', // Allows for the use of imports
  },
  rules: {
    // Add specific rules and overrides here
  },
};

