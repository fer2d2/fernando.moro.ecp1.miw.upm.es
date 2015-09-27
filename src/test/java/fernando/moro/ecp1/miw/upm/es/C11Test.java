package fernando.moro.ecp1.miw.upm.es;

import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;

public class C11Test {
    private C11 c11;

    @Before
    public void before() {
        c11 = new C11();
    }

    @Test
    public void testM1() {
        assertEquals(c11.m1(), "m1()");
    }

    @Test
    public void testM2() {
        assertEquals(c11.m2(), "m2()");
    }
}
