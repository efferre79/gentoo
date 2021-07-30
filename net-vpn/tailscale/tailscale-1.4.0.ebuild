# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module systemd tmpfiles
# This is obtained using ./version/version.sh in the upstream repo and
# substituting ${PV} appropriately.
VERSION_SHORT="${PV}"
VERSION_LONG="${PV}-t3d7cff91b"
VERSION_GIT_HASH="3d7cff91b36ceeba4f3457ccef006fe75f4d42c4"

DESCRIPTION="Tailscale vpn client"
HOMEPAGE="https://tailscale.com"

EGO_SUM=(
	"bazil.org/fuse v0.0.0-20160811212531-371fbbdaa898/go.mod"
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.44.1/go.mod"
	"cloud.google.com/go v0.44.2/go.mod"
	"cloud.google.com/go v0.45.1/go.mod"
	"cloud.google.com/go v0.46.3/go.mod"
	"cloud.google.com/go v0.52.1-0.20200122224058-0482b626c726/go.mod"
	"cloud.google.com/go/bigquery v1.0.1/go.mod"
	"cloud.google.com/go/datastore v1.0.0/go.mod"
	"cloud.google.com/go/pubsub v1.0.1/go.mod"
	"cloud.google.com/go/storage v1.0.0/go.mod"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"github.com/Azure/go-autorest/autorest v0.9.0/go.mod"
	"github.com/Azure/go-autorest/autorest/adal v0.5.0/go.mod"
	"github.com/Azure/go-autorest/autorest/date v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.1.0/go.mod"
	"github.com/Azure/go-autorest/autorest/mocks v0.2.0/go.mod"
	"github.com/Azure/go-autorest/logger v0.1.0/go.mod"
	"github.com/Azure/go-autorest/tracing v0.5.0/go.mod"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/Masterminds/semver/v3 v3.0.3"
	"github.com/Masterminds/semver/v3 v3.0.3/go.mod"
	"github.com/Microsoft/go-winio v0.4.15-0.20200908182639-5b44b70ab3ab/go.mod"
	"github.com/Microsoft/hcsshim v0.8.6/go.mod"
	"github.com/NYTimes/gziphandler v0.0.0-20170623195520-56545f4a5d46/go.mod"
	"github.com/PuerkitoBio/purell v1.0.0/go.mod"
	"github.com/PuerkitoBio/urlesc v0.0.0-20160726150825-5bd2802263f2/go.mod"
	"github.com/alecthomas/kingpin v2.2.6+incompatible/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d/go.mod"
	"github.com/alexbrainman/sspi v0.0.0-20180613141037-e580b900e9f5"
	"github.com/alexbrainman/sspi v0.0.0-20180613141037-e580b900e9f5/go.mod"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod"
	"github.com/apenwarr/fixconsole v0.0.0-20191012055117-5a9f6489cc29"
	"github.com/apenwarr/fixconsole v0.0.0-20191012055117-5a9f6489cc29/go.mod"
	"github.com/apenwarr/w32 v0.0.0-20190407065021-aa00fece76ab"
	"github.com/apenwarr/w32 v0.0.0-20190407065021-aa00fece76ab/go.mod"
	"github.com/blakesmith/ar v0.0.0-20190502131153-809d4375e1fb"
	"github.com/blakesmith/ar v0.0.0-20190502131153-809d4375e1fb/go.mod"
	"github.com/cavaliercoder/go-cpio v0.0.0-20180626203310-925f9528c45e"
	"github.com/cavaliercoder/go-cpio v0.0.0-20180626203310-925f9528c45e/go.mod"
	"github.com/cenkalti/backoff v1.1.1-0.20190506075156-2146c9339422/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/chzyer/logex v1.1.10/go.mod"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
	"github.com/cilium/ebpf v0.0.0-20200110133405-4032b1d8aae3/go.mod"
	"github.com/cilium/ebpf v0.2.0/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20191209042840-269d4d468f6f/go.mod"
	"github.com/containerd/cgroups v0.0.0-20201119153540-4cbc285b3327/go.mod"
	"github.com/containerd/console v0.0.0-20191206165004-02ecf6a7291e/go.mod"
	"github.com/containerd/containerd v1.3.9/go.mod"
	"github.com/containerd/continuity v0.0.0-20200928162600-f2cc35102c2a/go.mod"
	"github.com/containerd/fifo v0.0.0-20191213151349-ff969a566b00/go.mod"
	"github.com/containerd/go-runc v0.0.0-20200220073739-7016d3ce2328/go.mod"
	"github.com/containerd/ttrpc v0.0.0-20200121165050-0be804eadb15/go.mod"
	"github.com/containerd/typeurl v0.0.0-20200205145503-b45ef1f1f737/go.mod"
	"github.com/coreos/go-iptables v0.4.5"
	"github.com/coreos/go-iptables v0.4.5/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20191104093116-d3cd4ed1dbcf/go.mod"
	"github.com/coreos/go-systemd/v22 v22.0.0/go.mod"
	"github.com/coreos/go-systemd/v22 v22.1.0/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/davecgh/go-spew v0.0.0-20151105211317-5215b55f46b2/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible/go.mod"
	"github.com/docker/docker v1.4.2-0.20191028175130-9e7d5ac5ea55/go.mod"
	"github.com/docker/go-connections v0.3.0/go.mod"
	"github.com/docker/go-events v0.0.0-20190806004212-e31b211e4f1c/go.mod"
	"github.com/docker/go-units v0.4.0/go.mod"
	"github.com/docker/spdystream v0.0.0-20160310174837-449fdfce4d96/go.mod"
	"github.com/dpjacques/clockwork v0.1.1-0.20200827220843-c1f524b839be/go.mod"
	"github.com/dustin/go-humanize v1.0.0/go.mod"
	"github.com/dvyukov/go-fuzz v0.0.0-20201127111758-49e582c6c23d/go.mod"
	"github.com/elazarl/goproxy v0.0.0-20170405201442-c4fc26588b6e/go.mod"
	"github.com/emicklei/go-restful v0.0.0-20170410110728-ff4f55a20633/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.4/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/evanphx/json-patch v4.2.0+incompatible/go.mod"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/ghodss/yaml v0.0.0-20150909031657-73d445a93680/go.mod"
	"github.com/gliderlabs/ssh v0.2.2"
	"github.com/gliderlabs/ssh v0.2.2/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72/go.mod"
	"github.com/go-logr/logr v0.1.0/go.mod"
	"github.com/go-multierror/multierror v1.0.2"
	"github.com/go-multierror/multierror v1.0.2/go.mod"
	"github.com/go-ole/go-ole v1.2.4"
	"github.com/go-ole/go-ole v1.2.4/go.mod"
	"github.com/go-openapi/jsonpointer v0.0.0-20160704185906-46af16f9f7b1/go.mod"
	"github.com/go-openapi/jsonreference v0.0.0-20160704190145-13c6e3589ad9/go.mod"
	"github.com/go-openapi/spec v0.0.0-20160808142527-6aced65f8501/go.mod"
	"github.com/go-openapi/swag v0.0.0-20160704191624-1d0bd113de87/go.mod"
	"github.com/godbus/dbus v0.0.0-20190422162347-ade71ed3457e"
	"github.com/godbus/dbus v0.0.0-20190422162347-ade71ed3457e/go.mod"
	"github.com/godbus/dbus/v5 v5.0.3"
	"github.com/godbus/dbus/v5 v5.0.3/go.mod"
	"github.com/gofrs/flock v0.6.1-0.20180915234121-886344bea079/go.mod"
	"github.com/gogo/googleapis v1.4.0/go.mod"
	"github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d/go.mod"
	"github.com/gogo/protobuf v1.3.1/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20160516000752-02826c3e7903/go.mod"
	"github.com/golang/groupcache v0.0.0-20190702054246-869f871628b6/go.mod"
	"github.com/golang/groupcache v0.0.0-20191227052852-215e87163ea7/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/protobuf v0.0.0-20161109072736-4bd1920723d7/go.mod"
	"github.com/golang/protobuf v1.2.0"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.3.3/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/golang/protobuf v1.4.1/go.mod"
	"github.com/golang/protobuf v1.4.2"
	"github.com/golang/protobuf v1.4.2/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-cmp v0.5.0"
	"github.com/google/go-cmp v0.5.0/go.mod"
	"github.com/google/go-cmp v0.5.2/go.mod"
	"github.com/google/go-cmp v0.5.3-0.20201020212313-ab46b8bd0abd/go.mod"
	"github.com/google/go-cmp v0.5.4"
	"github.com/google/go-cmp v0.5.4/go.mod"
	"github.com/google/go-github/v28 v28.1.2-0.20191108005307-e555eab49ce8/go.mod"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/gofuzz v0.0.0-20161122191042-44d81051d367/go.mod"
	"github.com/google/gofuzz v1.0.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/pprof v0.0.0-20191218002539-d4f498aebedc/go.mod"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/google/rpmpack v0.0.0-20191226140753-aa36bfddb3a0"
	"github.com/google/rpmpack v0.0.0-20191226140753-aa36bfddb3a0/go.mod"
	"github.com/google/subcommands v1.0.2-0.20190508160503-636abe8753b8/go.mod"
	"github.com/google/uuid v1.0.0/go.mod"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/googleapis/gnostic v0.0.0-20170729233727-0c5108395e2d/go.mod"
	"github.com/gophercloud/gophercloud v0.1.0/go.mod"
	"github.com/goreleaser/nfpm v1.1.10"
	"github.com/goreleaser/nfpm v1.1.10/go.mod"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/ianlancetaylor/demangle v0.0.0-20181102032728-5e5cf60278f6/go.mod"
	"github.com/imdario/mergo v0.3.5/go.mod"
	"github.com/imdario/mergo v0.3.8"
	"github.com/imdario/mergo v0.3.8/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/jsimonetti/rtnetlink v0.0.0-20190606172950-9527aa82566a/go.mod"
	"github.com/jsimonetti/rtnetlink v0.0.0-20200117123717-f846d4f6c1f4"
	"github.com/jsimonetti/rtnetlink v0.0.0-20200117123717-f846d4f6c1f4/go.mod"
	"github.com/jsimonetti/rtnetlink v0.0.0-20201009170750-9c6f07d100c1/go.mod"
	"github.com/jsimonetti/rtnetlink v0.0.0-20201216134343-bde56ed16391"
	"github.com/jsimonetti/rtnetlink v0.0.0-20201216134343-bde56ed16391/go.mod"
	"github.com/json-iterator/go v0.0.0-20180612202835-f2b4162afba3/go.mod"
	"github.com/json-iterator/go v1.1.7/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/jstemmer/go-junit-report v0.9.1/go.mod"
	"github.com/kisielk/errcheck v1.2.0/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/klauspost/compress v1.10.10"
	"github.com/klauspost/compress v1.10.10/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.2/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.3/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/pty v1.1.4-0.20190131011033-7dc38fb350b1"
	"github.com/kr/pty v1.1.4-0.20190131011033-7dc38fb350b1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lxn/walk v0.0.0-20201110160827-18ea5e372cdb/go.mod"
	"github.com/lxn/win v0.0.0-20201111105847-2a20daff6a55/go.mod"
	"github.com/mailru/easyjson v0.0.0-20160728113105-d5b7844b561a/go.mod"
	"github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a/go.mod"
	"github.com/mattn/go-zglob v0.0.1"
	"github.com/mattn/go-zglob v0.0.1/go.mod"
	"github.com/mdlayher/netlink v0.0.0-20190409211403-11939a169225/go.mod"
	"github.com/mdlayher/netlink v1.0.0/go.mod"
	"github.com/mdlayher/netlink v1.1.0"
	"github.com/mdlayher/netlink v1.1.0/go.mod"
	"github.com/mdlayher/netlink v1.1.1/go.mod"
	"github.com/mdlayher/netlink v1.2.0"
	"github.com/mdlayher/netlink v1.2.0/go.mod"
	"github.com/mdlayher/sdnotify v0.0.0-20200625151349-e4a4f32afc4a"
	"github.com/mdlayher/sdnotify v0.0.0-20200625151349-e4a4f32afc4a/go.mod"
	"github.com/miekg/dns v1.1.30"
	"github.com/miekg/dns v1.1.30/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180320133207-05fbef0ca5da/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742/go.mod"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mohae/deepcopy v0.0.0-20170308212314-bb9b5e7adda9/go.mod"
	"github.com/munnerz/goautoneg v0.0.0-20120707110453-a547fc61f48d/go.mod"
	"github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f/go.mod"
	"github.com/onsi/ginkgo v0.0.0-20170829012221-11459a886d9c/go.mod"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/ginkgo v1.8.0/go.mod"
	"github.com/onsi/gomega v0.0.0-20170829124025-dcabb60a477c/go.mod"
	"github.com/onsi/gomega v1.5.0/go.mod"
	"github.com/op/go-logging v0.0.0-20160315200505-970db520ece7"
	"github.com/op/go-logging v0.0.0-20160315200505-970db520ece7/go.mod"
	"github.com/opencontainers/go-digest v1.0.0/go.mod"
	"github.com/opencontainers/image-spec v1.0.1/go.mod"
	"github.com/opencontainers/runc v0.1.1/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.1/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.2-0.20181111125026-1722abf79c2f/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.2/go.mod"
	"github.com/pborman/getopt v0.0.0-20190409184431-ee0cd42419d3"
	"github.com/pborman/getopt v0.0.0-20190409184431-ee0cd42419d3/go.mod"
	"github.com/pborman/uuid v1.2.0/go.mod"
	"github.com/pelletier/go-toml v1.6.0/go.mod"
	"github.com/peterbourgon/diskv v2.0.1+incompatible/go.mod"
	"github.com/peterbourgon/ff/v2 v2.0.0"
	"github.com/peterbourgon/ff/v2 v2.0.0/go.mod"
	"github.com/pkg/diff v0.0.0-20200914180035-5b29258ca4f7"
	"github.com/pkg/diff v0.0.0-20200914180035-5b29258ca4f7/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v0.0.0-20151028094244-d8ed2627bdf0/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/prometheus/procfs v0.0.0-20190522114515-bc1a522cf7b1/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/sassoftware/go-rpmutils v0.0.0-20190420191620-a8f1baeba37b"
	"github.com/sassoftware/go-rpmutils v0.0.0-20190420191620-a8f1baeba37b/go.mod"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.4.1/go.mod"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/sirupsen/logrus v1.6.0/go.mod"
	"github.com/sirupsen/logrus v1.7.0/go.mod"
	"github.com/spf13/afero v1.2.2/go.mod"
	"github.com/spf13/cobra v0.0.2-0.20171109065643-2da4a54c5cee/go.mod"
	"github.com/spf13/pflag v0.0.0-20170130214245-9ff6c6923cff/go.mod"
	"github.com/spf13/pflag v1.0.1-0.20171106142849-4c012f6dcd95/go.mod"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v0.0.0-20151208002404-e3a8ff8ce365/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/syndtr/gocapability v0.0.0-20180916011248-d98352740cb2/go.mod"
	"github.com/tailscale/depaware v0.0.0-20201214215404-77d1e9757027"
	"github.com/tailscale/depaware v0.0.0-20201214215404-77d1e9757027/go.mod"
	"github.com/tailscale/wireguard-go v0.0.0-20210109012254-dc30a1b9415e"
	"github.com/tailscale/wireguard-go v0.0.0-20210109012254-dc30a1b9415e/go.mod"
	"github.com/tailscale/wireguard-go v0.0.0-20210113223737-a6213b5eaf98"
	"github.com/tailscale/wireguard-go v0.0.0-20210113223737-a6213b5eaf98/go.mod"
	"github.com/tailscale/wireguard-go v0.0.0-20210114205708-a1377e83f551"
	"github.com/tailscale/wireguard-go v0.0.0-20210114205708-a1377e83f551/go.mod"
	"github.com/tailscale/wireguard-go v0.0.0-20210116013233-4cd297ed5a7d"
	"github.com/tailscale/wireguard-go v0.0.0-20210116013233-4cd297ed5a7d/go.mod"
	"github.com/tailscale/wireguard-go v0.0.0-20210120212909-7ad8a0443bd3"
	"github.com/tailscale/wireguard-go v0.0.0-20210120212909-7ad8a0443bd3/go.mod"
	"github.com/tcnksm/go-httpstat v0.2.0"
	"github.com/tcnksm/go-httpstat v0.2.0/go.mod"
	"github.com/toqueteos/webbrowser v1.2.0"
	"github.com/toqueteos/webbrowser v1.2.0/go.mod"
	"github.com/ulikunitz/xz v0.5.6"
	"github.com/ulikunitz/xz v0.5.6/go.mod"
	"github.com/urfave/cli v1.22.2/go.mod"
	"github.com/vishvananda/netlink v1.0.1-0.20190930145447-2ec5bdc52b86/go.mod"
	"github.com/vishvananda/netns v0.0.0-20200728191858-db3c7e526aae/go.mod"
	"github.com/xi2/xz v0.0.0-20171230120015-48954b6210f8"
	"github.com/xi2/xz v0.0.0-20171230120015-48954b6210f8/go.mod"
	"github.com/yuin/goldmark v1.1.27/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0/go.mod"
	"go.opencensus.io v0.22.2/go.mod"
	"go.uber.org/atomic v1.7.0/go.mod"
	"go.uber.org/multierr v1.6.0/go.mod"
	"go4.org/intern v0.0.0-20201223054237-ef8cbcb8edd7"
	"go4.org/intern v0.0.0-20201223054237-ef8cbcb8edd7/go.mod"
	"go4.org/intern v0.0.0-20201223061701-969c7e87e7cb"
	"go4.org/intern v0.0.0-20201223061701-969c7e87e7cb/go.mod"
	"go4.org/intern v0.0.0-20210101010959-7cab76ca296a"
	"go4.org/intern v0.0.0-20210101010959-7cab76ca296a/go.mod"
	"go4.org/mem v0.0.0-20201119185036-c04c5a6ff174"
	"go4.org/mem v0.0.0-20201119185036-c04c5a6ff174/go.mod"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222175341-b30ae309168e"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222175341-b30ae309168e/go.mod"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222180813-1025295fd063"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20201222180813-1025295fd063/go.mod"
	"golang.org/x/crypto v0.0.0-20190211182817-74369b46fc67/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/crypto v0.0.0-20191002192127-34f69633bfdc/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20201016220609-9e8e0b390897/go.mod"
	"golang.org/x/crypto v0.0.0-20201112155050-0c6587e931a9/go.mod"
	"golang.org/x/crypto v0.0.0-20201124201722-c8d3bf9c5392"
	"golang.org/x/crypto v0.0.0-20201124201722-c8d3bf9c5392/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979/go.mod"
	"golang.org/x/exp v0.0.0-20191227195350-da58074b4299/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac/go.mod"
	"golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/mod v0.2.0/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.4.0"
	"golang.org/x/mod v0.4.0/go.mod"
	"golang.org/x/net v0.0.0-20170114055629-f2499483f923/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190827160401-ba9fcec4b297/go.mod"
	"golang.org/x/net v0.0.0-20190923162816-aa69164e4478/go.mod"
	"golang.org/x/net v0.0.0-20191004110552-13f9640d40b9/go.mod"
	"golang.org/x/net v0.0.0-20191007182048-72f939374954/go.mod"
	"golang.org/x/net v0.0.0-20200114155413-6afb5195e5aa/go.mod"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2/go.mod"
	"golang.org/x/net v0.0.0-20200226121028-0de0cce0169b/go.mod"
	"golang.org/x/net v0.0.0-20200822124328-c89045814202/go.mod"
	"golang.org/x/net v0.0.0-20201010224723-4f7140c49acb/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20201031054903-ff519b6c9102/go.mod"
	"golang.org/x/net v0.0.0-20201110031124-69a78807bb2b"
	"golang.org/x/net v0.0.0-20201110031124-69a78807bb2b/go.mod"
	"golang.org/x/net v0.0.0-20201216054612-986b41b23924"
	"golang.org/x/net v0.0.0-20201216054612-986b41b23924/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d"
	"golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sync v0.0.0-20200625203802-6e8e738ad208/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sys v0.0.0-20170830134202-bb24a47a89ea/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20190209173611-3b5209105503/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190405154228-4b34438f7a67/go.mod"
	"golang.org/x/sys v0.0.0-20190411185658-b44545bcd369/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
	"golang.org/x/sys v0.0.0-20190826190057-c7b8b68b1456/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe/go.mod"
	"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
	"golang.org/x/sys v0.0.0-20191022100944-742c48ecaeb7/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191120155948-bd437916bb0e/go.mod"
	"golang.org/x/sys v0.0.0-20191204072324-ce4227a45e2e/go.mod"
	"golang.org/x/sys v0.0.0-20191210023423-ac6580df4449/go.mod"
	"golang.org/x/sys v0.0.0-20200113162924-86b910548bc1/go.mod"
	"golang.org/x/sys v0.0.0-20200120151820-655fe14d7479/go.mod"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9/go.mod"
	"golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5/go.mod"
	"golang.org/x/sys v0.0.0-20200217220822-9197077df867/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201009025420-dfb3f7c4e634/go.mod"
	"golang.org/x/sys v0.0.0-20201018230417-eeed37f84f13/go.mod"
	"golang.org/x/sys v0.0.0-20201107080550-4d91cf3a1aaf/go.mod"
	"golang.org/x/sys v0.0.0-20201112073958-5cba982894dd/go.mod"
	"golang.org/x/sys v0.0.0-20201118182958-a01c418693c7/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20201202213521-69691e467435/go.mod"
	"golang.org/x/sys v0.0.0-20201218084310-7d0127a74742"
	"golang.org/x/sys v0.0.0-20201218084310-7d0127a74742/go.mod"
	"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20201207232118-ee85cb95a76b"
	"golang.org/x/term v0.0.0-20201207232118-ee85cb95a76b/go.mod"
	"golang.org/x/text v0.0.0-20160726164857-2910a502d2bf/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.4"
	"golang.org/x/text v0.3.4/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/time v0.0.0-20191024005414-555d28b269f0"
	"golang.org/x/time v0.0.0-20191024005414-555d28b269f0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20181011042414-1f849cf54d09/go.mod"
	"golang.org/x/tools v0.0.0-20181030221726-6c7e314b6563/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479/go.mod"
	"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20191125144606-a911d9008d1f/go.mod"
	"golang.org/x/tools v0.0.0-20191216052735-49a3e744a425/go.mod"
	"golang.org/x/tools v0.0.0-20200117161641-43d50277825c/go.mod"
	"golang.org/x/tools v0.0.0-20200609164405-eb789aa7ce50/go.mod"
	"golang.org/x/tools v0.0.0-20201021000207-d49c4edd7d96/go.mod"
	"golang.org/x/tools v0.0.0-20201211185031-d93e913c1a58"
	"golang.org/x/tools v0.0.0-20201211185031-d93e913c1a58/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"golang.zx2c4.com/wireguard v0.0.20200321-0.20201111175144-60b3766b89b9"
	"golang.zx2c4.com/wireguard v0.0.20200321-0.20201111175144-60b3766b89b9/go.mod"
	"golang.zx2c4.com/wireguard/windows v0.1.2-0.20201113162609-9b85be97fdf8"
	"golang.zx2c4.com/wireguard/windows v0.1.2-0.20201113162609-9b85be97fdf8/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.8.0/go.mod"
	"google.golang.org/api v0.9.0/go.mod"
	"google.golang.org/api v0.15.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/appengine v1.6.5"
	"google.golang.org/appengine v1.6.5/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51/go.mod"
	"google.golang.org/genproto v0.0.0-20200115191322-ca5a22157cba/go.mod"
	"google.golang.org/genproto v0.0.0-20200117163144-32f20d992d24/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1/go.mod"
	"google.golang.org/grpc v1.26.0/go.mod"
	"google.golang.org/grpc v1.29.0/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"google.golang.org/protobuf v1.22.0/go.mod"
	"google.golang.org/protobuf v1.23.0/go.mod"
	"google.golang.org/protobuf v1.25.1-0.20201020201750-d3470999428b"
	"google.golang.org/protobuf v1.25.1-0.20201020201750-d3470999428b/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/inf.v0 v0.9.1/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.7"
	"gopkg.in/yaml.v2 v2.2.7/go.mod"
	"gopkg.in/yaml.v2 v2.2.8"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"gotest.tools v2.2.0+incompatible/go.mod"
	"gvisor.dev/gvisor v0.0.0-20210111185822-3ff3110fcdd6"
	"gvisor.dev/gvisor v0.0.0-20210111185822-3ff3110fcdd6/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
	"honnef.co/go/tools v0.1.0"
	"honnef.co/go/tools v0.1.0/go.mod"
	"inet.af/netaddr v0.0.0-20201228234250-33d0a924ebbf"
	"inet.af/netaddr v0.0.0-20201228234250-33d0a924ebbf/go.mod"
	"inet.af/netaddr v0.0.0-20210105212526-648fbc18a69d"
	"inet.af/netaddr v0.0.0-20210105212526-648fbc18a69d/go.mod"
	"k8s.io/api v0.16.13/go.mod"
	"k8s.io/apimachinery v0.16.13/go.mod"
	"k8s.io/apimachinery v0.16.14-rc.0/go.mod"
	"k8s.io/client-go v0.16.13/go.mod"
	"k8s.io/gengo v0.0.0-20190128074634-0689ccc1d7d6/go.mod"
	"k8s.io/klog v0.0.0-20181102134211-b9b56d5dfc92/go.mod"
	"k8s.io/klog v0.3.0/go.mod"
	"k8s.io/klog v1.0.0/go.mod"
	"k8s.io/kube-openapi v0.0.0-20200410163147-594e756bea31/go.mod"
	"k8s.io/utils v0.0.0-20190801114015-581e00157fb1/go.mod"
	"rsc.io/binaryregexp v0.2.0/go.mod"
	"rsc.io/goversion v1.2.0"
	"rsc.io/goversion v1.2.0/go.mod"
	"sigs.k8s.io/structured-merge-diff v0.0.0-20190525122527-15d366b2352e/go.mod"
	"sigs.k8s.io/yaml v1.1.0/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/tailscale/tailscale/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="net-firewall/iptables"

# This translates the build command from upstream's build_dist.sh to an
# ebuild equivalent.
build_dist() {
	go build -tags xversion -ldflags "
		-X tailscale.com/version.Long=${VERSION_LONG}
		-X tailscale.com/version.Short=${VERSION_SHORT}
		-X tailscale.com/version.GitCommit=${VERSION_GIT_HASH}" "$@"
}

src_compile() {
	build_dist ./cmd/tailscale || die
	build_dist ./cmd/tailscaled || die
}

src_install() {
	dosbin tailscaled
	dobin tailscale

	systemd_dounit cmd/tailscaled/tailscaled.service
	insinto /etc/default
	newins cmd/tailscaled/tailscaled.defaults tailscaled
	keepdir /var/lib/${PN}
	fperms 0750 /var/lib/${PN}

	newtmpfiles "${FILESDIR}/${PN}.tmpfiles" ${PN}.conf

	newinitd "${FILESDIR}/${PN}d.initd" ${PN}
	newconfd "${FILESDIR}/${PN}d.confd" ${PN}
}

pkg_postinst() {
	tmpfiles_process ${PN}.conf
}
