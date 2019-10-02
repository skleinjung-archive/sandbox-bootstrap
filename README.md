# sandbox-bootstrap

Utility used to create new development sandbox folders, with basic project management utilities.

## Usage
To generate a new sandbox, use the following commands:

```bash
curl -o sandbox-bootstrap.bash https://raw.githubusercontent.com/thrashplay/sandbox-bootstrap/master/scripts/sandbox-bootstrap.bash
chmod +x sandbox-bootstrap.bash
./sandbox-bootstrap.bash
```

## Generators
Once the sandbox is bootstrapped, several generators will be available in the sandbox root. These are all
callable by using the `hygen` script in the sandbox.

### Create a Node Project
`hygen node-project new --name <NAME> [--license <SPDX_LICENSE_ID>]`

Creates a new Node project with the given name and license information. Available license IDs can be 
retrieved by running `.bootstrap/scripts/fetch-license-ids.js`.

### [WIP] Interactively Create a Node Project
`hygen node-project interactive`

Creates a Node project by answering a series of questions.

