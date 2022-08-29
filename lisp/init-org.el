(require 'org-tempo)  ;开启easy template
;; 禁用左尖括号
(setq electric-pair-inhibit-predicate
      `(lambda (c)
	 (if (char-equal c ?\<) t (,electric-pair-inhibit-predicate c))))

(add-hook 'org-mode-hook
	  (lambda ()
	    (setq-local electric-pair-inhibit-predicate
			`(lambda (c)
			   (if (char-equal c ?\<) t (,electric-pair-inhibit-predicate c))))))

(use-package org
  :ensure t)

(use-package org-contrib
  :pin nongnu
  )

;; C-c C-t
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))


(require 'org-checklist)
;; need repeat task and properties
(setq org-log-done t)
(setq org-log-into-drawer t)

;; org agenda
(setq org-agenda-files '("~/.emacs.d/org/gtd.org"))
(setq org-agenda-span 'day)

;; 模版
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/org/gtd.org" "Workspace")
	 "* TODO [#B] %?\n  %i\n %U"
	 :empty-lines 1)))

;; 任务等级
(setq org-agenda-custom-commands
      '(("c" "重要且紧急的事"
	 ((tags-todo "+PRIORITY=\"A\"")))
	;; ...other commands here
	))


;;org-export latex
(setq org-alphabetical-lists t)
  ;;(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))
  ;;(require 'ox-bibtex)
(setq org-latex-pdf-process
	'("xelatex -interaction nonstopmode %f"
	  "bibtex %b"
	  "xelatex -interaction nonstopmode %f"
	  "xelatex -interaction nonstopmode %f"
	  "rm -fr %b.out %b.log %b.tex %b.brf %b.bbl auto"
	  ))
(setq org-latex-compiler "xelatex")

(require 'ox-latex)
(add-to-list 'org-latex-classes '("ctexart" "\\documentclass[11pt]{ctexart}
[NO-DEFAULT-PACKAGES]
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{listings}
\\usepackage{amssymb}
\\usepackage{booktabs}
\\usepackage[colorlinks,linkcolor=black,anchorcolor=red,citecolor=black]{hyperref}
\\tolerance=1000

% 设置源码格式
\\lstset{framexleftmargin=5mm, frame=shadowbox, rulesepcolor=\\color{blue}}
\\lstset{basicstyle=\\tiny}
\\lstset{postbreak=\\space, breakindent=5pt, breaklines}

% 设置verbatim的字体大小
\\makeatletter
\\def\\verbatim{\\tiny\\@verbatim \\frenchspacing\\@vobeyspaces \\@xverbatim}
\\makeatother
"
                                  ("\\section{%s}" . "\\section*{%s}")
                                  ("\\subsection{%s}" . "\\subsection*{%s}")
                                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                                  ("\\paragraph{%s}" . "\\paragraph*{%s}")
                                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;;; 设置默认的class为ctexart
(setq org-latex-default-class "ctexart")


;; 格式化当前 buffer
(defun anne-indent-current-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(global-set-key [f5] 'anne-indent-current-buffer)
(require 'org-modern)
(global-org-modern-mode)

;;(require 'org-bars)
;;(add-hook 'org-mode-hook #'org-bars-mode)

(provide 'init-org)
