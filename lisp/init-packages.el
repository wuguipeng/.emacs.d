(require 'package)
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
			 ("nongnu" . "http://1.15.88.122/nongnu/")
			 ("melpa" . "http://1.15.88.122/melpa/")
			 ("org" . "http://1.15.88.122/org/")))
(package-initialize)

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))


;; 这个配置一定要配置在 use-package 的初始化之前，否则无法正常安装
(assq-delete-all 'org package--builtins)
(assq-delete-all 'org package--builtin-versions)

(unless (package-installed-p 'use-package)
  (package-refersh-contents)
  (package-install 'use-package))
;;(package-install 'use-package)

;; use-package 默认开启ensure
;; ensure 会去gnu和emlap上加载这个包，如果是内置的包，ensure需要配置为nil
(require 'use-package-ensure)
(setq use-package-always-ensure t)


(provide 'init-packages)
