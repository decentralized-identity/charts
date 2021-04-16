{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}

{{- define "uni-resolver.uniResolverWebName" -}}
{{- default .Chart.Name .Values.uniResolverWeb.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.ontidDriverName" -}}
{{- default .Chart.Name .Values.ontidDriver.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.evanDidDriverName" -}}
{{- default .Chart.Name .Values.evanDidDriver.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.jolocomDidDriverName" -}}
{{- default .Chart.Name .Values.jolocomDidDriver.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.driverDnsName" -}}
{{- default .Chart.Name .Values.driverDns.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.uniResolverDriverDidUportName" -}}
{{- default .Chart.Name .Values.uniResolverDriverDidUport.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "uni-resolver.driverDidSovName" -}}
{{- default .Chart.Name .Values.driverDidSov.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "uni-resolver.driverDidKeyName" -}}
{{- default .Chart.Name .Values.driverDidKey.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "uni-resolver.uniResolverWebFullname" -}}
{{- if .Values.uniResolverWeb.fullnameOverride -}}
{{- .Values.uniResolverWeb.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.uniResolverWeb.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.ontidDriverFullname" -}}
{{- if .Values.ontidDriver.fullnameOverride -}}
{{- .Values.ontidDriver.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.ontidDriver.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.evanDidDriverFullname" -}}
{{- if .Values.evanDidDriver.fullnameOverride -}}
{{- .Values.evanDidDriver.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.evanDidDriver.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.jolocomDidDriverFullname" -}}
{{- if .Values.jolocomDidDriver.fullnameOverride -}}
{{- .Values.jolocomDidDriver.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.jolocomDidDriver.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.driverDnsFullname" -}}
{{- if .Values.driverDns.fullnameOverride -}}
{{- .Values.driverDns.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.driverDns.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.uniResolverDriverDidUportFullname" -}}
{{- if .Values.uniResolverDriverDidUport.fullnameOverride -}}
{{- .Values.uniResolverDriverDidUport.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.uniResolverDriverDidUport.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.driverDidSovFullname" -}}
{{- if .Values.driverDidSov.fullnameOverride -}}
{{- .Values.driverDidSov.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.driverDidSov.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "uni-resolver.driverDidKeyFullname" -}}
{{- if .Values.driverDidKey.fullnameOverride -}}
{{- .Values.driverDidKey.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.driverDidKey.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "uni-resolver.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "uni-resolver.uniResolverWebLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.uniResolverWebSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.uniResolverWeb.image.tag }}
version: {{ .Values.uniResolverWeb.image.tag }}
{{- end -}}

{{- define "uni-resolver.ontidDriverLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.ontidDriverSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.ontidDriver.image.tag }}
version: {{ .Values.ontidDriver.image.tag }}
{{- end -}}

{{- define "uni-resolver.evanDidDriverLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.evanDidDriverSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.evanDidDriver.image.tag }}
version: {{ .Values.evanDidDriver.image.tag }}
{{- end -}}

{{- define "uni-resolver.jolocomDidDriverLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.jolocomDidDriverSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.jolocomDidDriver.image.tag }}
version: {{ .Values.jolocomDidDriver.image.tag }}
{{- end -}}

{{- define "uni-resolver.driverDnsLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.driverDnsSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.driverDns.image.tag }}
version: {{ .Values.driverDns.image.tag }}
{{- end -}}

{{- define "uni-resolver.uniResolverDriverDidUportLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.uniResolverDriverDidUportSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.uniResolverDriverDidUport.image.tag }}
version: {{ .Values.uniResolverDriverDidUport.image.tag }}
{{- end -}}

{{- define "uni-resolver.driverDidSovLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.driverDidSovSelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.driverDidSov.image.tag }}
version: {{ .Values.driverDidSov.image.tag }}
{{- end -}}

{{- define "uni-resolver.driverDidKeyLabels" -}}
helm.sh/chart: {{ include "uni-resolver.chart" . }}
{{ include "uni-resolver.driverDidKeySelectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.driverDidKey.image.tag }}
version: {{ .Values.driverDidKey.image.tag }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "uni-resolver.uniResolverWebSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.uniResolverWebName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.uniResolverWebName" . }}
{{- end -}}

{{- define "uni-resolver.ontidDriverSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.ontidDriverName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.ontidDriverName" . }}
{{- end -}}

{{- define "uni-resolver.evanDidDriverSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.evanDidDriverName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.evanDidDriverName" . }}
{{- end -}}

{{- define "uni-resolver.jolocomDidDriverSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.jolocomDidDriverName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.jolocomDidDriverName" . }}
{{- end -}}

{{- define "uni-resolver.driverDnsSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.driverDnsName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.driverDnsName" . }}
{{- end -}}

{{- define "uni-resolver.uniResolverDriverDidUportSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.uniResolverDriverDidUportName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.uniResolverDriverDidUportName" . }}
{{- end -}}

{{- define "uni-resolver.driverDidSovSelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.driverDidSovName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.driverDidSovName" . }}
{{- end -}}

{{- define "uni-resolver.driverDidKeySelectorLabels" -}}
app.kubernetes.io/name: {{ include "uni-resolver.driverDidKeyName" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "uni-resolver.driverDidKeyName" . }}
{{- end -}}


{{/*
Create the name of the service account to use
*/}}
{{- define "uni-resolver.uniResolverWebServiceAccountName" -}}
{{ include "uni-resolver.uniResolverWebFullname" . }}
{{- end -}}

{{- define "uni-resolver.ontidDriverServiceAccountName" -}}
{{ include "uni-resolver.ontidDriverFullname" . }}
{{- end -}}

{{- define "uni-resolver.evanDidDriverServiceAccountName" -}}
{{ include "uni-resolver.evanDidDriverFullname" . }}
{{- end -}}

{{- define "uni-resolver.jolocomDidDriverServiceAccountName" -}}
{{ include "uni-resolver.jolocomDidDriverFullname" . }}
{{- end -}}

{{- define "uni-resolver.driverDnsServiceAccountName" -}}
{{ include "uni-resolver.driverDnsFullname" . }}
{{- end -}}

{{- define "uni-resolver.uniResolverDriverDidUportServiceAccountName" -}}
{{ include "uni-resolver.uniResolverDriverDidUportFullname" . }}
{{- end -}}

{{- define "uni-resolver.driverDidSovServiceAccountName" -}}
{{ include "uni-resolver.driverDidSovFullname" . }}
{{- end -}}

{{- define "uni-resolver.driverDidKeyServiceAccountName" -}}
{{ include "uni-resolver.driverDidKeyFullname" . }}
{{- end -}}
