function(AddYear YEAR)
	option(AOC_${YEAR} "Enable to include the advent of code ${YEAR} solutions" ON)

	if (AOC_${YEAR})
		message(STATUS "[+] AoC ${YEAR}")
		set(CMAKE_FOLDER AOC_${YEAR})
		add_subdirectory(${YEAR})
	endif()
endfunction()

function(AddDay DAY)
	option(AOC_${YEAR}_${DAY} "Enable to include the advent of code ${YEAR} Day ${DAY} solution" ON)

	if (AOC_${YEAR}_${DAY})
		set(TARGET_NAME ${YEAR}_${DAY})
		add_subdirectory(${DAY})
		message(STATUS "    [+] Day ${DAY}")
		set(STARTUP_PROJECT ${TARGET_NAME} CACHE INTERNAL "")
	endif()
endfunction()