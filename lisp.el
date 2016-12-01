;; Paths (for Common Lisp compiler - SBCL)
(setq unix-sbcl-bin    "/usr/bin/sbcl")
(setq windows-sbcl-bin "e:/devtools/lisp/1.2.14/sbcl.exe")

;; Auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start        t)
(setq ac-auto-show-manu    t)
(global-auto-complete-mode t)
(add-to-list 'ac-modes 'lisp-mode)

;; SLIME
(require 'slime)
(require 'slime-autoloads)
(setq slime-net-coding-system 'utf-8-unix)
(slime-setup '(slime-fancy slime-asdf slime-indentation))
(if (or (file-exists-p unix-sbcl-bin) (file-exists-p windows-sbcl-bin))
    (if (system-is-windows)
        (setq inferior-lisp-program windows-sbcl-bin)
      (setq inferior-lisp-program unix-sbcl-bin))
  (message "%s" "SBCL not found..."))
(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.el\\'" . emacs-lisp-mode))


(add-hook 'lisp-mode (lambda ()
                       (paredit-mode t)))

(add-hook 'emacs-lisp-mode (lambda ()
                       (paredit-mode t)))


(setq-default lisp-body-indent 4)
(setq lisp-indent-function 'common-lisp-indent-function)
