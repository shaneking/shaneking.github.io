<map version="1.0.1"><node CREATED="1621352384230" ID="ID_root" MODIFIED="1621352384230" TEXT="事务场景下缓存数据一致性"><node CREATED="1621352384230" ID="ID_2273df256294" POSITION="right" MODIFIED="1621352384230" TEXT="1.关注此事务操作了多少key是否可行？"><node CREATED="1621352384230" ID="ID_cccc8145126c" MODIFIED="1621352384230" TEXT="4.是否也不能新增key？"><node CREATED="1621352384230" ID="ID_8bf5169af8ea" MODIFIED="1621352384230" TEXT="12.可以的"><node CREATED="1621352384230" ID="ID_32fdba3a68cf" MODIFIED="1621352384230" TEXT="14.而且新增key时无需加入“操作”列表"></node></node><node CREATED="1621352384230" ID="ID_5b89e78f9b18" MODIFIED="1621352384230" TEXT="13.如果新增key在“删除”列表，则不能新增"></node></node><node CREATED="1621352384230" ID="ID_1854fa5f4b05" MODIFIED="1621352384230" TEXT="10.删除key如何管理？"><node CREATED="1621352384230" ID="ID_81dd32509657" MODIFIED="1621352384230" TEXT="15.事务会滚时，删除的key要再删除一遍"></node></node></node><node CREATED="1621352384230" ID="ID_73155f8070d6" POSITION="right" MODIFIED="1621352384230" TEXT="2.仅关注此事务期间新增了多少key是否可行？"><node CREATED="1621352384230" ID="ID_46a191dbb205" MODIFIED="1621352384230" TEXT="3.不可行。此事务期间除了本机本线程，还有其它服务器线程"><node CREATED="1621352384230" ID="ID_513df2d8d7d5" MODIFIED="1621352384230" TEXT="9.而且新增的key存储在哪里都是个问题。而且如果期间有多个事务，新增一个key还得存多份"></node></node></node><node CREATED="1621352384230" ID="ID_3d3605bf6c51" POSITION="right" MODIFIED="1621352384230" TEXT="5.非事务才使用缓存，事务就不用缓存是否可行？"><node CREATED="1621352384230" ID="ID_1efe351f1461" MODIFIED="1621352384230" TEXT="6.不可行。此事务不用，非事务用，照样不能保证一致性"></node></node><node CREATED="1621352384230" ID="ID_74c54336c531" POSITION="right" MODIFIED="1621352384230" TEXT="7.存在事务期间，整个系统禁止新增缓存？"><node CREATED="1621352384230" ID="ID_78834eddaa50" MODIFIED="1621352384230" TEXT="8.如何通知其他服务器线程？是否每次新增key都要check？"></node><node CREATED="1621352384230" ID="ID_163f539ab75e" MODIFIED="1621352384230" TEXT="11.如果系统大部分请求开启了事务，则无意义"></node></node></node></map>