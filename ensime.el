(require 'scala-mode2)
(require 'ensime)
(setq ensime-sbt-command "/opt/local/bin/sbt")
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook '(lambda() (setq
                                        scala-indent:step 4)))
;; Gradle files should use Groovy Mode
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))

