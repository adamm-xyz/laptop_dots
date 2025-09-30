c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}'
}

config.bind('<Ctrl-m>', 'hint links spawn mpv {hint-url}')
config.bind('<Ctrl-y>', 'hint links spawn yt-dlp {hint-url}')
config.bind('<Ctrl-o>', 'cmd-set-text -s :open')
config.bind('<Ctrl-f>', 'hint links')

config.load_autoconfig()

#config.bind('o',"cmd-set-text -s :spawn --userscript ~/.config/qutebrowser/userscripts/qutebrowser-url-mutator/url_mutator.py /home/adam/.config/qutebrowser/userscripts/qutebrowser-url-mutator/config.toml 'open'")
#config.bind('O',"cmd-set-text -s :spawn --userscript ~/.config/qutebrowser/userscripts/qutebrowser-url-mutator/url_mutator.py /home/adam/.config/qutebrowser/userscripts/qutebrowser-url-mutator/config.toml 'open -t'")
#config.bind('f',"hint links spawn --userscript ~/.config/qutebrowser/userscripts/qutebrowser-url-mutator/url_mutator.py /home/adam/.config/qutebrowser/userscripts/qutebrowser-url-mutator/config.toml 'open' {hint-url}")
#config.bind('F',"hint links spawn --userscript ~/.config/qutebrowser/userscripts/qutebrowser-url-mutator/url_mutator.py /home/adam/.config/qutebrowser/userscripts/qutebrowser-url-mutator/config.toml 'open -t {hint-url}'")

c.url.searchengines['gt'] = 'https://translate.google.com/?hl=en&sl=auto&tl=en&text={}'

