(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
;; Don't display the ugly startup message (particularly ugly in the GUI)
(setq inhibit-startup-message t)
(set-default 'truncate-lines t)
(set-face-attribute 'default nil :font "InputMono-11")
;;(setq zenburn-no-bold 1)
(load-theme 'lordesert t)
(tool-bar-mode -1)
(when (display-graphic-p) (set-scroll-bar-mode nil))
(require 'linum-relative)
(require 'powerline)
(powerline-default-theme)
(setq linum-relative-format "%4s \u2502 ")
(setq linum-format "%4d \u2502 ")
;;(setq linum-format "%4d\s")

; Buffer switch
(defun kit-buffer-ignored (str)
  (or
   ;;buffers I don't want to switch to
   (string-match "^\\*inferiror-ensime-server-.*\\*$" str)
   (string-match "^\\*GNU Emacs\\*$" str)
   (string-match "^TAGS" str)
   (string-match "^\\*Messages\\*$" str)
   (string-match "^\\*Completions\\*$" str)
   (string-match "^\\*ESS\\*$" str)
   (string-match "^ " str)
   (string-match "Mew message" str)
   (string-match "output\\*$" str)
   (string-match "^\\*TeX silent\\*$" str)
   (string-match "^\\*\[e|E\]diff.*\\*$" str)
   (string-match "^\\*Help\\*$" str)
   (string-match "^\\*magit-.*\\*$" str)
   (string-match "^\\*Compile-Log*\\*$" str)
   (string-match "^\\*Calendar\\*$" str)
   (string-match "^work.org$" str)
   (string-match "^refile.org$" str)
   (string-match "^\\*scratch\\*$" str)
   (with-current-buffer (get-buffer str)
     (eq major-mode 'dired-mode))
   ;;Test to see if the window is visible on an existing visible frame.
   ;;Because I can always ALT-TAB to that visible frame, I never want to
   ;;Ctrl-TAB to that buffer in the current frame. That would cause
   ;;a duplicate top-level buffer inside two frames.
   (memq str
         (mapcar
          (lambda (x)
            (buffer-name
             (window-buffer
              (frame-selected-window x))))
          (visible-frame-list)))))

(defun kit-next-buffer (ls)
  "Switch to next buffer but skipping unwanted ones."
  (let* ((ptr ls) bf bn go)
    (while (and ptr (null go))
      (setq bf (car ptr) bn (buffer-name bf))
      ;; skip over
      (if (null (kit-buffer-ignored bn))
          (setq go bf)
        (setq ptr (cdr ptr))))
    (if go (switch-to-buffer go))))

(defun kit-prev-use-buffer ()
  "Switch to previous buffer in current window."
  (interactive)
  (kit-next-buffer (reverse (buffer-list))))

(defun kit-next-use-buffer ()
  "Switch to the other buffer (2nd in list-buffer) in current window."
  (interactive)
  (bury-buffer (current-buffer))
  (kit-next-buffer (buffer-list)))
(global-set-key (kbd "<C-tab>") 'kit-next-use-buffer)
(global-set-key (kbd "<C-S-tab>") 'kit-prev-use-buffer)
(load-user-file "hideshowvis.el")

(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode t)

(load-user-file "highlight-indentation.el")
(highlight-indentation-mode t)

(set-face-background 'highlight-indentation-face "grey30")

(require 'rainbow-delimiters)
(rainbow-delimiters-mode t)
(rainbow-mode t)
