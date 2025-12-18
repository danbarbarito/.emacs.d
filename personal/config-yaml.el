(prelude-require-packages '(yaml-pro))

(require 'yaml-pro)

(with-eval-after-load 'yaml-pro
  (add-hook 'yaml-mode-hook #'yaml-pro-mode 100))
