;;; rejeep-bindings.el --- Set up of key bindings

;; Go to line.
(global-set-key (kbd "M-g") 'goto-line)

;; Copy region to clippboard.
(global-set-key (kbd "C-x M-w") 'clipboard-kill-ring-save)

;; Open line below and go to that line.
(global-set-key (kbd "M-n") 'open-line-below)

;; Open line above and go to that line.
(global-set-key (kbd "M-p") 'open-line-above)

;; Back to indentation or beginning of line.
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning-of-line)

;; Google region.
(global-set-key (kbd "C-c C-c g") 'google-region)

;; Comments or uncomments a line or region
(global-set-key (kbd "C-7") 'comment-or-uncomment-whole-lines-or-region)

;; Moves region to *scratch* buffer.
(global-set-key (kbd "C-c s") 'copy-region-to-scratch-buffer)

;; Show occurances of regexp.
(global-set-key (kbd "C-o") 'occur)

;; Toggle line numbers.
(global-set-key (kbd "<f6>") 'linum-mode)

;; Magit status.
(global-set-key (kbd "C-x g") 'magit-status)

;; Goto matching paren.
(global-set-key (kbd "%") 'match-paren)

;; Duplicates the current line.
(global-set-key (kbd "C-c d") 'duplicate-current-line)

;; Increase and decrease font size.
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; So that Emacs never is quit by mistake.
(global-set-key (kbd "C-x C-c")
                (lambda ()
                  (interactive)
                  (if (y-or-n-p "Quit Emacs? ")
                      (save-buffers-kill-emacs))))

;; Perform general cleanup of buffer.
(global-set-key (kbd "C-c n")
                (lambda ()
                  (interactive)
                  (untabify-buffer)
                  (delete-trailing-whitespace)
                  (indent-buffer)))

;; Fast go to .emacs.
(global-set-key (kbd "<f12>") (lambda ()
                                (interactive)
                                (find-file "~/.emacs.d/init.el")))

(provide 'rejeep-bindings)
