{{/*
Expand the name of the chart.
*/}}
{{- define "debio-app-deployer.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "debio-app-deployer.fullname" -}}
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
{{- define "debio-app-deployer.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "debio-app-deployer.labels" -}}
helm.sh/chart: {{ include "debio-app-deployer.chart" . }}
{{ include "debio-app-deployer.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "debio-app-deployer.selectorLabels" -}}
app.kubernetes.io/name: {{ include "debio-app-deployer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "debio-app-deployer.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "debio-app-deployer.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of secret.
*/}}
{{- define "debio-app-deployer.secretName" -}}
{{- printf "%s-%s" (include "debio-app-deployer.fullname" .) "secrets" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "debio-app-deployer.secretHelper"}}
{{- if .Values.config.secrets -}}
{{- range $line := splitList "\n" .Values.config.secrets -}}
{{- $parts := regexSplit "=" . 2  }}
- name: {{ index $parts 0 }}
  valueFrom:
    secretKeyRef:
      name: {{ include "debio-app-deployer.secretName" $ }}
      key: {{ index $parts 0 }}
{{- end -}}
{{- end -}}
{{- end -}}
