(setq ecb-tip-of-the-day nil)
;;(setq ecb-source-path '("~/Projects/InsideServer/"
;;                        "~/"))
(setq ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
(add-hook 'ecb-activate-hook (lambda()(set-face-font 'ecb-default-general-face "Ubuntu Mono-10")))
;;(add-hook 'ecb-activate-hook (lambda()(set-face-font 'ecb-default-general-face "Inconsolata for Powerline-10")))
(add-hook 'ecb-activate-hook (lambda()(linum-mode 0)))
 (setq ecb-layout-window-sizes
   (quote
    (("shtucer-fancy-layout"
      (ecb-directories-buffer-name 0.1340782122905028 . 0.48)
      (ecb-sources-buffer-name 0.1340782122905028 . 0.5)
      (ecb-methods-buffer-name 0.13966480446927373 . 0.98)))))

(ecb-activate)
(if (eq system-type "windows-nt")
    (add-to-list 'ecb-source-path '("d:/Projects/InsideServer" "InsideServer")) 
;;    (add-to-list 'ecb-source-path '("~/Projects/InsideServer" "InsideServer"))
)

(ecb-layout-switch "shtucer-fancy-layout")
(global-set-key (kbd "<f8>") 'ecb-toggle-ecb-windows)
