;;; init-default.el --- modify emacs default config
;;; Commentary:
;;; Code:

;; 打开 eamacs 时屏蔽主页
(setq-default inhibit-splash-screen t)
;; 隐藏菜单栏
(tool-bar-mode -1)
;; 隐藏滑动条
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode t)
;; (delete-selection-mode t)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; 高亮当前行
(global-hl-line-mode 1)
;; 关闭文件备份
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 光标形状
(setq-default cursor-type 'bar)


(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(provide 'init-default)
;;; init-default.el ends here