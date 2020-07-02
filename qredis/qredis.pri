INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

HEADERS += $$PWD/fmacros.h \
           $$PWD/hiredis.h \
           $$PWD/net.h \
           $$PWD/read.h \
           $$PWD/sds.h \
           $$PWD/sdsalloc.h \
           $$PWD/sslio.h \
           $$PWD/command.h \
           $$PWD/command_args.h \
           $$PWD/command_options.h \
           $$PWD/connection.h \
           $$PWD/connection_pool.h \
           $$PWD/errors.h \
           $$PWD/pipeline.h \
           $$PWD/queued_redis.h \
           $$PWD/queued_redis.hpp \
           $$PWD/redis.h \
           $$PWD/redis.hpp \
           $$PWD/redis++.h \
           $$PWD/redis_cluster.h \
           $$PWD/redis_cluster.hpp \
           $$PWD/reply.h \
           $$PWD/shards.h \
           $$PWD/shards_pool.h \
           $$PWD/subscriber.h \
           $$PWD/transaction.h \
           $$PWD/utils.h

SOURCES += $$PWD/hiredis.c \
           $$PWD/net.c \
           $$PWD/read.c \
           $$PWD/sds.c \
           $$PWD/sslio.c \
           $$PWD/command.cpp \
           $$PWD/command_options.cpp \
           $$PWD/connection.cpp \
           $$PWD/connection_pool.cpp \
           $$PWD/crc16.cpp \
           $$PWD/errors.cpp \
           $$PWD/pipeline.cpp \
           $$PWD/redis.cpp \
           $$PWD/redis_cluster.cpp \
           $$PWD/reply.cpp \
           $$PWD/shards.cpp \
           $$PWD/shards_pool.cpp \
           $$PWD/subscriber.cpp \
           $$PWD/transaction.cpp
