#region oh-my-posh initialize
# REF: https://ohmyposh.dev/docs/installation/prompt
oh-my-posh --init --shell pwsh --config '~/configs/theme.omp.toml' | Invoke-Expression
#endregion

#region vfox initialize
# REF: https://vfox.lhan.me/zh-hans/guides/quick-start.html
# if (-not (Test-Path -Path $PROFILE)) { New-Item -Type File -Path $PROFILE -Force }; Add-Content -Path $PROFILE -Value 'Invoke-Expression "$(vfox activate pwsh)"'
Invoke-Expression "$(vfox activate pwsh)"
#endregion

# 历史与插件补全
Set-PSReadLineOption -PredictionSource HistoryAndPlugin

# 以列表形式显示历史命令
Set-PSReadLineOption -PredictionViewStyle ListView

# 使用 Tab 键启用自动补全
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
