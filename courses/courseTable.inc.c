#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include <vertice_count_gen.h>
#include <packed_displaylist_symbols_gen.h>
#include "courseTable.h"

/**
 * vertex_count is generated from tools/generate_vertice_count.py
 * It takes the size of the vertex variable from objdump using the model.inc.elf file.
 * From there it divides the size by fourteen bytes (the size of a single vertex).
 * It then generates the header file with definitions of vertex_count.
 * This tool is ran during the compile process.
*/

/**
 * The address of the final displaylist is generated and calculated by tools/generate_segment_headers.py
 * It always refers to a gsSPEndDisplayList command.
 */
#define GET_OFFSET(val) (val - 0x8) - 0x07000000


struct courseTable gCourseTable[] = {{
	_course_mario_raceway_dl_mio0SegmentRomStart, _course_mario_raceway_dl_mio0SegmentRomEnd,
        _mario_raceway_vertexSegmentRomStart, _mario_raceway_vertexSegmentRomEnd,
        _course_mario_raceway_offsetsSegmentRomStart, _course_mario_raceway_offsetsSegmentRomEnd,
        d_course_mario_raceway_vertex, d_course_mario_raceway_vertex_count,
        d_course_mario_raceway_packed, GET_OFFSET(d_course_mario_raceway_packed_end),
        mario_raceway_textures, 0, 0x0000,
}, {
	_course_choco_mountain_dl_mio0SegmentRomStart, _course_choco_mountain_dl_mio0SegmentRomEnd,
        _choco_mountain_vertexSegmentRomStart, _choco_mountain_vertexSegmentRomEnd,
        _course_choco_mountain_offsetsSegmentRomStart, _course_choco_mountain_offsetsSegmentRomEnd,
        d_course_choco_mountain_vertex, d_course_choco_mountain_vertex_count,
        d_course_choco_mountain_packed, GET_OFFSET(d_course_choco_mountain_packed_end),
        choco_mountain_textures, 1, 0x0000,
}, {
	_course_bowsers_castle_dl_mio0SegmentRomStart, _course_bowsers_castle_dl_mio0SegmentRomEnd,
        _bowsers_castle_vertexSegmentRomStart, _bowsers_castle_vertexSegmentRomEnd,
        _course_bowsers_castle_offsetsSegmentRomStart, _course_bowsers_castle_offsetsSegmentRomEnd,
        d_course_bowsers_castle_vertex, d_course_bowsers_castle_vertex_count,
        d_course_bowsers_castle_packed, GET_OFFSET(d_course_bowsers_castle_packed_end),
        bowsers_castle_textures, 0, 0x0000,
}, {
	_course_banshee_boardwalk_dl_mio0SegmentRomStart, _course_banshee_boardwalk_dl_mio0SegmentRomEnd,
        _banshee_boardwalk_vertexSegmentRomStart, _banshee_boardwalk_vertexSegmentRomEnd,
        _course_banshee_boardwalk_offsetsSegmentRomStart, _course_banshee_boardwalk_offsetsSegmentRomEnd,
        d_course_banshee_boardwalk_vertex, d_course_banshee_boardwalk_vertex_count,
        d_course_banshee_boardwalk_packed, GET_OFFSET(d_course_banshee_boardwalk_packed_end),
        banshee_boardwalk_textures, 1, 0x0000,
}, {
	_course_yoshi_valley_dl_mio0SegmentRomStart, _course_yoshi_valley_dl_mio0SegmentRomEnd,
        _yoshi_valley_vertexSegmentRomStart, _yoshi_valley_vertexSegmentRomEnd,
        _course_yoshi_valley_offsetsSegmentRomStart, _course_yoshi_valley_offsetsSegmentRomEnd,
        d_course_yoshi_valley_vertex, d_course_yoshi_valley_vertex_count,
        d_course_yoshi_valley_packed, GET_OFFSET(d_course_yoshi_valley_packed_end),
        yoshi_valley_textures, 0, 0x0000,
}, {
	_course_frappe_snowland_dl_mio0SegmentRomStart, _course_frappe_snowland_dl_mio0SegmentRomEnd,
        _frappe_snowland_vertexSegmentRomStart, _frappe_snowland_vertexSegmentRomEnd,
        _course_frappe_snowland_offsetsSegmentRomStart, _course_frappe_snowland_offsetsSegmentRomEnd,
        d_course_frappe_snowland_vertex, d_course_frappe_snowland_vertex_count,
        d_course_frappe_snowland_packed, GET_OFFSET(d_course_frappe_snowland_packed_end),
        frappe_snowland_textures, 0, 0x0000,
}, {
	_course_koopa_troopa_beach_dl_mio0SegmentRomStart, _course_koopa_troopa_beach_dl_mio0SegmentRomEnd,
        _koopa_troopa_beach_vertexSegmentRomStart, _koopa_troopa_beach_vertexSegmentRomEnd,
        _course_koopa_troopa_beach_offsetsSegmentRomStart, _course_koopa_troopa_beach_offsetsSegmentRomEnd,
        d_course_koopa_troopa_beach_vertex, d_course_koopa_troopa_beach_vertex_count,
        d_course_koopa_troopa_beach_packed, GET_OFFSET(d_course_koopa_troopa_beach_packed_end),
        koopa_troopa_beach_textures, 0, 0x0000,
}, {
	_course_royal_raceway_dl_mio0SegmentRomStart, _course_royal_raceway_dl_mio0SegmentRomEnd,
        _royal_raceway_vertexSegmentRomStart, _royal_raceway_vertexSegmentRomEnd,
        _course_royal_raceway_offsetsSegmentRomStart, _course_royal_raceway_offsetsSegmentRomEnd,
        d_course_royal_raceway_vertex, d_course_royal_raceway_vertex_count,
        d_course_royal_raceway_packed, GET_OFFSET(d_course_royal_raceway_packed_end),
        royal_raceway_textures, 0, 0x0000,
}, {
	_course_luigi_raceway_dl_mio0SegmentRomStart, _course_luigi_raceway_dl_mio0SegmentRomEnd,
        _luigi_raceway_vertexSegmentRomStart, _luigi_raceway_vertexSegmentRomEnd,
        _course_luigi_raceway_offsetsSegmentRomStart, _course_luigi_raceway_offsetsSegmentRomEnd,
        d_course_luigi_raceway_vertex, d_course_luigi_raceway_vertex_count,
        d_course_luigi_raceway_packed, GET_OFFSET(d_course_luigi_raceway_packed_end),
        luigi_raceway_textures, 0, 0x0000,
}, {
	_course_moo_moo_farm_dl_mio0SegmentRomStart, _course_moo_moo_farm_dl_mio0SegmentRomEnd,
        _moo_moo_farm_vertexSegmentRomStart, _moo_moo_farm_vertexSegmentRomEnd,
        _course_moo_moo_farm_offsetsSegmentRomStart, _course_moo_moo_farm_offsetsSegmentRomEnd,
        d_course_moo_moo_farm_vertex, d_course_moo_moo_farm_vertex_count,
        d_course_moo_moo_farm_packed, GET_OFFSET(d_course_moo_moo_farm_packed_end),
        moo_moo_farm_textures, 0, 0x0000,
}, {
	_course_toads_turnpike_dl_mio0SegmentRomStart, _course_toads_turnpike_dl_mio0SegmentRomEnd,
        _toads_turnpike_vertexSegmentRomStart, _toads_turnpike_vertexSegmentRomEnd,
        _course_toads_turnpike_offsetsSegmentRomStart, _course_toads_turnpike_offsetsSegmentRomEnd,
        d_course_toads_turnpike_vertex, d_course_toads_turnpike_vertex_count,
        d_course_toads_turnpike_packed, GET_OFFSET(d_course_toads_turnpike_packed_end),
        toads_turnpike_textures, 0, 0x0000,
}, {
	_course_kalimari_desert_dl_mio0SegmentRomStart, _course_kalimari_desert_dl_mio0SegmentRomEnd,
        _kalimari_desert_vertexSegmentRomStart, _kalimari_desert_vertexSegmentRomEnd,
        _course_kalimari_desert_offsetsSegmentRomStart, _course_kalimari_desert_offsetsSegmentRomEnd,
        d_course_kalimari_desert_vertex, d_course_kalimari_desert_vertex_count,
        d_course_kalimari_desert_packed, GET_OFFSET(d_course_kalimari_desert_packed_end),
        kalimari_desert_textures, 0, 0x0000,
}, {
	_course_sherbet_land_dl_mio0SegmentRomStart, _course_sherbet_land_dl_mio0SegmentRomEnd,
        _sherbet_land_vertexSegmentRomStart, _sherbet_land_vertexSegmentRomEnd,
        _course_sherbet_land_offsetsSegmentRomStart, _course_sherbet_land_offsetsSegmentRomEnd,
        d_course_sherbet_land_vertex, d_course_sherbet_land_vertex_count,
        d_course_sherbet_land_packed, GET_OFFSET(d_course_sherbet_land_packed_end),
        sherbet_land_textures, 0, 0x0000,
}, {
	_course_rainbow_road_dl_mio0SegmentRomStart, _course_rainbow_road_dl_mio0SegmentRomEnd,
        _rainbow_road_vertexSegmentRomStart, _rainbow_road_vertexSegmentRomEnd,
        _course_rainbow_road_offsetsSegmentRomStart, _course_rainbow_road_offsetsSegmentRomEnd,
        d_course_rainbow_road_vertex, d_course_rainbow_road_vertex_count,
        d_course_rainbow_road_packed, GET_OFFSET(d_course_rainbow_road_packed_end),
        rainbow_road_textures, 0, 0x0000,
}, {
	_course_wario_stadium_dl_mio0SegmentRomStart, _course_wario_stadium_dl_mio0SegmentRomEnd,
        _wario_stadium_vertexSegmentRomStart, _wario_stadium_vertexSegmentRomEnd,
        _course_wario_stadium_offsetsSegmentRomStart, _course_wario_stadium_offsetsSegmentRomEnd,
        d_course_wario_stadium_vertex, d_course_wario_stadium_vertex_count,
        d_course_wario_stadium_packed, GET_OFFSET(d_course_wario_stadium_packed_end),
        wario_stadium_textures, 0, 0x0000,
}, {
	_course_block_fort_dl_mio0SegmentRomStart, _course_block_fort_dl_mio0SegmentRomEnd,
        _block_fort_vertexSegmentRomStart, _block_fort_vertexSegmentRomEnd,
        _course_block_fort_offsetsSegmentRomStart, _course_block_fort_offsetsSegmentRomEnd,
        d_course_block_fort_vertex, d_course_block_fort_vertex_count,
        d_course_block_fort_packed, GET_OFFSET(d_course_block_fort_packed_end),
        block_fort_textures, 0, 0x0000,
}, {
	_course_skyscraper_dl_mio0SegmentRomStart, _course_skyscraper_dl_mio0SegmentRomEnd,
        _skyscraper_vertexSegmentRomStart, _skyscraper_vertexSegmentRomEnd,
        _course_skyscraper_offsetsSegmentRomStart, _course_skyscraper_offsetsSegmentRomEnd,
        d_course_skyscraper_vertex, d_course_skyscraper_vertex_count,
        d_course_skyscraper_packed, GET_OFFSET(d_course_skyscraper_packed_end),
        skyscraper_textures, 0, 0x0000,
}, {
	_course_double_deck_dl_mio0SegmentRomStart, _course_double_deck_dl_mio0SegmentRomEnd,
        _double_deck_vertexSegmentRomStart, _double_deck_vertexSegmentRomEnd,
        _course_double_deck_offsetsSegmentRomStart, _course_double_deck_offsetsSegmentRomEnd,
        d_course_double_deck_vertex, d_course_double_deck_vertex_count,
        d_course_double_deck_packed, GET_OFFSET(d_course_double_deck_packed_end),
        double_deck_textures, 0, 0x0000,
}, {
	_course_dks_jungle_parkway_dl_mio0SegmentRomStart, _course_dks_jungle_parkway_dl_mio0SegmentRomEnd,
        _dks_jungle_parkway_vertexSegmentRomStart, _dks_jungle_parkway_vertexSegmentRomEnd,
        _course_dks_jungle_parkway_offsetsSegmentRomStart, _course_dks_jungle_parkway_offsetsSegmentRomEnd,
        d_course_dks_jungle_parkway_vertex, d_course_dks_jungle_parkway_vertex_count,
        d_course_dks_jungle_parkway_packed, GET_OFFSET(d_course_dks_jungle_parkway_packed_end),
        dks_jungle_parkway_textures, 0, 0x0000,
}, {
	_course_big_donut_dl_mio0SegmentRomStart, _course_big_donut_dl_mio0SegmentRomEnd,
        _big_donut_vertexSegmentRomStart, _big_donut_vertexSegmentRomEnd,
        _course_big_donut_offsetsSegmentRomStart, _course_big_donut_offsetsSegmentRomEnd,
        d_course_big_donut_vertex, d_course_big_donut_vertex_count,
        d_course_big_donut_packed, GET_OFFSET(d_course_big_donut_packed_end),
        big_donut_textures, 0, 0x0000,
}};

