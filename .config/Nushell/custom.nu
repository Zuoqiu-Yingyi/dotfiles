# Initialize oh-my-posh
const oh_my_posh_config = '~/configs/theme.omp.toml'

# REF: https://ohmyposh.dev/docs/installation/prompt
const oh_my_posh_script = ($nu.default-config-dir | path join '.oh-my-posh.nu')
oh-my-posh init nu -c $oh_my_posh_config --print | save $oh_my_posh_script --force
