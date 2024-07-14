# Initialize oh-my-posh
const oh_my_posh_script = ($nu.default-config-dir | path join '.oh-my-posh.nu')
const oh_my_posh_config = '~/configs/theme.omp.toml'
oh-my-posh init nu -c $oh_my_posh_config --print | save $oh_my_posh_script --force
