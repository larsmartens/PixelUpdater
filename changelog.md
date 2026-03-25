# NONE.r157.g583f4ca

_Commit titles and messages for `v0.210..NONE.r157.g583f4ca`._

## Remove Google Play dependency info block Disable dependency info inclusion in APKs and Bundles

https://github.com/chenxiaolong/Custota/commit/f4ce8311543038c3ad4a2649f44f743e3123ba7b

- Commit: `77a9a92`
- Author: Isaac Haikonen
- Date: 2026-01-23

## Move compiler warning suppressions to the external subdirectory

- Relocate `-Wno-double-promotion` and `-Wno-unused-function` from the main `CMakeLists.txt` to `external/CMakeLists.txt`.

- Commit: `f61fae6`
- Author: Isaac Haikonen
- Date: 2026-01-23

## Update build comparison logic to only consider updates with a build ID greater than the current one when the build dates are identical.


- Commit: `ce7860d`
- Author: Isaac Haikonen
- Date: 2026-01-23

## Refactor SELinux rule application logic in `pixelupdater_selinux`.

- Replace `add_rule_safe` function with a concise lambda helper `add_safe` to handle non-fatal rule additions.
- Streamline the set of additional SELinux rules for `pixelupdater_app`, focusing on core requirements for `update_engine_service`, `power_service`, and property access.
- Remove redundant or experimental rules related to `media_rw_data_file`, `shell_exec`, `unlabeled` block devices, and broad system capabilities.
- Retain essential rules for ART heap compaction (anon_inodes) using the new safe addition mechanism.

- Commit: `5dcb061`
- Author: Isaac Haikonen
- Date: 2026-01-23

## fix: point PixelUpdater metadata and builds at fork


- Commit: `05e1c94`
- Author: Lars Martens
- Date: 2026-03-20

## fix: allow fork release workflow without secrets


- Commit: `583f4ca`
- Author: Lars Martens
- Date: 2026-03-20

