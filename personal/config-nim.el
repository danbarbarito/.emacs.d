(prelude-require-packages '(nim-mode))

(require 'prelude-lsp)
(require 'nim-mode)

(with-eval-after-load 'nim-mode
  (defun my--init-nim-mode ()
    "Local init function for `nim-mode'."

    ;; Make files in the nimble folder read only by default.
    ;; This can prevent to edit them by accident.
    (when (string-match "/\.nimble/" (or (buffer-file-name) "")) (read-only-mode 1))

    ;; If you want to experiment, you can enable the following modes by
    ;; uncommenting their line.
    ;;(nimsuggest-mode 1)
    ;; Remember: Only enable either `flycheck-mode' or `flymake-mode' at the same time.
    ;; (flycheck-mode 1)
    ;; (flymake-mode 1)

    ;; The following modes are disabled for Nim files just for the case
    ;; that they are enabled globally.
    ;; Anything that is based on smie can cause problems.
    (auto-fill-mode 0)
    (electric-indent-local-mode 0))

  (add-hook 'nim-mode-hook 'my--init-nim-mode)
  (add-hook 'nim-mode-hook #'lsp-deferred))
