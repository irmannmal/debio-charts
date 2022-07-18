{{/*
Expand the name of the chart.
*/}}
{{- define "debio-background-worker.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "debio-background-worker.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "debio-background-worker.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "debio-background-worker.labels" -}}
helm.sh/chart: {{ include "debio-background-worker.chart" . }}
{{ include "debio-background-worker.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "debio-background-worker.selectorLabels" -}}
app.kubernetes.io/name: {{ include "debio-background-worker.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "debio-background-worker.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "debio-background-worker.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of elastic Search secret.
*/}}
{{- define "debio-background-worker.elasticSearchSecretName" -}}
{{- printf "%s-%s" (include "debio-background-worker.fullname" .) "elastic-search" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of minimal Starting Block secret.
*/}}
{{- define "debio-background-worker.minimalStartingBlockSecretName" -}}
{{- printf "%s-%s" (include "debio-background-worker.fullname" .) "minimal-block" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of minimal Starting Block secret.
*/}}
{{- define "debio-background-worker.requestServiceContractAddressSecretName" -}}
{{- printf "%s-%s" (include "debio-background-worker.fullname" .) "req-svc-contract-address" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of minimal substrate Url secret.
*/}}
{{- define "debio-background-worker.substrateUrlSecretName" -}}
{{- printf "%s-%s" (include "debio-background-worker.fullname" .) "substrate-url" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of serviceAccountBase64 secret.
*/}}
{{- define "debio-background-worker.serviceAccountSecretName" -}}
{{- printf "%s-%s" (include "debio-background-worker.fullname" .) "service-account" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}