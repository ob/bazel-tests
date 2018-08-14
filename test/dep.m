#include "dep.h"
#include "dep_deep.h"
#include <trans/trans.h>
#include <trans/trans_deep.h>

//#include <trans/trans_private.h>

int depfunc(void) {
    return DEP + TRANS + DEP_DEEP + TRANS_DEEP + transfunc();
}
