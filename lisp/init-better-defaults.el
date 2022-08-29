;; 不备份
(setq make-backup-files nil)
;; 替换选中内容
(delete-selection-mode 1)
;; 开启tab补全
(setq tab-always-indent 'complete)

;; 括号补全
(electric-pair-mode t)

;; 加载外部编辑器的修改
(global-auto-revert-mode 1)

;; 关闭自动保存文件
(setq auto-save-default nil)

;; 关闭声音
(setq ring-bell-function 'ignore)

;; 简化yes-no
(fset 'yes-or-no-p 'y-or-n-p)

;; 重新启动
(use-package restart-emacs)

;; 保存历史记录
(use-package savehist
  :ensure nil ;; 内置包，设置为nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

;; 记录文件光标位置
(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))



(provide 'init-better-defaults)
