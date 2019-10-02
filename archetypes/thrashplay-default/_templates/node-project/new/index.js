const path = require('path')
const appRoot = require('app-root-path')

module.exports = {
    params: ({args}) => {
        return {
            scriptsDir: path.resolve(appRoot.path, 'scripts'),
            sandboxDir: path.resolve(appRoot.path, '..'),
            projectDir: path.resolve(appRoot.path, '..', args.name),
        }
    }
}
