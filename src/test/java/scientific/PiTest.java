package scientific;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class PiTest {
    @Test
    public void getValue() {
        Pi pi = new Pi();
        double pic = pi.getValue();
        assertEquals(3.14, pic, 0);
    }
}