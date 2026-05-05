---
name: ios-logo-generator
description: Generate polished iOS app logo concepts with a GPT image model. Use when the user asks Codex to create, explore, iterate, or export an iOS app icon/logo, App Store icon, rounded-square icon concept, or brand mark intended for an iPhone or iPad app.
---

# iOS Logo Generator

## Workflow

Clarify only when a missing detail would materially change the logo direction. Otherwise infer from the app name, category, audience, existing brand cues, screenshots, or repo context.

Use the image generation capability to create a bitmap logo concept. Prefer a single strong app-icon composition over a collage or marketing illustration.

## Prompt Shape

Build the generation prompt with these parts:

- App identity: app name, category, audience, and core metaphor.
- Icon format: centered symbol, square canvas, no rounded-corner mask baked into the art.
- Visual style: modern iOS app icon, simple silhouette, high contrast, polished material or flat vector-like rendering.
- Constraints: no tiny text, no UI screenshots, no device mockups, no App Store badge, no cluttered background.
- Output target: suitable for downscaling to 1024, 180, 120, and 60 px.

When the user has no direction, generate 2-4 concept directions in text first, choose the strongest default, then create the image.

## iOS Icon Checks

After generation, inspect the result against these criteria:

- The icon reads clearly at small sizes.
- The main shape is centered and not clipped.
- The background reaches all edges; do not include transparent padding unless requested.
- There is no text unless the user explicitly requested a lettermark.
- Details are broad enough to survive iOS downscaling.
- The design still works when iOS applies the rounded rectangle mask.

If the generated image fails one of these checks, iterate with a tighter prompt instead of delivering the weak result.

## Delivery

Return the generated image and a concise note describing the concept. If files are created, use practical names such as `ios-logo-1024.png` or `<app-name>-icon-concept.png`.

Do not copy third-party logos, Apple system app icons, or trademarked app icon compositions. If the user asks for a logo "like" a protected brand, preserve only broad non-protected traits such as simplicity, contrast, or material feel.
