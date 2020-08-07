[Service]
Environment=CONCOURSE_WORK_DIR=/etc/concourse/work-dir
Environment=CONCOURSE_TSA_PUBLIC_KEY=/etc/concourse/host_key.pub
Environment=CONCOURSE_TSA_WORKER_PRIVATE_KEY=/etc/concourse/worker_key
%{ if use_containerd ~}
Environment=CONCOURSE_RUNTIME=containerd
%{ else ~}
Environment=CONCOURSE_GARDEN_CONFIG=/etc/concourse/garden.ini
%{ endif ~}
