package org.yuwhuawang.dao;

import org.yuwhuawang.entity.SecKill;

import java.util.Date;
import java.util.List;

/**
 * Created by DIY on 2016/9/29.
 */
public interface SeckillDao {
    /**
     * 减库存
     * @param seckillId
     * @param killTime
     * @return
     */
    int reduceNumber(long seckillId,Date killTime);

    /**
     *
     * @param seckillId
     * @return
     */
    SecKill queryById(long seckillId);

    /***
     *
     * @param start
     * @param limit
     * @return
     */
    List<SecKill> queryAll(int start, int limit);

}
