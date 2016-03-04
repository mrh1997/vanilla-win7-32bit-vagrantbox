get-service winrm
Enable-PSRemoting -force
winrm qc -q
winrm set winrm/config/client '@{TrustedHosts="*"}'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="2048"}'
winrm set winrm/config/winrs '@{MaxConcurrentUsers="100"}'
winrm set winrm/config/winrs '@{AllowRemoteShellAccess="True"}'
winrm set winrm/config '@{MaxTimeoutms="604800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'