# Innago Cosign Public Key #

To verify the signature of one of our images, you can run a command similar to the one below.

```shell
cosign verify ghcr.io/innago-property-management/black-hole:1.0.0 \
  --key https://raw.githubusercontent.com/innago-property-management/innago-cosign-public-key/refs/heads/main/cosign.pub
```

For more information, see [cosign - verifying signatures](https://docs.sigstore.dev/cosign/verifying/verify/).

If you use OPA Gatekeeper, there is a cosign integration. See [https://github.com/sigstore/cosign-gatekeeper-provider](https://github.com/sigstore/cosign-gatekeeper-provider).

If you use Kyverno, you can find instructions for verification at [https://kyverno.io/docs/writing-policies/verify-images/sigstore/](https://kyverno.io/docs/writing-policies/verify-images/sigstore/).
