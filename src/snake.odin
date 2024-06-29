package snake

import rl "vendor:raylib"

WINDOW_SIZE :: 1000

main :: proc() {
	// enable v-sync for hardware optimizations
	rl.SetConfigFlags({.VSYNC_HINT})
	rl.InitWindow(WINDOW_SIZE, WINDOW_SIZE, "Snake")

	// frame game loop
	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground({76, 63, 83, 255})
		rl.EndDrawing()
	}

	rl.CloseWindow()
}
