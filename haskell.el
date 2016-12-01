;;(add-to-list 'load-path "~/.emacs.d/elpa/haskell-mode")
;;(require 'haskell-mode-autoloads)

;;(if (system-is-windows)

(loop for p in '("e:/devtools/Haskell/bin"
                 "e:/devtools/Haskell/lib/extralibs/bin"
                 "f:/Profiles/Shtucer/AppData/cabal/bin"
                 "c:/Program Files (x86)/zeal")
                do (add-to-list 'exec-path p))

;;(add-to-list 'exec-path "e:/devtools/Haskell Platform/7.10.2-a/bin"
;;                          "e:/devtools/Haskell Platform/7.10.2-a/lib/extralibs/bin"
;;                          "c:/Users/Shtucer/AppData/Roaming/cabal/bin"
;;                          "c:/Program Files (x86)/zeal"
;;                          )
;;    (setq exec-path (append exec-path '("e:/devtools/Haskell Platform/7.10.2-a/bin")))
;;    (setq exec-path (append exec-path '("e:/devtools/Haskell Platform/7.10.2-a/lib/extralibs/bin" "c:/Users/Shtucer/AppData/Roaming/cabal/bin")))
;;    (setq exec-path (append exec-path '("c:/Program Files (x86)/zeal")))

(defun my-haskell-mode-hook ()
;;    (haskell-interactive-mode)
    (setq flymake-haskell-multi-executable "haskell_multi.cmd")
    (flymake-haskell-multi-load)
    (linum-mode t))

(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)
