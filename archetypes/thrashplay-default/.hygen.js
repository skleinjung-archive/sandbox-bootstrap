const path = require('path')
const appRoot = require('app-root-path')

// noinspection JSUnusedGlobalSymbols
module.exports = {
  helpers: {
    getScriptsDir: () => {
      return path.resolve(appRoot.path, 'scripts')
    },
    getSandboxDir: () => {
      return path.resolve(appRoot.path, '..')
    },
    getProjectDir: (name) => {
      return path.resolve(appRoot.path, '..', name)
    },
  }
}