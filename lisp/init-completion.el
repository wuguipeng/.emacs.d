(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))

;;modeline上显示我的所有的按键和执行的命令
(use-package keycast)
(add-to-list 'global-mode-string '("" keycast-mode-line))
(keycast-mode t)

(use-package vertico)
(vertico-mode t)

(use-package orderless)
(setq completion-styles '(orderless))

(use-package marginalia)
(marginalia-mode t)

(use-package embark)
(setq prefix-help-command 'embark-prefix-help-command)

(use-package consult)

(provide 'init-completion)
