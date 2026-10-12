---
name: portrait-retouch
description: 人像照片精修与风格化（P图）。当用户上传自己的人像/自拍/写真/证件照并要求修图、美颜、P图、精修、换风格、调色、去瑕疵、磨皮、瘦脸、换背景、提升质感、写真感时使用。核心流程：接收照片并先输出完整分析 → 三轮引导式提问 → 第 4 问选滤镜 → 第 5 问补充 → 给出至少 3 套详细修改方案供用户选择 → 选定后生成 → 对比原图迭代。首要原则：成片必须彻底去除 AI 味，像专业修图师修出来的真实照片，而非 AI 生成图。EN: Portrait photo retouching and restyling ("P图"). Trigger when the user uploads a selfie/portrait/ID photo and asks for retouching, beautifying, skin fixing, face slimming, background swap, color grading or a "photoshoot look". Flow: analyze the photo first → 3 guided questions → Q4 filter pick → Q5 supplements → present ≥3 detailed edit plans to choose from → generate → iterate. Top priority: the output must be completely free of the "AI look" — it must look like a real photo retouched by a professional, not an AI generation.
---

# 人像 P 图（portrait-retouch） / Portrait Retouching

## 最高原则：去 AI 味（优先级最高）/ Prime Directive: Remove the AI Look

所有输出必须首先满足去 AI 味要求，再谈美观。每生成一张图，先对照
[references/anti-ai.md](references/anti-ai.md) 的清单自查；该文件包含 AI 味的具体表现、
必须保留的真实感要素和提示词写法（正/负面清单）。拿不准时宁可少修，不要过度。

> **EN:** Every output must pass the anti-AI-look requirement before any aesthetics are considered.
> Before generating each image, check it against the checklist in
> [references/anti-ai.md](references/anti-ai.md) — it lists what the AI look looks like, the
> realism elements that must be preserved, and prompt-writing rules (positive/negative lists).
> When in doubt, retouch less, not more.

## 工作流（严格按顺序执行）/ Workflow (follow strictly in order)

### 第 0 步：接收照片 → 先给完整分析（提问之前必做）/ Step 0: Receive the photo → deliver a full analysis BEFORE any questions

1. 仔细读图，记录：性别与大致年龄段、脸型与五官特点、皮肤状况、发型发色、光线条件、场景与背景、构图、画质、穿搭与氛围。
2. 对照 [references/cases.md](references/cases.md) 找 1–2 个最接近的案例做锚点。
3. **在任何提问开始之前，先向用户输出完整分析**，格式：

```
【我的分析】
- 光线：……（问题/优点）
- 皮肤：……
- 五官：……
- 构图：……
- 背景/氛围：……
【我推荐的方向】结合照片情况，我建议可以：①……②……③……（给具体建议，不是空话）
```

分析要指出"哪些地方有什么问题"，并给出推荐修改方向；但**不要未经询问直接按自己的判断开修**——分析是提问的铺垫，决定权交给用户。

> **EN:**
> 1. Read the photo carefully and note: gender and rough age range, face shape and features, skin
>    condition, hair, lighting, scene and background, composition, image quality, outfit and mood.
> 2. Find 1–2 closest cases in [references/cases.md](references/cases.md) as anchors.
> 3. **Before asking ANY question, deliver a complete analysis to the user**, in this format:
>
> ```
> 【My analysis】
> - Lighting: ... (issues/strengths)
> - Skin: ...
> - Features: ...
> - Composition: ...
> - Background/mood: ...
> 【Recommended directions】Based on this photo, I suggest: ①... ②... ③... (concrete advice, no empty words)
> ```
>
> The analysis must name specific problems and give recommended directions — but **never start
> editing on your own judgment without asking**; the analysis sets up the questions, the user decides.

### 第 1 步：五轮提问（严格按此顺序）/ Step 1: Five rounds of questions (strict order)

按 [references/interview-script.md](references/interview-script.md) 的剧本执行：

- **第 1 问（修哪里）**：用户最想调整哪些部位/区域，结合第 0 步的分析给具体选项。
- **第 2 问（怎么修）**：每个部位怎么改、改到什么程度（自然微调 / 明显改善 / 大胆改造），并确认保留项——绝对不能动的个人特征。
- **第 3 问（整体风格）**：想要什么整体风格/氛围/用途。用户"不知道/你看着办"时记录为"风格未定"，不要追问。
- **第 4 问（选滤镜）**：打开 [references/style-library.md](references/style-library.md) 的滤镜模板库，让用户快捷选择一个现成滤镜，或选"不套"。**此问在补充环节之前。**
- **第 5 问（补充环节）**：主动追问还有什么要补充：参照对象、禁忌元素、妆感、用途平台、尺寸比例、备选张数。用户确认没有遗漏后，提问环节关闭。

提问纪律：一次只问一个问题（可带选项）；每轮回答先复述确认再进下一问；用户答"随便/都可以"时给 2–3 个具体选项让其挑，不许替用户直接决定。

> **EN:** Follow the script in [references/interview-script.md](references/interview-script.md):
>
> - **Q1 (where):** which parts/regions to adjust; offer concrete options based on the Step-0 analysis.
> - **Q2 (how):** how to change each part and to what degree (subtle / noticeable / bold), plus the keep-list — personal features that must never be touched.
> - **Q3 (overall style):** desired style/mood/purpose. If the user says "I don't know / you decide", record "style undecided" — do NOT probe further.
> - **Q4 (filter):** offer quick picks from the filter template library in [references/style-library.md](references/style-library.md), including "no filter". **This comes BEFORE the supplement round.**
> - **Q5 (supplements):** actively ask about anything missing: reference idols, forbidden elements, makeup, platform/purpose, aspect ratio, number of variants. The Q&A phase closes only after the user confirms nothing is missing.
>
> Rules: one question at a time (options allowed); recap and confirm each answer before moving on;
> if the user says "whatever", offer 2–3 concrete options to pick from — never decide for them.

### 第 2 步：给出至少 3 套详细修改方案（五问之后必做，无论风格是否已定）/ Step 2: Present at least 3 DETAILED edit plans (mandatory after Q5, whether or not the style is decided)

汇总前五问的全部信息，出 **至少 3 套**方案供用户选择，格式如下（每套都要写满，禁止简略）：

```
方案 A：〈风格名〉
【修哪里】逐项列出要动的部位，没提的写"不动"
【怎么修】每个部位写清具体动作和程度（用 retouch-playbook 的档位语言），保留项明确写"保留"
【整体风格】风格 + 滤镜的组合效果，一句话氛围描述
【改后效果】用户看完能想象出成片：肤色/光线/色彩/质感会变成什么样，像什么场景下拍出来的
【适合场景】什么用途选这套
【风险提醒】（可选）该方案的注意事项，如脸型变化较大、背景直线不能弯等
```

- 若第 3 问风格已定：3 套方案在同一风格方向下做**侧重和强度差异**（如：自然档 / 出片档 / 大胆档），不能出成三套几乎一样的方案。
- 若风格未定：3 套方案必须是**不同的自己**（跨风格，差异明显），可混搭并明确说可混搭。
- 方案之间的差异要足以让用户感觉"是在选不同的成片"，而不是在选参数。

> **EN:** Combine everything from the five questions and present **at least 3 plans** in this format
> (every field must be filled — brevity is forbidden):
>
> ```
> Plan A: <style name>
> 【Where】every part to change, item by item; write "unchanged" for the rest
> 【How】concrete action and degree per part (use the playbook levels); keep-list items marked "keep"
> 【Overall style】style + filter combo, one-sentence mood
> 【Result】the user can picture the final image: skin/lighting/color/texture after the edit,
>           what scenario it will look like it was shot in
> 【Best for】which use case this plan suits
> 【Risks】(optional) cautions, e.g. big face-shape change, background straight lines must stay straight
> ```
>
> - If Q3 picked a style: the 3 plans vary in emphasis and intensity within that direction
>   (subtle / polished / bold) — three near-identical plans are not allowed.
> - If undecided: the 3 plans must be clearly different "different selves" (cross-style), and the user
>   must be told mixing is allowed.
> - The differences must feel like choosing between different final photos, not between parameters.

### 第 3 步：用户选定方案后生成与迭代/ Step 3: Generate and iterate after the user picks a plan

1. 按 [references/anti-ai.md](references/anti-ai.md) 的提示词规范构造完整提示词（必须包含原图引用），调用 image_generation 生成，建议尺寸与原图一致或按用户选的比例。
2. 出图后与原图并列展示，逐条复述"改了什么"，让用户确认或继续提修改意见。
3. 迭代时优先用参考图能力传上一版继续改；每轮迭代重新过去 AI 味自查清单。

> **EN:**
> 1. Build the full prompt per the prompt spec in [references/anti-ai.md](references/anti-ai.md)
>    (must reference the original image) and call image_generation; match the original size or the user's chosen ratio.
> 2. Show the result side by side with the original, recap what was changed item by item, and collect confirmation or further requests.
> 3. When iterating, pass the previous version as the reference image; re-run the anti-AI checklist every round.

## 参考文件 / Reference Files

- [references/anti-ai.md](references/anti-ai.md) — 去 AI 味完整规范（最高优先级，出图前必查）/ Anti-AI-look spec (top priority; check before every generation)
- [references/cases.md](references/cases.md) — 人像修图案例集：分析→方案→预期效果（第 0 步分析必查，方案格式范本）/ Casebook: analysis→plan→expected result (anchor for Step 0; format template for plans; doubles as fine-tuning dataset)
- [references/interview-script.md](references/interview-script.md) — 五轮提问完整剧本与话术 / Full script for the five question rounds
- [references/style-library.md](references/style-library.md) — 风格滤镜模板库（第 4 问用）/ Filter template library (used in Q4)
- [references/retouch-playbook.md](references/retouch-playbook.md) — 分区修图技法参考（第 2 问与方案撰写用）/ Region-by-region retouch techniques (used in Q2 and plan writing)
