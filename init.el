(require 'cl)
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/HDD/Users/shtucer/opt/go/bin")))
(setq exec-path (append exec-path '("/usr/local/sbin")))
(setenv "PATH" (shell-command-to-string "/bin/bash -l -c 'echo -n $PATH'"))

(require 'package)
;;(add-to-list 'load-path "~/.emacs.d/")

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   (quote
    ("9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ecb-options-version "2.40")
 '(fringe-mode (quote (0)) nil (fringe))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(linum-format "%4d │ ")
 '(make-backup-files nil)
 '(show-paren-mode t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-tag-header-face ((t (:background "gray10")))))

(require 'gradle-mode)
(gradle-mode 1)

(require 'groovy-mode)

;; Load configuration modules
(load-user-file "evil.el")
(load-user-file "appearance.el")
(load-user-file "golang.el")
(load-user-file "ensime.el")
(load-user-file "ecb.el")
(load-user-file "keymapping.el")
