# Recalbox

## Bypass Read-Only file system sous Recalbox 4.0.x-beta*

```bash
cd /
mount -o remount,rw /
mount -o remount,rw /boot
```

**Change file permissions forever**

http://blog.recalbox.com/forums/topic/read-only-sur-nightly-4-0-0/

```bash
vi /etc/fstab
```

Changer les toutes les valeurs 'ro' by 'rw'
Sous vi:
- se mettre sur la lettre 'o' appuyer sur 'r' et saisir sur 'w'
- pour enregistrer:
  - appuyer sur 'esc', puis saisir sur ':wq'
- pour sortir sans enregister
  - appuyer sur 'esc', puis saisir sur ':q!'
