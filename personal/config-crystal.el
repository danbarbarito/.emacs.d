(prelude-require-packages '(crystal-mode))

(require 'prelude-lsp)
(require 'crystal-mode)

(with-eval-after-load 'crystal-mode
  (defun my--init-crystal-mode ()
    "Local init function for `crystal-mode'.")

  (add-hook 'crystal-mode-hook 'my--init-crystal-mode)
  (add-hook 'crystal-mode-hook #'lsp-deferred))
