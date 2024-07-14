# Initialize oh-my-posh
oh-my-posh --init --shell pwsh --config '~/configs/theme.omp.toml' | Invoke-Expression

# 历史与插件补全
Set-PSReadLineOption -PredictionSource HistoryAndPlugin

# 以列表形式显示历史命令
Set-PSReadLineOption -PredictionViewStyle ListView

# 使用 Tab 键启用自动补全
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
