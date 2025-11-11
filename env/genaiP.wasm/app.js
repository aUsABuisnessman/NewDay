# Perplexity AI Video Editor

## Overview

- Cross-platform AI-powered video editor
- Uses ffmpeg.wasm (browser/WASM), fluent-ffmpeg (Node.js)
- Integrates TensorFlow.js for AI (object detection, classification, etc.)
- OpenCV for computer vision (face detection, etc.)
- IndexedDB (browser) or filesystem (Node) for storage

## Setup

1. Install dependencies:
   ```sh
   npm install @ffmpeg/ffmpeg @tensorflow/tfjs @tensorflow/tfjs-node @tensorflow-models/mobilenet opencv4nodejs idb-keyval
   ```
2. See `src/` for code modules and usage.

## Example

See `src/app.js` for a usage example.

  
