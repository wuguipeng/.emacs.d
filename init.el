;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)
(require 'init-function)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-org)
(require 'init-completion)
(require 'init-ui)
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)
