-define(DEFAULT_WORKERS_NUM, 4).

%%-define(BINARY_COPY(Val), Val) %% - faster, less memory while you don't reload files. If you do reload you can potentially prevent old binaries from getting garbage collected
-define(BINARY_COPY(Val), binary:copy(Val)). %% bit slower, more memory, but allows garbage collecting old large binaries with ease

-define(IPV6, 6).
-define(IPV4, 4).

-record(mmdbmeta, {descr, database_type, languages, timestamp, ip_version, record_size, node_count, vsn, whole, remdr, tree_size, data_start, v4_start}).
-define(GPATH(Name, Path, Default), {Name, Path, Default}).