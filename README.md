# CKDBManager
基于FMDB封装的swift库，直接模型建表不需要写sql语句
    ///1、需要创建数据库或更新字段的模型名称需要继承BaseModel,并把对应的模型类名在DBModel.plist文件中
    ///2、key为当前数据版本，value为该版本需要升级和修改的表对应Model的类名
    ///3、把info.plist中DBVersion字段+1
    暂时只支持strut的，在后续会逐步加入更多支持类型
