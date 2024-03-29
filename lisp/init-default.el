;;; init-default.el --- modify emacs default config
;;; Commentary:
;;; Code:

;; 设置环境变量
(set-language-environment "UTF-8")

;; 关闭报警音
(setq ring-bell-function 'ignore)
;; 打开 eamacs 时屏蔽主页
(setq-default inhibit-splash-screen t)
;; 隐藏菜单栏
(tool-bar-mode -1)
;; 隐藏滑动条
(scroll-bar-mode -1)
;; 显示行号
(global-display-line-numbers-mode t)
;; 状态栏显示列号
(column-number-mode t)
;; 粘贴时替换选中的区域文本
(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(fset 'yes-or-no-p 'y-or-n-p)

;; 高亮当前行
(global-hl-line-mode 1)
;; 关闭文件备份
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 光标形状
(setq-default cursor-type 'bar)
;; 全屏显示
(setq  initial-frame-alist (quote ((fullscreen . maximized))))
;; 设置默认字体大小
(set-face-attribute 'default nil :height 160)
;; 文件末尾不自动加空行
(setq mode-require-final-newline nil)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 用空格代替tab，设置tab 长度为4
(setq-default tab-width 4
              indent-tabs-mode nil)
(setq indent-line-function 'insert-tab)

;; 存盘前删除行末多余的空格/空行
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))
(add-hook 'text-mode-hook 'remove-dos-eol)
(add-hook 'prog-mode-hook 'remove-dos-eol)

;; 当文件被修改，buffer自动更新
(global-auto-revert-mode t)

;; 自动换行
(global-visual-line-mode 1)

;; dired
(require 'dired)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disabled nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(provide 'init-default)
;;; init-default.el ends here
