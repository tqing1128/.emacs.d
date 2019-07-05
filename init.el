;;; init.el --- emacs initialize config
;;; Commentary:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:

(package-initialize)

;;(defconst *is-a-mac* (eq system-type 'darwin))

(defun open-my-init-file()
  "快捷打开配置文件."
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f1>") 'open-my-init-file)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-default)
(require 'init-company)
(require 'init-ivy)
(require 'init-lua-mode)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-exec-path)
(require 'init-smartparens)
(require 'init-evil)
(require 'init-theme)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

(provide 'init)
;;; init.el ends here