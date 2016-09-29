package org.yuwhuawang.dao;

import org.yuwhuawang.entity.SuccessKilled;

/**
 * Created by DIY on 2016/9/29.
 */
public interface SecussKilled {
    /***
     *
     * @param seckillId
     * @param userPhone
     * @return
     */
    int insertSuccessKilled(long seckillId, long userPhone);

    /***
     *
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);
}
