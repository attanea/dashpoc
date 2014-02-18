package ch.efg.poc.dashboard.controller;

import ch.efg.poc.dashboard.model.TableData;
import ch.efg.poc.dashboard.model.TableRow;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Random;

/**
 * igor on 18.02.14.
 */
@Controller
public class TableDataController {

    public static final Random RANDOM = new Random(10);

    @RequestMapping(value = "/table-data")
    @ResponseBody
    public TableData tableData(@RequestParam(value = "page", required = false, defaultValue = "0") int page,
                               @RequestParam(value = "start", required = false, defaultValue = "0") int start,
                               @RequestParam(value = "limit", required = false, defaultValue = "25") int limit) {
        TableRow[] rows = generateData(start, limit);
        return new TableData(rows, 2000);
    }

    private TableRow[] generateData(int start, int limit) {
        TableRow[] rows = new TableRow[limit];
        for (int i = 0; i < limit; i++) {
            int index = i + start;
            rows[i] = new TableRow("company " + index, index, index - RANDOM.nextInt(10), index, "street " + index, "area " + 1, "region " + index);
        }
        return rows;
    }
}
