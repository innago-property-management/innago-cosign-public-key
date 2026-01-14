#!/usr/bin/env bash

echo "test" > test.txt

cosign sign-blob --key cosign.key ./test.txt --output-signature ./test.sig --bundle ./test.txt.cosign.bundle

cosign verify-blob --key ./cosign.pub --bundle ./test.txt.cosign.bundle  test.txt

gh secret set COSIGN_KEY --org innago-property-management --visibility all < cosign.key
base64 <<< cosign.key > cosign.key.base64 
gh secret set COSIGN_KEY_ENCODED --org innago-property-management --visibility all < cosign.key.base64
gh secret set COSIGN_PASSWORD --org innago-property-management --visibility all < .cosign-password.txt

