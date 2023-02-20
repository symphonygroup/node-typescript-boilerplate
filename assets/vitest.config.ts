import { defineConfig } from 'vitest/config';

export default defineConfig({
  test: {
    include: ['tests/**/*.test.ts'],
    reporters: 'default',
    maxThreads: 4,
    minThreads: 1,
    coverage: {
      all: true,
      enabled: true,
      include: ['src/**/*.ts'],
      statements: 95,
      branches: 80
    },
    mockReset: true,
    silent: true,
    watch: false
  }
});
