import { Config } from 'jest';

const config: Config = {
  transform: {
    '^.+\\.(t|j)s$': 'ts-jest'
  },
  collectCoverage: true,
  testRegex: ['tests\\/.*\\.test\\.ts$'],
  collectCoverageFrom: ['src\\/**\\/*\\.ts'],
  coverageThreshold: {
    global: {
      statements: 90,
      branches: 80
    }
  },
  testEnvironment: 'node',
  maxWorkers: 4,
  silent: true,
  testTimeout: 10_000,
  forceExit: true
};

export default config;
