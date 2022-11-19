# What is a VPC?
A [Virtual Private Cloud (VPC) network](https://cloud.google.com/vpc/docs/vpc) or "network" is a private, isolated section of your cloud infrastructure. Networks are a virtual version of a physically segregated network that control connections between your resources and services both on Google Cloud and outside of it.

Networks are global, and a single network can be used for all of your GCP resources across all regions. Subnetworks, ranges of IP addresses within a single region, can be used to usefully partition your private network IP space.

# What is a GKE cluster?
The [GKE Cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview), or "cluster master", runs the Kubernetes control plane processes including the Kubernetes API server, scheduler, and core resource controllers.

The master is the unified endpoint for your cluster; it's the "hub" through which all other components such as nodes interact. Users can interact with the cluster via Kubernetes API calls, such as by using kubectl. The GKE cluster is responsible for running workloads on nodes, as well as scaling/upgrading nodes.
