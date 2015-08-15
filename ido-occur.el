;;; ido-occur.el --- Yet another `occur' with `ido'.

;; Copyright (C) 2015 Danil <danil@kutkevich.org>.
;; Author: Danil <danil@kutkevich.org>
;; Package-Version: 0.0.1
;; Version: 0.0.1
;; Package-Requires: ()
;; Keywords: inner buffer search
;; URL: http://danil.kutkevich.org/p/el/ido-occur

;;; Commentary:
;; Yet another `occur' with `ido'.
;; See the README.md for more details.

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(require 'ido)

(defgroup ido-occur nil
  "Yet another `occur' with `ido'."
  :group 'help
  :group 'convenience)

(defcustom ido-occur--prompt "List lines matching: "
  "Minibuffer prompt."
  :type 'string
  :group 'ido-occur)

(defun ido-occur--lines-as-string ()
  "Get all lines with properties of current buffer."
  (with-current-buffer (current-buffer)
    (save-restriction
      (widen)
      (buffer-substring (point-min) (point-max)))))

(defun ido-occur--lines-as-list ()
  "List all lines of current buffer."
  (split-string (ido-occur--lines-as-string) "\n" t))

(defun ido-occur--strip-text-properties (txt)
  "Strip text properties from `TXT'."
  (set-text-properties 0 (length txt) nil txt) txt)

;;;###autoload
(defun ido-occur ()
  "Yet another `occur' with `ido'."

  (interactive)
  (let ((line (ido-occur--strip-text-properties
               (ido-completing-read ido-occur--prompt
                                    (ido-occur--lines-as-list)))))
    (goto-char (point-min))
    (search-forward line)
    (beginning-of-line)))

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; ido-occur.el ends here
