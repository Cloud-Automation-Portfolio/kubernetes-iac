#!/bin/bash
minikube start \
  --extra-config=apiserver.enable-admission-plugins=NamespaceLifecycle,LimitRanger,ServiceAccount,DefaultStorageClass,ResourceQuota,PodSecurityPolicy \
  --extra-config=apiserver.audit-log-path=/var/log/audit.log
