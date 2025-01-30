#include <test/ut.h>
#include <test/common.h>

static int test_example(struct unit_test_state *uts)
{
	printf("Running test example\n");
	ut_assert(1 + 1 == 2);
	printf("test_example_passed\n");
	return 0;
}

COMMON_TEST(test_example, 0);
