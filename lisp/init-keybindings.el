;; 帮助文档
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(global-set-key (kbd "C-h C-v") 'find-variable)

;; 切换buffer和最近打开的文件
(global-set-key (kbd "C-x b") 'consult-buffer)

;; 修改常用的复制粘贴、光标移动
(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-x") 'kill-region)

;; 使用访达打开
(require 'embark)
(define-key embark-file-map (kbd "E") #'consult-directory-externally)
(define-key embark-file-map (kbd "x") #'consult-file-externally)
(define-key minibuffer-local-map (kbd "C-c C-e") 'embark-export-write)
;; 搜索project下面的文件和内容
(global-set-key (kbd "C-c p f") 'project-find-file)
(global-set-key (kbd "C-c p s") 'consult-ripgrep)

(global-set-key (kbd "C-;") 'embark-act)

(global-set-key (kbd "C-s") 'consult-line)
;; 搜索函数
(global-set-key (kbd "M-s i") 'consult-imenu)
(provide 'init-keybindings)
