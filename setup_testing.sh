# Install Necessary Packages for testing
npm install --save-dev jest @testing-library/react @testing-library/jest-dom

# Install jest-environment-jsdom
npm install --save-dev jest-environment-jsdom

# Update glob
npm install --save-dev glob@latest

# Install babel-plugin-module-resolver and  any missing Babel presets if they are not already part of your project
npm install --save-dev babel-plugin-module-resolver
npm install --save-dev @babel/preset-env @babel/preset-react @babel/preset-typescript

# Create a jest.config.js file in project root or configure Jest in your package.json
module.exports = {
  testEnvironment: 'jest-environment-jsdom',
  setupFilesAfterEnv: ['@testing-library/jest-dom'],
  transform: {
    '^.+\\.(js|jsx|ts|tsx)$': 'babel-jest'
  },
  moduleNameMapper: {
    '^@/lib/utils$': '<rootDir>/src/lib/utils'
  }
};



