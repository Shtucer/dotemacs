(require 'web-mode)
(require 'sass-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss?\\'" . sass-mode))
(setq web-mode-engines-alist
      '(("django" . "\\.html\\'")))

(setq web-mode-enable-css-colorization 't)
(setq web-mode-enable-engine-detection 't)
(setq web-mode-enable-current-column-highlight 't)
(setq web-mode-enable-current-element-highlight 't)
(setq web-mode-keywords '(("django" . ("static"))))
