package fernando.moro.ecp1.miw.upm.es;

import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;

public class C12Test {
    private C12 c12;

    @Before
    public void before() {
        c12 = new C12();
    }

    @Test
    public void testMA() {
        assertEquals(c12.mA(), "mA()");
    }
}
