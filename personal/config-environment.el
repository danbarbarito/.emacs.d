;;; Code:

(prelude-require-packages '(exec-path-from-shell))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
