#!/bin/bash
set -e

function show_usage() {
    cat <<EOF

Bootstraps a new code sandbox.

usage: sandbox-bootstrap.sh [args]

Prerequisites:

  - curl must be installed and on the path
  - git must be installed and on the path
  - yarn must be installed and on the path

The following arguments can be specified:
  --help            show this usage information
  --name            the name of the sandbox to create [Default: 'sandbox']

EOF
    exit 1
}

function process_arguments() {
    HELP=false
    UNKNOWN_OPTIONS=false
    MISSING_OPTIONS=false

    for i in "$@"
    do
    case $i in
        --help)
        HELP=true
        shift # past argument=value
		;;
        --name=*)
        SANDBOX_NAME="${i#*=}"
        shift # past argument=value
        ;;
        *)
        UNKNOWN_OPTIONS=true
        echo Unknown option: ${i}
        shift
        ;;
    esac
    done

    # default values
    if [[ -z "$SANDBOX_NAME" ]]; then
        SANDBOX_NAME=sandbox
    fi

    if [[ "${HELP}" = "true" ]]; then
        show_usage
    fi

    if [[ "${UNKNOWN_OPTIONS}" = "true" ]]; then
        show_usage
    fi
    if [[ "${MISSING_OPTIONS}" = "true" ]]; then
        show_usage
    fi
}
process_arguments $@

set -x
mkdir ${SANDBOX_NAME} -p
cd ${SANDBOX_NAME}

rm -rf .bootstrap
rm -f hygen
mkdir .bootstrap && curl -L https://github.com/thrashplay/sandbox-bootstrap/tarball/master | tar -zxv -C .bootstrap --strip-components 3 --wildcards --no-anchored 'archetypes/*'

set +x
cat <<EOF > hygen
#!/bin/bash
cd .bootstrap && hygen "\$@"
EOF
set -x
chmod +x hygen

cd .bootstrap
yarn



