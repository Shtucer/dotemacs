
(require 'tern)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))
(add-hook 'json-mode-hook (lambda ()
                              ((flymake-mode t)
                               flymake-json-load
                               paredit-mode)))


(define-key js-mode-map "{" 'paredit-open-curly)
(define-key js-mode-map "}" 'paredit-close-curly-and-newline)
(add-hook 'js-mode-hook (lambda ()
                            (tern-modet)
                            paredit-mode))
;; (add-hook 'js-mode-hook 'ac-js2-mode)


(eval-after-load 'tern
                 '(progn
                   (require 'tern-auto-complete)
                   (tern-ac-setup)))


(defun delete-tern-proc ()
    (interactive)
    (delete-process "Tern"))

(setq web-beautify-js-program "e:/devtools/nodejs/js-beautify.cmd")

