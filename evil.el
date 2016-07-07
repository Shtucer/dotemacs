; Save buffers with Ctrl+S
(global-set-key (kbd "C-s") 'evil-write)


(setq evil-want-C-u-scroll t)
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
  In Delete Selection mode, if the mark is active, just deactivate it;
  then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
    (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(require 'evil)
(require 'evil-numbers)
;;(require 'evil-paredit)
(require 'evil-surround)
(require 'evil-matchit)
(require 'evil-smartparens)
(require 'evil-nerd-commenter)
(setq evil-regexp-search t)
(global-evil-matchit-mode 1)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
(smartparens-mode 1)
(global-evil-surround-mode 1)
(global-evil-leader-mode)

(evil-leader/set-leader ",")
(evil-mode t)

(evil-leader/set-key "ev" '(lambda() (interactive ) (find-file "~/.emacs.d/init.el")))
(evil-leader/set-key "nu" 'linum-mode)
(evil-leader/set-key "rn" 'linum-relative-toggle)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "\\" 'evilnc-comment-operator
  )
(evil-leader/set-key
  "|" 'split-window-right
  "_" 'split-window-below)
(define-key evil-normal-state-map (kbd "C-a +") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-a -") 'evil-numbers/dec-at-pt)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)

(when (display-graphic-p)
  (setq evil-emacs-state-cursor '("#9C6363" box))
  (setq evil-normal-state-cursor '("#7F9F7F" box))
  (setq evil-visual-state-cursor '("#DFAF8F" box))
  (setq evil-insert-state-cursor '("#7F9F7F" (hbar . 4)))
  (setq evil-replace-state-cursor '("red" box))
  (setq evil-operator-state-cursor '("red" hollow))
)

