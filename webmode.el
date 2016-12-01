(require 'web-mode)
(require 'sass-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.scss?\\'" . sass-mode))
(setq web-mode-engines-alist
      '(("django" . "\\.html\\'")))

(setq web-mode-enable-css-colorization 't)
(setq web-mode-enable-engine-detection 't)
(setq web-mode-enable-current-column-highlight 't)
(setq web-mode-enable-current-element-highlight 't)
(setq web-mode-keywords '(("django" . ("static"))))
;;; Web mode:
(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-style-padding 2)
            (yas-minor-mode t)
            (emmet-mode)
            (rainbow-mode)
            (flycheck-add-mode 'html-tidy 'web-mode)
            (flycheck-mode)
            (paredit-mode)))

(setq web-mode-ac-sources-alist
      '(("php" . (ac-source-php-extras ac-source-yasnippet ac-source-gtags ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
        ("css" . (ac-source-css-property ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))))

(add-hook 'web-mode-before-auto-complete-hooks
          '(lambda ()
             (let ((web-mode-cur-language (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "php")
                   (yas-activate-extra-mode 'php-mode)
                 (yas-deactivate-extra-mode 'php-mode))
               (if (string= web-mode-cur-language "css")
                   (setq emmet-use-css-transform t)
                 (setq emmet-use-css-transform nil)))))
