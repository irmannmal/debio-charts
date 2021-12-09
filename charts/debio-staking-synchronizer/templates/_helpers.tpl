{{/*
Expand the name of the chart.
*/}}
{{- define "debio-staking-synchronizer.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "debio-staking-synchronizer.fullname" -}}
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
{{- define "debio-staking-synchronizer.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "debio-staking-synchronizer.labels" -}}
helm.sh/chart: {{ include "debio-staking-synchronizer.chart" . }}
{{ include "debio-staking-synchronizer.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "debio-staking-synchronizer.selectorLabels" -}}
app.kubernetes.io/name: {{ include "debio-staking-synchronizer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "debio-staking-synchronizer.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "debio-staking-synchronizer.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of postgres secret.
*/}}
{{- define "debio-staking-synchronizer.postgresSecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "postgres" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of dbLocations secret.
*/}}
{{- define "debio-staking-synchronizer.dbLocationsSecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "dblocations" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of escrow Substrate Mnemonic secret.
*/}}
{{- define "debio-staking-synchronizer.substrateMnemonicSecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "substrate-mnemonic" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of bucketname secret.
*/}}
{{- define "debio-staking-synchronizer.bucketnameSecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "bucketname" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of storageBaseURI secret.
*/}}
{{- define "debio-staking-synchronizer.storageBaseURISecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "storage-base-uri" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of serviceAccountBase64 secret.
*/}}
{{- define "debio-staking-synchronizer.serviceAccountSecretName" -}}
{{- printf "%s-%s" (include "debio-staking-synchronizer.fullname" .) "service-account" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
