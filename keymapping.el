;;(evil-leader/set-key-for-mode 'ensime-mode "gd" 'ensime-edit-definition)
;;(evil-leader/set-key "gt" 'ensime-inspect-type-at-point)

;;(evil-leader/set-key "n" 'linum-mode)
(evil-leader/set-key "gf" 'ffap)


(defun my/package-menu-hook ()
    (evil-leader/set-key "i" 'package-menu-mark-install)
    (evil-leader/set-key "u" 'package-menu-mark-unmark)
    (evil-leader/set-key "d" 'package-menu-mark-delete)
    (evil-define-key 'normal 'package-menu-mode-map
                 (kbd "/") 'evil-search-prompt)
    (evil-leader/set-key "x" 'package-menu-execute))

(add-hook 'package-menu-mode-hook 'my/package-menu-hook)


(defun my/neotree-hook ()
    (evil-leader/set-key-for-mode 'neotree-mode "r" 'neotree-rename-node)
    (evil-leader/set-key-for-mode 'neotree-mode "d" 'neotree-delete-node)
    (evil-leader/set-key-for-mode 'neotree-mode "c" 'neotree-create-node)
    (evil-leader/set-key-for-mode 'neotree-mode "x" 'neotree-hidden-file-toggle)
    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter))

(add-hook 'neotree-mode-hook 'my/neotree-hook)
