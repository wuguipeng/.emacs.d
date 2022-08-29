;; 主题
(use-package modus-themes)
;;(load-theme 'doom-ayu-light t)
;; Override the given associations
(setq modus-themes-operandi-color-overrides
      '((bg-main . "#ffffff") ; default is #ffffff
        (bg-dim . "#f8f8f8")  ; default is #f8f8f8
        (bg-alt . "#f0f0f0")  ; default is #f0f0f0
        ;; more colours here
        ))

;; Load `modus-operandi' while disabling all others
(modus-themes-load-operandi)
;; 设置字体
(set-face-attribute 'default nil :font "Sarasa Mono SC Nerd 17")
;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
;; 开启行号
(global-linum-mode -1)
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

;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置
;; global-mode-string 之后
(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode t))


(provide 'init-ui)

