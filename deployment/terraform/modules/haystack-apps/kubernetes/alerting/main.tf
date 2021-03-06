module "metric-router" {
  source = "metric-router"
  image = "expediadotcom/haystack-adaptive-alerting-metric-router:${var.metric-router["version"]}"
  replicas = "${var.metric-router["metric_router_instances"]}"
  namespace = "${var.app_namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  graphite_hostname = "${var.graphite_hostname}"
  node_selecter_label = "${var.node_selector_label}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.metric-router["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.metric-router["metric_router_cpu_limit"]}"
  cpu_request = "${var.metric-router["metric_router_cpu_request"]}"
  memory_limit = "${var.metric-router["metric_router_memory_limit"]}"
  memory_request = "${var.metric-router["metric_router_memory_request"]}"
  jvm_memory_limit = "${var.metric-router["metric_router_jvm_memory_limit"]}"
  env_vars = "${var.metric-router["metric_router_environment_overrides"]}"
}

module "ewma-detector" {
  source = "ewma-detector"
  image = "expediadotcom/haystack-adaptive-alerting-ewma-detector:${var.ewma-detector["version"]}"
  replicas = "${var.ewma-detector["ewma_detector_instances"]}"
  namespace = "${var.app_namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  graphite_hostname = "${var.graphite_hostname}"
  node_selecter_label = "${var.node_selector_label}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.ewma-detector["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.ewma-detector["ewma_detector_cpu_limit"]}"
  cpu_request = "${var.ewma-detector["ewma_detector_cpu_request"]}"
  memory_limit = "${var.ewma-detector["ewma_detector_memory_limit"]}"
  memory_request = "${var.ewma-detector["ewma_detector_memory_request"]}"
  jvm_memory_limit = "${var.ewma-detector["ewma_detector_jvm_memory_limit"]}"
  env_vars = "${var.ewma-detector["ewma_detector_environment_overrides"]}"
}

module "constant-detector" {
  source = "constant-detector"

  image = "expediadotcom/haystack-adaptive-alerting-constant-detector:${var.constant-detector["version"]}"
  replicas = "${var.constant-detector["constant_detector_instances"]}"
  namespace = "${var.app_namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  graphite_hostname = "${var.graphite_hostname}"
  node_selecter_label = "${var.node_selector_label}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.constant-detector["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.constant-detector["constant_detector_cpu_limit"]}"
  cpu_request = "${var.constant-detector["constant_detector_cpu_request"]}"
  memory_limit = "${var.constant-detector["constant_detector_memory_limit"]}"
  memory_request = "${var.constant-detector["constant_detector_memory_request"]}"
  jvm_memory_limit = "${var.constant-detector["constant_detector_jvm_memory_limit"]}"
  env_vars = "${var.constant-detector["constant_detector_environment_overrides"]}"
}

module "pewma-detector" {
  source = "pewma-detector"

  image = "expediadotcom/haystack-adaptive-alerting-pewma-detector:${var.pewma-detector["version"]}"
  replicas = "${var.pewma-detector["pewma_detector_instances"]}"
  namespace = "${var.app_namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  graphite_hostname = "${var.graphite_hostname}"
  node_selecter_label = "${var.node_selector_label}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.pewma-detector["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.pewma-detector["pewma_detector_cpu_limit"]}"
  cpu_request = "${var.pewma-detector["pewma_detector_cpu_request"]}"
  memory_limit = "${var.pewma-detector["pewma_detector_memory_limit"]}"
  memory_request = "${var.pewma-detector["pewma_detector_memory_request"]}"
  jvm_memory_limit = "${var.pewma-detector["pewma_detector_jvm_memory_limit"]}"
  env_vars = "${var.pewma-detector["pewma_detector_environment_overrides"]}"
}

module "anomaly-validator" {
  source = "anomaly-validator"

  image = "expediadotcom/haystack-adaptive-alerting-anomaly-validator:${var.anomaly-validator["version"]}"
  replicas = "${var.anomaly-validator["anomaly_validator_instances"]}"
  namespace = "${var.app_namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  graphite_hostname = "${var.graphite_hostname}"
  node_selecter_label = "${var.node_selector_label}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.anomaly-validator["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.anomaly-validator["anomaly_validator_cpu_limit"]}"
  cpu_request = "${var.anomaly-validator["anomaly_validator_cpu_request"]}"
  memory_limit = "${var.anomaly-validator["anomaly_validator_memory_limit"]}"
  memory_request = "${var.anomaly-validator["anomaly_validator_memory_request"]}"
  jvm_memory_limit = "${var.anomaly-validator["anomaly_validator_jvm_memory_limit"]}"
  env_vars = "${var.anomaly-validator["anomaly_validator_environment_overrides"]}"
}
