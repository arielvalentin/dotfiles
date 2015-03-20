;;; (add-hook 'ruby-mode-hook
;;;  (lambda()
;;;    (hl-line-mode -1)
;;;    (global-hl-line-mode -1))
;;;  't
;;; )
;;; (remove-hook 'coding-hook 'turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

