/* 
 * MapGridResult.java
 * 
 * Copyright (c) 2009-2012 International Integrated System, Inc. 
 * All Rights Reserved.
 * 
 * Licensed Materials - Property of International Integrated System, Inc.
 * 
 * This software is confidential and proprietary information of 
 * International Integrated System, Inc. (&quot;Confidential Information&quot;).
 */
package com.iisigroup.cap.component.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletResponse;

import com.google.gson.JsonArray;
import com.iisigroup.cap.component.GridResult;
import com.iisigroup.cap.component.Result;
import com.iisigroup.cap.constants.GridEnum;
import com.iisigroup.cap.exception.CapException;
import com.iisigroup.cap.formatter.BeanFormatter;
import com.iisigroup.cap.formatter.Formatter;
import com.iisigroup.cap.formatter.impl.ADDateFormatter;
import com.iisigroup.cap.formatter.impl.ADDateTimeFormatter;
import com.iisigroup.cap.utils.GsonUtil;

/**
 * <pre>
 * Grid Result
 * </pre>
 * 
 * @since 2011/10/26
 * @author iristu
 * @version
 *          <ul>
 *          <li>2011/10/26,iristu,new
 *          <li>2011/03/28,sunkist,update callback
 *          <li>2013/03/29,rodeschen,add extends AjaxFormResult
 *          <li>2013/5/21,rodeschen,修改format錯誤放入原值
 *          </ul>
 */
@SuppressWarnings("serial")
public class MapGridResult extends AjaxFormResult implements GridResult<MapGridResult, Map<String, Object>> {

    protected List<? extends Map<String, Object>> rowData;

    protected String[] columns;

    protected Map<String, Formatter> dataReformatter;

    public MapGridResult() {
        resultMap = new HashMap<String, Object>();
    }

    public MapGridResult(List<Map<String, Object>> rowData, int records) {
        this(rowData, records, null);
    }

    public MapGridResult(List<Map<String, Object>> rowData, int records, Map<String, Formatter> dataReformatter) {
        resultMap = new HashMap<String, Object>();
        setRowData(rowData);
        setRecords(records);
        setDataReformatter(dataReformatter);
    }

    /**
     * <pre>
     * 設定頁碼
     * </pre>
     * 
     * @param page
     *            頁碼
     * @return this
     */
    public MapGridResult setPage(int page) {
        resultMap.put(GridEnum.PAGE.getCode(), page);
        return this;
    }

    /**
     * 取得頁碼
     * 
     * @return 頁碼
     */
    public int getPage() {
        return (Integer) resultMap.get(GridEnum.PAGE.getCode());
    }

    /**
     * <pre>
     * 設定總筆數、每頁筆數及計算總頁數
     * </pre>
     * 
     * @param rowCount
     *            總筆數
     * @param pageRows
     *            一頁筆數
     * @return this
     */
    public MapGridResult setPageCount(int rowCount, int pageRows) {
        resultMap.put(GridEnum.TOTAL.getCode(), rowCount / pageRows + (rowCount % pageRows > 0 ? 1 : 0));
        resultMap.put(GridEnum.RECORDS.getCode(), rowCount);
        resultMap.put(GridEnum.PAGEROWS.getCode(), pageRows);
        return this;
    }

    /**
     * 取得每頁筆數
     * 
     * @return 每頁筆數
     */
    public int getPageRows() {
        return (Integer) resultMap.get(GridEnum.PAGEROWS.getCode());
    }

    /**
     * <pre>
     * 設定總筆數
     * </pre>
     * 
     * @param rowCount
     *            總筆數
     * @return this
     */
    public MapGridResult setRecords(int rowCount) {
        resultMap.put(GridEnum.RECORDS.getCode(), rowCount);
        return this;
    }

    /**
     * <pre>
     * 取得總筆數
     * </pre>
     * 
     * @return 總筆數
     */
    public Integer getRecords() {
        Object o = resultMap.get(GridEnum.RECORDS.getCode());
        return o == null ? 0 : (Integer) o;
    }

    /**
     * <pre>
     * 設定資料行
     * </pre>
     * 
     * @param rowData
     *            資料
     * @return this
     */
    public MapGridResult setRowData(List<? extends Map<String, Object>> rowData) {
        this.rowData = rowData;
        return this;
    }

    @Override
    public String getResult() {
        resultMap.put(GridEnum.PAGEROWS.getCode(), getRowDataToJSON());
        return GsonUtil.mapToJson(resultMap);
    }

    @Override
    public String getLogMessage() {
        StringBuffer b = new StringBuffer();
        b.append("page=").append(resultMap.get(GridEnum.PAGE.getCode())).append(",pagerow=").append(resultMap.get(GridEnum.PAGEROWS.getCode())).append(",rowData=")
                .append(resultMap.get(GridEnum.PAGEROWS.getCode()));
        return b.toString();
    }

    @Override
    public void add(Result result) {
        Map<String, Object> json = GsonUtil.jsonToMap(result.getResult());
        resultMap.putAll(json);
    }

    public MapGridResult addReformatData(String key, Formatter formatter) {
        if (dataReformatter == null) {
            dataReformatter = new HashMap<String, Formatter>();
        }
        dataReformatter.put(key, formatter);
        return this;
    }

    public void setColumns(String[] columns) {
        this.columns = columns;
    }

    public List<? extends Map<String, Object>> getRowData() {
        return this.rowData;
    }

    private List<Map<String, Object>> getRowDataToJSON() {
        List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
        Map<String, Object> row = new HashMap<String, Object>();
        if (rowData != null && !rowData.isEmpty()) {
            for (Map<String, Object> data : rowData) {
                try {
                    row.put(GridEnum.CELL.getCode(), dataToJsonObject(data));
                } catch (CapException e) {
                    logger.error(e.getMessage(), getClass());
                }
                rows.add(row);
            }
        }
        return rows;
    }

    /** column split regularre char **/
    private static String SPLIT = "\\|";

    protected Map<String, Object> dataToJsonObject(Map<String, Object> data) {
        Map<String, Object> row = new HashMap<String, Object>();
        for (String str : columns) {
            Object val = null;
            try {
                try {
                    String[] s = str.split(SPLIT);
                    val = s.length == 1 ? data.get(s[0]) : data.get(s[1]);
                    str = s[0];
                } catch (Exception e) {
                    val = "";
                }
                if (dataReformatter != null && dataReformatter.containsKey(str)) {
                    Formatter callback = dataReformatter.get(str);
                    if (callback instanceof BeanFormatter) {
                        val = callback.reformat(data);
                    } else {
                        val = callback.reformat(val);
                    }
                } else if (val instanceof Timestamp) {
                    val = new ADDateTimeFormatter().reformat(val);
                } else if (val instanceof Date || val instanceof Calendar) {
                    val = new ADDateFormatter().reformat(val);
                }
                // row.add(String.valueOf(val));
            } catch (Exception e) {
                // 2013/5/21,rodeschen,修改format錯誤放入原值
                // val = "";
                // new CapException(e.getMessage(), e, getClass());
            }
            row.put(str, val);
        }
        return row;
    }

    protected String dataToJsonString(Map<String, Object> data) {
        JsonArray row = new JsonArray();
        for (String str : columns) {
            Object val = null;
            try {
                try {
                    String[] s = str.split(SPLIT);
                    val = s.length == 1 ? data.get(s[0]) : data.get(s[1]);
                    str = s[0];
                } catch (Exception e) {
                    val = "";
                }
                if (dataReformatter != null && dataReformatter.containsKey(str)) {
                    Formatter callback = dataReformatter.get(str);
                    if (callback instanceof BeanFormatter) {
                        val = callback.reformat(data);
                    } else {
                        val = callback.reformat(val);
                    }
                } else if (val instanceof Timestamp) {
                    val = new ADDateTimeFormatter().reformat(val);
                } else if (val instanceof Date || val instanceof Calendar) {
                    val = new ADDateFormatter().reformat(val);
                }
                // row.add(String.valueOf(val));
            } catch (Exception e) {
                // 2013/5/21,rodeschen,修改format錯誤放入原值
                // val = "";
                // new CapException(e.getMessage(), e, getClass());
            }
            row.add(String.valueOf(val));
        }
        return row.toString();
    }

    /**
     * set DataReformatter
     * 
     * @param dataReformatter
     *            Map<String, IFormatter>
     */
    public void setDataReformatter(Map<String, Formatter> dataReformatter) {
        this.dataReformatter = dataReformatter;
    }

    // -----------------------------------
    // Order by support
    // -----------------------------------
    private Map<String, Boolean> orderBy;

    public boolean hasOrderBy() {
        return !(orderBy == null || orderBy.isEmpty());
    }

    /**
     * Specify that results must be ordered by the passed column Null by default. 預設為升羃排序
     * 
     * @param orderBy
     *            the order by
     * @return SearchSetting
     */
    public MapGridResult addOrderBy(String orderBy) {
        if (this.orderBy == null) {
            this.orderBy = new LinkedHashMap<String, Boolean>();
        }
        this.orderBy.put(orderBy, false);
        return this;
    }

    /**
     * Specify that results must be ordered by the passed column Null by default.
     * 
     * @param orderBy
     *            orderBy
     * @param orderDesc
     *            是否要降羃排序
     * @return SearchSetting
     */
    public MapGridResult addOrderBy(String orderBy, boolean orderDesc) {
        if (this.orderBy == null) {
            this.orderBy = new LinkedHashMap<String, Boolean>();
        }
        this.orderBy.put(orderBy, orderDesc);
        return this;
    }

    public MapGridResult setOrderBy(Map<String, Boolean> orderBy) {
        this.orderBy = orderBy;
        return this;
    }

    public Map<String, Boolean> getOrderBy() {
        return this.orderBy;
    }

    @Override
    public Map<String, Formatter> getDataReformatter() {
        return this.dataReformatter;
    }

    @Override
    public void respondResult(ServletResponse response) {
        new StringResponse(getContextType(), getEncoding(), getResult()).respond(response);
    }

}
