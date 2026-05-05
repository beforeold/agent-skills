# agent-skills

Personal Codex skills and installation helpers.

## Layout

```text
skills/
  my-skill/
    SKILL.md
scripts/
  install-codex-skills.sh
```

Put personal skills under `skills/<skill-name>/SKILL.md`. The install script symlinks each valid skill directory into `~/.codex/skills`.

Third-party skills with separate licenses, such as Point-Free Way skills, should be installed through their own tools instead of copied into this repository.

## Install

From this repository:

```sh
./scripts/install-codex-skills.sh
```

The script is idempotent. Re-run it after adding or renaming a skill.
