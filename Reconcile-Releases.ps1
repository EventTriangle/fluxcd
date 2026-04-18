flux reconcile helmrelease auth-release -n flux-system --with-source
flux reconcile helmrelease consumer-release -n flux-system --with-source
flux reconcile helmrelease sender-release -n flux-system --with-source