;;; rejeep-programming.el --- Programming stuff, not connected to any specific language.

(add-hook 'c-mode-common-hook (lambda () (c-subword-mode 1)))

;; Markdown
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
(add-hook 'markdown-mode-hook
          '(lambda()
             (wrap-region-set-mode-punctuations '("[" "("))
             (wrap-region-mode t)))

;; Magit
(add-hook 'magit-mode-hook 'rinari-launch)
(add-hook 'magit-log-edit-mode-hook 'flyspell-mode)
(add-hook 'magit-mode-hook
          '(lambda()
             (set-face-foreground 'magit-diff-add "green3")
             (set-face-foreground 'magit-diff-del "red3")))

;; Snippets
(require 'dropdown-list)
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;; Yaml
(require 'yaml-mode)
(add-hook 'yaml-mode-hook 'flyspell-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; ECB
(ecb-activate)
(ecb-hide-ecb-windows)

(provide 'rejeep-programming)
