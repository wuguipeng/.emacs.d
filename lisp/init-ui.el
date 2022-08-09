;; 主题
(use-package doom-themes)
(load-theme 'doom-one t)
;; 设置字体
(set-face-attribute 'default nil :height 160)
;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
;; 开启行号
(global-linum-mode 1)
;; 关闭欢迎界面
(setq inhibit-startup-screen t)
;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滑动控件
(scroll-bar-mode -1)
;; 设置光标
(setq-default cursor-type 'bar)
(show-paren-mode t)
;; 高亮所在行
(global-hl-line-mode 1)

;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后‘
(use-package doom-modeline
  :ensure t

  :init
  (doom-modeline-mode t))

(provide 'init-ui)
