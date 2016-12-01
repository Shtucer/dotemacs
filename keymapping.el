;;(evil-leader/set-key-for-mode 'ensime-mode "gd" 'ensime-edit-definition)
;;(evil-leader/set-key "gt" 'ensime-inspect-type-at-point)

;;(evil-leader/set-key "n" 'linum-mode)
(setq ido-ignore-buffers '("^\*" "\\` "))
(ido-mode t)

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
    (evil-leader/set-key-for-mode 'neotree-mode "cd" 'neotree-change-root)
    (evil-leader/set-key-for-mode 'neotree-mode "d" 'neotree-delete-node)
    (evil-leader/set-key-for-mode 'neotree-mode "cc" 'neotree-create-node)
    (evil-leader/set-key-for-mode 'neotree-mode "x" 'neotree-hidden-file-toggle)
    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter))

(defun my-flymake-err-at (pos)
    (let ((overlays (overlays-at pos)))
        (remove nil
                (mapcar (lambda (overlay)
                            (and (overlay-get overlay 'flymake-overlay)
                                 (overlay-get overlay 'help-echo)))
                        overlays))))

;;(defun my/flymake-mode-hook ()
(evil-leader/set-key "mn" 'flymake-goto-next-error)
(evil-leader/set-key "mp" 'flymake-goto-prev-error)
(evil-leader/set-key "mm" '(lambda ()
                            (interactive)
                            (message "%s"
                             (mapconcat 'identity
                              (my-flymake-err-at (point)) "\\n"))))


(evil-leader/set-key "sc" '(lambda nil
                            (interactive)
                            (switch-to-buffer (get-buffer-create "*scratch*")
                             (lisp-interaction-mode))))


(add-hook 'neotree-mode-hook 'my/neotree-hook)
(add-hook 'lisp-interaction-mode-hook
          (lambda ()
              (define-key lisp-interaction-mode-map (kbd "<C-return>") 'eval-last-sexp)
              (evil-define-key 'insert global-map (kbd "C-d") 'eval-last-sexp)
              (evil-define-key 'normal global-map (kbd "C-d") 'eval-defun)
              (evil-define-key 'insert web-mode (kbd "C-,") 'emmet-expand-line)))
