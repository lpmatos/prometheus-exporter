{{/* Create a default fully qualified name to aws secret. */}}
{{- define "aws.secret.name" -}}
{{- printf "%s-%s" "aws" "secret" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Return aws access key */}}
{{- define "aws.access.key" -}}
{{- if .Values.providers.aws.accessKey -}}
  {{- .Values.providers.aws.accessKey | b64enc | quote -}}
{{- else -}}
  {{- required "We need AWS Access Key" .Values.providers.aws.accessKey -}}
{{- end -}}
{{- end -}}

{{/* Return aws secret key */}}
{{- define "aws.secret.key" -}}
{{- if .Values.providers.aws.secretKey -}}
  {{- .Values.providers.aws.secretKey | b64enc | quote -}}
{{- else -}}
  {{- required "We need AWS Secret Key" .Values.providers.aws.secretKey -}}
{{- end -}}
{{- end -}}
