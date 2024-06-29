package snake

import rl "vendor:raylib"

WINDOW_SIZE :: 1000
GRID_WIDTH :: 20
CELL_SIZE :: 16
Vec2i :: [2]int

snake_head_position: Vec2i

main :: proc() {
	// enable v-sync for hardware optimizations
	rl.SetConfigFlags({.VSYNC_HINT})
	rl.InitWindow(WINDOW_SIZE, WINDOW_SIZE, "Snake")

	snake_head_position = {GRID_WIDTH / 2, GRID_WIDTH / 2}

	// frame game loop
	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground({76, 63, 83, 255})

		head_rect := rl.Rectangle {
			f32(snake_head_position.x) * CELL_SIZE,
			f32(snake_head_position.y) * CELL_SIZE,
			CELL_SIZE,
			CELL_SIZE,
		}

		rl.DrawRectangleRec(head_rect, rl.WHITE)

		rl.EndDrawing()
	}

	rl.CloseWindow()
}
