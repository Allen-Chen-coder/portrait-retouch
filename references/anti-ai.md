# 去 AI 味完整规范（最高优先级）/ Anti-AI-Look Spec (Top Priority)

> 本文件是 portrait-retouch skill 的第一准则。美观、风格、滤镜全部排在"像真实照片"之后。
> 每张成片生成前，逐条过一遍 §1；生成后逐条过一遍 §2。
>
> **EN:** This file is the first principle of the portrait-retouch skill. Beauty, style and filters all
> rank below "looks like a real photo". Run through §1 before generating every image and §2 after.

## 目录 / Contents
1. AI 味的典型表现（负面清单，提示词与自查共用）/ What the AI look looks like (negative list, shared by prompts and self-check)
2. 成片自查清单（生成后必须逐条核对）/ Post-generation checklist (verify item by item)
3. 真实感的来源（必须在提示词中主动保留/强化的要素）/ Where realism comes from (elements prompts must actively preserve)
4. 提示词写法规范（正/负清单）/ Prompt-writing spec (positive/negative lists)
5. 不同照片类型的去 AI 味要点 / Anti-AI points by photo type

---

## 1. AI 味的典型表现（出现任何一条即不合格）/ What the AI look looks like (ANY single hit = fail)

**皮肤与五官 / Skin & features**
- 皮肤像磨皮拉到 100%：零毛孔、零纹理、塑料感/瓷娃娃感/硅胶感 / skin like 100% smoothing: zero pores, zero texture, plastic/porcelain/silicone feel
- 脸部被"对称化"：左右完全镜像，真实人脸从不对称 / face "symmetrized": perfectly mirrored; real faces are never symmetric
- 五官被重画成"标准网红脸"：平行大双、高挺到失真的鼻梁、统一微笑唇 / features redrawn into a generic influencer face
- 眼睛无神：没有眼神光/高光点位置诡异、虹膜颜色被改成不真实的浅色 / dead eyes: no catchlights, weird highlight positions, unnaturally light irises
- 牙齿过白、过整齐，像假牙贴面 / over-white, over-even teeth like veneers
- 发际线变成一条完美弧线，头发成绺成片的"假发感"，发丝边缘有涂抹感 / hairline becomes a perfect arc, wig-like clumps, smeared hair edges

**光影与色彩 / Light & color**
- 光线来向混乱：影子方向与光源矛盾，或人物亮了背景却没变 / incoherent light direction, shadows contradicting the source
- 影调"平"：没有明暗过渡，整张脸均匀受光，像棚拍证件照打光 / flat tonality, no falloff, even studio-style lighting
- 颜色过度饱和或整体偏色成滤镜味（除非用户选了对应风格滤镜）/ oversaturated colors or global color cast (unless the user picked that filter)
- HDR 感、锐化过度、边缘光晕 / HDR feel, over-sharpening, edge halos

**细节与物理 / Detail & physics**
- 饰品、眼镜、头发穿模：耳环穿过耳垂、镜腿消失、发丝插入肩膀 / clipping: earrings through lobes, missing temple arms, hair strands through shoulders
- 手指/耳朵等被改动后出现多余或缺失的结构 / extra or missing finger/ear structures after edits
- 背景虚化假：过渡生硬，或虚化程度与镜头物理不符 / fake bokeh: abrupt transitions or physics-inconsistent blur
- 衣服纹理被抹平，面料质感丢失 / clothing texture smoothed away

**气质层面 / Vibe level**
- "AI 写真感"：空洞的表情、模式化的构图（永远居中、永远 45 度侧脸）/ "AI photoshoot" vibe: hollow expression, templated composition
- 表情被改：用户原来的笑容、神态特征丢失 / expression changed: the user's original smile and expressions lost

## 2. 成片自查清单（生成后逐条确认）/ Post-generation checklist

- [ ] 脸型、五官比例与原图一致，只做了用户要求的调整 / face shape and feature proportions match the original; only user-requested changes made
- [ ] 用户点名要保留的特征（痣、酒窝、单眼皮等）原样保留 / user-named keep-items (moles, dimples, monolid, etc.) preserved
- [ ] 皮肤有真实纹理：放大看有细微毛孔和肤色不均，不是纯色块 / real skin texture: visible pores and uneven tone at 100% zoom
- [ ] 眼神有光，看向与原图一致的方向 / catchlights present, gaze unchanged
- [ ] 光线方向与原图一致，阴影落在合理位置 / lighting direction matches the original, shadows plausible
- [ ] 背景与原图一致（除非用户要求换背景），透视与虚化自然 / background consistent (unless swapped), natural perspective and bokeh
- [ ] 头发边缘、发丝细节自然，发际线没有变得过分整齐 / natural hair edges and strands; hairline not over-neatened
- [ ] 衣服、饰品细节完好，无穿模无变形 / clothing and accessories intact, no clipping or distortion
- [ ] 整体色彩没有过度饱和/偏色（用户选了滤镜模板除外）/ no oversaturation or cast (user-picked filter excepted)
- [ ] 与原图并排看，能相信是"同一个人、同一张照片被修过"，而不是另一张脸 / side by side with the original it reads as "same person, same photo, retouched", not a different face

任一条不过 → 修改提示词重出，不要交付。/ Any failure → fix the prompt and regenerate; do not deliver.

## 3. 真实感的来源（提示词中必须主动写出）/ Where realism comes from (write these into every prompt)

真实修图照片与 AI 生成图的区别在于"不完美的细节"。提示词中显式写入：

/ The difference between a real retouched photo and an AI image lies in "imperfect details". Write these explicitly into prompts:

- **皮肤 / Skin**：retain natural skin texture, visible pores, subtle skin imperfections
- **结构 / Structure**：keep original facial bone structure, face shape and proportions unchanged
- **光影 / Light**：match the original lighting direction and shadows, natural light falloff
- **眼神 / Eyes**：catchlights in eyes, natural gaze
- **头发 / Hair**：individual hair strands visible, natural hairline
- **色彩 / Color**：natural color grading, no oversaturation
- **画质 / Quality**：consistent with original photo quality and grain — 原图是手机夜景就保留一点噪点，不要修成 8K 棚拍 / keep the original's noise and grain; a phone night shot stays a phone night shot, don't "upgrade" it into an 8K studio frame

原则 / Principle：**修的是"这张照片"，不是"这个人重新拍一张"。所有提示词都要锚定原图。**
/ You are editing THIS photo, not re-shooting the person. Anchor every prompt to the original image.

## 4. 提示词写法规范 / Prompt-writing spec

每张图的提示词按此结构组织 / Structure every prompt as:

```
[锚定原图 / Anchor] 以用户提供的人像照片为基准（作为参考图），保持同一个人、同一构图、同一场景、同一光线方向。
                    / Use the user's photo as the reference image: same person, same composition, same scene, same light direction.
[修图动作 / Actions] professional photo retouching of the provided portrait: <用户要求的具体调整逐条写>
                    / list the user's requested edits item by item
[真实感正向 / Realism+] retain natural skin texture and pores, natural catchlights,
                       original facial structure preserved, natural color, consistent film grain
[真实感负向 / Realism-] no plastic skin, no airbrushed look, no face swap, no changed
                       identity, no artificial symmetry, no oversharpening, no HDR,
                       no oversaturation, no beauty-filter look
[风格层 / Style] <用户选定方案/滤镜模板的风格词，放在最后且克制 / style words last, and restrained>
```

要点 / Key points:
- 修图动作宁少勿多：用户没提的部位，提示词里写明 "unchanged / keep as original" / less is more: for parts the user didn't mention, write "unchanged / keep as original"
- 风格词是"轻覆层"：即使选了大风格滤镜，真实感负向清单也不能删 / style is a light overlay: never drop the realism negative list, even with a heavy filter
- 夜景/老照片/低清原图：显式写 "keep the original photo's noise/grain and resolution character"，防止模型"顺手升级画质"导致违和 / night/old/low-res originals: explicitly keep the original noise/grain so the model doesn't "helpfully" upgrade quality into incoherence
- 换背景类需求：新背景的光源方向、色温必须与原图人物受光匹配，并写明 "natural edge blending, realistic hair edges against new background" / background swaps: new background's light direction and color temperature must match the subject; write "natural edge blending, realistic hair edges against new background"

## 5. 不同照片类型的去 AI 味要点 / Anti-AI points by photo type

| 原图类型 / Type | 关键风险 / Key risk | 提示词必须加 / Prompt must add |
|---|---|---|
| 手机自拍/前置镜头 / phone selfie | 被重构成棚拍感 / rebuilt into a studio look | keep casual smartphone selfie look, same angle and distance |
| 夜景/室内灯光 / night/indoor | 噪点被抹掉、灯光变暖过度 / noise wiped, light over-warmed | keep ambient night lighting, original noise level |
| 老照片/扫描件 / old photo/scan | 颜色被"翻新"成现代数码色 / colors "renewed" into modern digital | preserve vintage photo color character and grain |
| 证件照/正装照 / ID/formal | 表情被改成微笑 / expression turned into a smile | keep the exact same neutral expression |
| 多人合影 / group photo | 其他人脸被改动 / other faces altered | only modify the person indicated by the user, all other faces and background people completely unchanged |
