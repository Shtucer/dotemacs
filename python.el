(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(require 'auto-virtualenv)
;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)


(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(defun my/python-mode-hook()
    (add-to-list 'company-backends 'company-jedi)
    'auto-virtualenv-set-virtualenv
    'py-autopep8-enable-on-save)

(add-hook 'elpy-mode-hook 'my/python-mode-hook)
(add-hook 'python-mode-hook 'my/python-mode-hook)
