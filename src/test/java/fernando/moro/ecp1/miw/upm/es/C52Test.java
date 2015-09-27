package fernando.moro.ecp1.miw.upm.es;

import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;

public class C52Test {
    private C52 c52;

    @Before
    public void before() {
        c52 = new C52();
    }

    @Test
    public void testMA() {
        assertEquals(c52.mA(), "mA()");
    }
}
