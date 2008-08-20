;; ido-mode for mini buffer.
(ido-mode t)

;; Hide stuff.
(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil)

;; Highlight the selected region.
(transient-mark-mode t)

;; Show information in minibuffer instead of as a tooltip.
(tooltip-mode nil)

;; Indent with spaces, instead of TABs.
(setq-default indent-tabs-mode nil)

;; No backup files
(setq make-backup-files nil)

;; kill-line will kill whole line (including empty line).
(setq kill-whole-line t)

;; Skip startup message.
(setq inhibit-startup-message t)

;; Title will show active buffer.
(setq frame-title-format "Emacs - '%b'")

;; Yellow cursor.
(set-cursor-color "#FFFF00")

;; So that you only have to type y / n instead of yes / no.
(fset 'yes-or-no-p 'y-or-n-p)

;; Easy buffer switching by holding down shift and press any arrow key.
(windmove-default-keybindings 'shift)

;; Alias to delete all trailing whitespace.
(defalias 'dtw 'delete-trailing-whitespace)