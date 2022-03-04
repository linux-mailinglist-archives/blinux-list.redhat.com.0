Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DCC4CDFF2
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 22:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646430807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2/wGPC39EDZMsCMBNDzDX9G9l8p20X5C+bTXlkuGdiY=;
	b=FC/7hkd1oDDRZJl0/O3gzZSM3UJKMbSUZOaJtUJ1VKyXvRC3tOE45LzVWQjMevumDzz0Yc
	XcH2NTy/li9H6LwIRoDV5q1x1Q1tJsJA4Oo8bjh+NAIshnCabUGNeX8X29/7Y59/LlvsjN
	0blwRtRWjKvM9pxxg7aggvrJsIVE100=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-193-gEVAuDTTPBulqBby9ZpQfw-1; Fri, 04 Mar 2022 16:53:24 -0500
X-MC-Unique: gEVAuDTTPBulqBby9ZpQfw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F1461091DA0;
	Fri,  4 Mar 2022 21:53:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A8616E73B;
	Fri,  4 Mar 2022 21:53:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2F29A18095C9;
	Fri,  4 Mar 2022 21:53:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224LqxD5012501 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 16:52:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1058E401E4D; Fri,  4 Mar 2022 21:52:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C370401E2D
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 21:52:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E572B3811A22
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 21:52:58 +0000 (UTC)
Received: from sonic311-24.consmr.mail.gq1.yahoo.com
	(sonic311-24.consmr.mail.gq1.yahoo.com [98.137.65.205]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-324-RBD4xu18OXCvADo1FS4HRQ-1; Fri, 04 Mar 2022 16:52:56 -0500
X-MC-Unique: RBD4xu18OXCvADo1FS4HRQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1646430775; bh=cHRpWCdM8zwzjQCaqQKZrm9xt8oyTPt77FmAiVSCxQC=;
	h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
	b=WfayftmZXryuXZ3vXeMeRjJBok+DBpMLzhRrDTDhMe1ekUwcLQqJJGIlf7ZWEFqA6sXcY5eIoDvbXYM/Zk/t3HGRz3stHMlDxEcNZB9yZr4Pr6NsrSaPWXv/xiFgWgInpdMacfIYVo7sZhLPy6uu+qdU6hQRJ7GgPKx3lQVXPjhr2Smq35EEnvyzk+Q2+LFGjdppr9J4IRd7mqgf0qeNG147JXnhpyyp2h3t+d0l/5lo1HycN9kqIlMquoG0dccAxHSgpGpWqRulVYa04AsL/LWHHcTa1DFcd7IvyeZ9TdWtYMlrEaZqtsffdZPENKXPNfWuiiAAo2PRYh95U1LFjA==
X-YMail-OSG: dtLWDM0VM1lPTzs35vOZsMiaDVq19WOxzHTp1bo0cYVNsDRIvsWnoYFAVomc9NG
	GZVZ4BziL02dWkAmzzrRodTt6rjrJx3wQXN5klx14YBu.UlkDthkMzXQdhvgkF90Bm1dvOOxM791
	qxh05.cq7bv_7clPYjCVcGGxUuAio_nrjNauKxaXI.kWZKX7RfjnBISCWTno25ll9PPsZs584f.3
	QG_HD76VR6IcnpiPjsQPEmnsPOxksGK.3PGXlLe1aiX5C.aHaXIS4XAgGnXsp8UVN8UJnBja5UOs
	HyBMl1Zaxkl6873Ovmeh6CAKfaGCj35mfyDkJh0fHmKVd9QMboc3Po.NTlgGljD6EkKxDU1_CEnf
	TuzyVu1stI1zXMlWwFhtKVCSy0tuEDhWa.WVy4iff0w2fl_YvpkSrnolLdTu9riGRCDvbsviRsHd
	GGMOOlcJIJbWa4CcCF324XSkWlYSWIyq2jjwkyd2ruV52GzHA.0y558d6oNU1S3SSvXmB6HBBUJx
	B0cbm07Fq5xcc9E9AhDFV58moXx5dYNLp.EV6kjkALEIQwkRY_56spwzGkRxcszT48GT.hRXwLX1
	.zAPZuaEOV4PUM4rh2FmV9pB2nFsjqFtPX30jZPLZYA1Mw7S7mKIasf327OnxpahrWn1ZjIZH6dK
	dUguvaVbECrIZ.W5NBHamnpMie_PMZWky7TVE6V.8PSaW5B3x3sDvakLzC6Pe8CykcihzuXZGJAI
	81CJkDkXcuprg3rzcenXaMW8qRQhdO3LTBcPes6Ht5GjNGYlC9g08tK_vz849Yggf_yAQozRWd0I
	2OgDynb4Hgab0byvtAKm5qeOLeTwR1gOGvNzjNCmE6ls8YHvdYV8RZ50cUBt6vG30XMhY3TmZfjm
	zqipn1S3gjJXw7iALN97tmWxaJVyfCAVx.gNrFNNa1K8wZ5m06FamQlgXNghQSRNvMcgxiBgvp5X
	ocWlczlQoLbLhI.J5M5qc9pAa9ysREpTMsSpPuY10T5ha9RfMScIgXlhqHAIfXnPGBCbCW99z7Xy
	TT4ZJe7xEYeC.ot9tf4QnkjS2VlkM740yhW5wqyn05bABEFw2DGJruRl4ueHc9K7mNlSXWnPy71T
	m7VWJWRoPHOrTLIwR7mh9dgCK8gHpmIeXwrDECOdX4i7DGT8q7ft4ukNveWwo_PHzaW2CJiuBR.r
	XBQRC8DKN6zS3FsPmqn9qH3n4hIbt.B0e6Zmobuw8sG6kS7RirPeMo8PaJpmA0czBZtcu.7gZYnU
	MuJMhMPSmcMPTfnRM9bZrlulDWPbUZ7NT.QgXsuLhoUoj.f_cqbgXwLbeAA8WHSvdlqYlRPYdrUU
	YsNqFzb5BDeSnUmLbn_adp3QyBxxvMSaWoFKz9_550HTjmOkGo0nixl2oWdFEgeWUpaBnb35OsNS
	oaGG_mVQtCuKodbjT2qDTAPdGn2fbDKjqn0HtBIIf352Je2fJ1VFnhoTTvnPN4uoRy6YBi3Lfh2M
	qUm9Nx_H_56G30eKl5pBla4DbRpg0DTLicOSPfXgjme.dSZihb_QRifaVYCp.9rssWxAnKmZroHX
	wM60gMiPrtqg2sgY.ujxyg66uLF8H0Tb_xo9wHh9mRfps88jjzHF.paci_xazTyKjkdWh..c_20J
	VqQMtaiHgRTGZr8xF9nKKZg.0dxahk35.WxsVlkg0p6_iJv75QrwHyfnaxFwQjtyuYb6XJASFXex
	P4XITKWEFmali_ftPXPRpgDQZYj2iodWp0B2o84kTaL8nHckoWZIoOPMApRhPErj_DjRJ4TvVNsQ
	GuGC9BEK0ixTlGzsaPHjhQmTMXhD3rcFWnNDo_CDjh_YHbOArtl8fkVpYLKZNOs9GIsdW6Qti40h
	CL6qjoMnxDbJljiGR0DnK4L_qgo_SUpLW1_caWxYocLVD9ipg_.maEphyedSqG.I1PmR5j_dWGWB
	Pdaew_GEM87xjNxcEbJzIcmZQGAcgKDN91LkGsr_RIj.HZrhrDKkPk1O0jvNT8V3xm17PPwyoqV9
	An3mDGM_3Ee4oYLf.o_EvT6qXGyz4jTL1K4B9PSB1qg3hWTmjVnc0bJzB6HPImMDpn2gx20XSJSC
	7DKmDuG2VYSzJdhz7liMHGkJwR.lQmqz84W54xUO.I9MB3.98.mJLACUTZxG0MSXtA35iYQq38.5
	JxUn5Sl_pTZXc0hU.i7yS9yIqopHLWzZYzP5Mc3IMoyJB.F20mDEM.5IDp0WB8g0jhENBkuYpged
	QAF0jffV8CTHEw8MKPzYP8QoRjBLBlTMf.f7u4HMQ
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic311.consmr.mail.gq1.yahoo.com with HTTP;
	Fri, 4 Mar 2022 21:52:55 +0000
Received: by kubenode520.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID ba9b0ed5cc61590c9d8d988865a8111a; 
	Fri, 04 Mar 2022 21:41:53 +0000 (UTC)
Message-ID: <e0490d01-70fe-8c07-5121-3d8eb11e16d2@verizon.net>
Date: Fri, 4 Mar 2022 16:41:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
	<dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
	<7ac5cb2e-7110-4b77-a396-1e53393934a0@verizon.net>
	<69aeb26c-58e1-734c-5109-607e23808a95@free2.ml>
In-Reply-To: <69aeb26c-58e1-734c-5109-607e23808a95@free2.ml>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

S3lsZSwgdGhhbmtzIGZvciBhbGwgdGhhdC7CoCBJJ2xsIGNoZWNrIG91dCB0aGUgbGlua3MgeW91
IHByb3ZpZGUgYW5kIGdvIAp0aHJvdWdoIHlvdXIgcmVwbHkgY2FyZWZ1bGx5IHNvb24uCgoKQmVz
dCEKCkFsCgoKT24gMy80LzIyIDEzOjMxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IERvIHlvdSBoYXZlIHBvaW50ZXJzIHRvIGluZm9ybWF0aW9uIGhvdyB0byBk
byB0aGF0P8KgIEknbSBub25lIHRvbyBzdXJlIAo+IEkga25vdyBlbm91Z2gsIGJ1dCBJJ2QgbGlr
ZSB0byBjaGVjayBpdCBvdXQuCj4KPgo+IFN1cmUuIEFzaWRlIGZyb20gbXkgZXhwZXJpZW5jZXMg
d2l0aCBMaW5lYWdlT1MgZm9yIE1pY3JvRwo+Cj4gaHR0cHM6Ly9saW5lYWdlLm1pY3JvZy5vcmcv
Cj4KPiB0aGF0IEkganVzdCBwb3N0ZWQsIEkgaGF2ZSBhIHZwcyB0aGF0IHJ1bnMgZW1haWwsIGFu
ZCBpdCBhbHNvIGhhcyAKPiBOZXh0Q2xvdWQgcnVubmluZyBvbiBpdC4gSW4gb3JkZXIgdG8gc2Vs
Zi1ob3N0IHdlYnNpdGVzIGFuZCBldmVuIHlvdXIgCj4gTmV4dENsb3VkLCB5b3UgY2FuIHByb2Jh
Ymx5IHVzZSBhIGhvbWUtYmFzZWQgc2VydmVyIGlmIHlvdXIgY29ubmVjdGlvbiAKPiBpcyBnb29k
IGVub3VnaCwgYnV0IGJlY2F1c2UgZW1haWwgcHJvdmlkZXJzIGhhdmUgZG9uZSBhbGwgdGhleSBj
YW4gdG8gCj4ga2VlcCByZWd1bGFyIHVzZXJzIGZyb20gYmVpbmcgYWJsZSB0byBob3N0IHRoZWly
IG93biBlbWFpbCBzbyB0aGF0IAo+IHRoZXkgY2FuIGdldCBhbGwgdGhlIHRyYWZmaWMsIGJhY2sg
aW4gdGhlIGRheSB0aGV5IHVzZWQgdG8gY2FsbCB0aGF0IAo+IHRyYWZmaWMgcHVtcGluZywgYW5k
IGl0IHdhcyBmcm93bmVkIHVwb24sIHdlbGwgdGhlc2UgZGF5cywgdGhleSBjYWxsIAo+IGl0IHNl
Y3VyaXR5IGFuZCB0aGF0IG1ha2VzIGV2ZXJ5dGhpbmcgT0suIEluIGFueSBjYXNlLCBub3cgeW91
IG5lZWQgYSAKPiBWUFMgKHZpcnR1YWwgcHJpdmF0ZSBzZXJ2ZXIpIGluIG9yZGVyIHRvIHNlbmQg
ZW1haWwgdGhhdCB3b24ndCBnZXQgCj4gbWFya2VkIGFzIHNwYW0gb3Igb3V0cmlnaHQgcmVqZWN0
ZWQgYnkgbW9zdCBvZiB0aGUgYmlnIG5hbWVzIHRoYXQgd2lsbCAKPiBsaWtlbHkgaG9sZCB0aGUg
ZW1haWwgYWRkcmVzc2VzIGZvciB0aGUgcmVjaXBpZW50cyBvZiBtb3N0IG9mIHlvdXIgCj4gZW1h
aWxzLiBUaGUgZWFzaWVzdCBhbmQgbGVhc3QgZXhwZW5zaXZlIHdheSB0byBnZXQgc3RhcnRlZCB3
aXRoIHRoYXQgCj4gaXMgYnkgdXNpbmcKPgo+IGNsb3VkLm9yYWNsZS5jb20vCj4KPiB3aGljaCBo
YXMgYSBjb21wbGV0ZWx5IGZyZWUgZm9yZXZlciBwcmljaW5nIHRpZXIuIFlvdSBjYW4gZ2V0IDIw
MEdCIG9mIAo+IGRpc2sgc3BhY2UsIDEgNjQtYml0IHNpbmdsZS1jb3JlIEFNRCB2aXJ0dWFsIG1h
Y2hpbmUgd2l0aCAxR0Igb2YgUkFNIAo+IGFuZCBhcyBtYW55IGFzIDQgQW1wZXJlIEFSTSBwcm9j
ZXNzb3IgY29yZXMgd2l0aCAyNEdCIG9mIFJBTSwgYWxsIAo+IGNvbXBsZXRlbHkgZnJlZS4gVGhl
eSBhbHNvIGhhdmUgc29tZSBkYXRhYmFzZSBzdHVmZiBhbW9uZyBvdGhlciB0aGluZ3MgCj4gdGhh
dCB5b3UgY2FuIGdldCB0byBnbyBhbG9uZyB3aXRoIHRoYXQswqAgYnV0IEkgZmluZCB0aGUgY29t
cGxldGUgCj4gdmlydHVhbCBzZXJ2ZXIgY29uZmlndXJhdGlvbnMgdG8gYmUgdGhlIG1vc3QgZWZm
ZWN0aXZlIGZvciBteSBob3N0aW5nIAo+IG5lZWRzLiBUaGVpciBPUyBpbWFnZXMgYXJlIGxpbWl0
ZWQgdG8gcHJpbWFyaWx5IFVidW50dSBMVFMgYW5kIE9yYWNsZSAKPiBMaW51eCwgd2hpY2ggaXMg
ZXNzZW50aWFsbHkgQ2VudE9TIChiZWZvcmUgaXQgd2FzIENlbnRPUyBTdHJlYW0pLCBzbyBJIAo+
IHdvdWxkIHdhaXQgdW50aWwgVWJ1bnR1IDIyLjA0IGlzIHJlbGVhc2VkIGFuZCBiZWNvbWVzIGF2
YWlsYWJsZSwgYXMgCj4geW91IHByb2JhYmx5IGRvbid0IHdhbnQgMjAuMDQgbm93LiBUaGlzIGZy
ZWUgcHJpY2luZyB0aWVyIHdpbGwgaGVscCAKPiBtb3N0IHBlb3BsZSB3aG8ganVzdCB3YW50IHRv
IGhvc3QgdGhlaXIgb3duIHN0dWZmLCBhbGwgZXhjZXB0IG1haWwsIAo+IHdoaWNoIG1heSByZXF1
aXJlIHBheWluZyBhIHNtYWxsIGZlZSB0byBnZXQgc3VwcG9ydCB0byBzZXQgdXAgdGhlIAo+IHJl
dmVyc2UgRE5TIGZvciBlbWFpbCBob3N0aW5nLiBUaGVyZSBpcyBub3RoaW5nIGVsc2UgZnJlZSBv
ciBldmVuIAo+IGNsb3NlIHRoYXQgd2lsbCBkbyBhbGwgb2Ygd2hhdCB5b3UgY2FuIGhvc3Qgd2l0
aCBPcmFjbGUsIGJ1dCBtYW55IAo+IHBlb3BsZSB3aWxsIHdhbnQgdG8gYXZvaWQgdGhlbSBhcyB3
ZWxsLCBhbmQgSSBvbmx5IG1lbnRpb24gdGhlbSAKPiBiZWNhdXNlIG9mIHRoZSBwcmljZSwgd2hp
Y2ggdHJ1bHkgaXMgdW5iZWF0YWJsZSBmb3IgYWxsIHlvdSBjYW4gZ2V0LiAKPiBUaGF0IHNhaWQs
IEkgY3VycmVudGx5IGhhdmUgbXkgc2VsZi1ob3N0ZWQgZW1haWwsIE5leHRDbG91ZCBhbmQgb3Ro
ZXIgCj4gd2Vic2l0ZXMgb24gYSBzZXJ2ZXIgYXQgU0tCIEVudGVycHJpc2UsIGhvc3RlZCBpbiBB
bXN0ZXJkYW0sICJvbmUgb2YgCj4gdGhlIGJpZ2dlc3QgaW50ZXJuZXQgaHVicyBvZiB0aGUgd29y
bGQsIiBiZWNhdXNlIE9yYWNsZSBoYXMgbm90IAo+IGV4YWN0bHkgYmVlbiB0cnVzdHdvcnRoeSBv
dmVyIHRoZSB5ZWFycywgYW5kIGFsc28gYmVjYXVzZSBJIGp1c3QgZm91bmQgCj4gb3V0IGFib3V0
IDMgbW9udGhzIGFnbyBhYm91dCBPcmFjbGUgQ2xvdWQsIGFuZCBhY3R1YWxseSwgdGhleSBoYXZl
bid0IAo+IGRpc2FwcG9pbnRlZCBtZSB5ZXQsIHdpdGggdGhlIGV4Y2VwdGlvbiBvZiB0aGUgcmV2
ZXJzZSBETlMgKFBUUiAKPiByZWNvcmQpIHRoYXQgdGhleSBkb24ndCBoYXZlIGluIHRoZSBjb25z
b2xlIHdoZXJlIEkgY2FuIHNldCBpdCB1cCAKPiBteXNlbGYsIHNvIGVtYWlsIHdvdWxkIGJlIGEg
cGFpbiB0byBnZXQgZ29pbmcgd2l0aG91dCBnZXR0aW5nIGNhdWdodCAKPiBieSBtb3N0IHNwYW0g
ZGV0ZWN0aW9uIHN5c3RlbXMuIEkgaGF2ZSBhIHJlZmVycmFsIGxpbmsgZm9yIFNLQiAKPiBFbnRl
cnByaXNlIHRoYXQgeW91IGNhbiBjaGVjayBvdXQgYnkgZ29pbmcgdG8KPgo+IGh0dHBzOi8vY2xp
ZW50cy5za2ItZW50ZXJwcmlzZS5jb20vYWZmLnBocD9hZmY9OTQKPgo+IFRoZSBwcmljZSBmb3Ig
YSAxMDBHQiBkaXNrLCAyIEFNRCBDUFUgY29yZXMgYW5kIDRHQiBvZiBSQU0gaXMgNi41MCAKPiBl
dXJvcyxvciB0aGV5IGhhdmUgYSA1MEdCIGRpc2ssIGEgc2luZ2xlIEFNRCBjb3JlIGFuZCAyR0Ig
b2YgUkFNLCAKPiBzdWl0YWJsZSBmb3IgbW9zdCBiYXNpYyBzZXJ2aWNlcyB5b3UgbWF5IHdhbnQg
dG8gc2VsZi1ob3N0LCBmb3IgMy41MCAKPiBldXJvcy4KPgo+Cj4gLiBJIGhhdmUgYWxzbyB1c2Vk
IENodW5rSG9zdAo+Cj4gaHR0cHM6Ly9jaHVua2hvc3QuY29tL3IvS3lsZQo+Cj4gd2hpY2ggb2Zm
ZXJzIDUwR0Igb2YgZGlzayBzcGFjZSwgYSBzaW5nbGUgQU1EIENQVSBjb3JlIGFuZCAyR0Igb2Yg
UkFNLCAKPiBkb3VibGVkIHRvIDRHQiBpZiB5b3UgcGF5IGZvciBhIGZ1bGwgeWVhciwgZm9yICQ1
L21vbnRoICgkNjAveWVhciksIAo+IGhvc3RlZCBpbiBMb3MgQW5nZWxlcywgQ2FsaWZvcm5pYSwg
d2hpY2ggYWxzbyBoYXMgZmFpcmx5IGdvb2QgCj4gY29ubmVjdGl2aXR5Lgo+Cj4KPiBBcyBmb3Ig
Z2V0dGluZyBlbWFpbCBhbmQgd2Vic2l0ZXMgdGhlbXNlbHZlcyB1cCBhbmQgcnVubmluZywgdGhl
IGJlc3QgCj4gYW5kIGVhc2llc3QgdGhpbmcgSSd2ZSBmb3VuZCBpcyBJU1BDb25maWcKPgo+IGh0
dHBzOi8vaXNwY29uZmlnLm9yZy8KPgo+IEl0J3MganVzdCBhIGNvbnRyb2wgcGFuZWwgdGhhdCB5
b3UgaW5zdGFsbCBvbiB5b3VyIFVidW50dSwgRGViaWFuIG9yIAo+IENlbnRPUyBzZXJ2ZXIsIGFu
ZCBpdCBtYWtlcyBzZXR0aW5nIHVwIHdlYnNpdGVzIGFuZCBlc3BlY2lhbGx5IGVtYWlsIAo+IGJv
eGVzIG5lYXJseSBhcyBlYXN5IGFzIHRoZSBwcm92ZXJiaWFsIHBpZS4gSSBwZXJzb25hbGx5IGxp
a2UgCj4gY2FkZHlzZXJ2ZXIgZm9yIHdlYnNpdGVzLCBidXQgaXQgZG9lc24ndCBkbyBmb3IgbWFp
bCB3aGF0IGl0IGRvZXMgZm9yIAo+IHdlYnNpdGVzLCBhbmQgSVNQQ29uZmlnIGRvZXNuJ3Qgc3Vw
cG9ydCBpdC4gQnV0IGl0IGRvZXMgc3VwcG9ydCAKPiBBcGFjaGUsIHdoaWNoIGlzIG9uZSBvZiB0
aGUgb25seSBzZXJ2ZXJzIGF2YWlsYWJsZSB0aGF0IHN1cHBvcnRzIAo+IC5odGFjY2VzcyBmb3Ig
ZXZlcnl0aGluZyBmcm9tIHJld3JpdGVzIHRvIGN1c3RvbSBlcnJvciBwYWdlcyB3cml0dGVuIAo+
IGluIHBocCB0byBhbGwga2luZHMgb2Ygb3RoZXIgdGhpbmdzIHRoYXQgYXJlIGRpc3RyaWJ1dGVk
IHdpdGggbW9zdCAKPiBvcGVuIHNvdXJjZSB3ZWIgYXBwbGljYXRpb25zLCBzbyBJJ20gZ29vZCB3
aXRoIHRoYXQuIElTUENvbmZpZyBkb2VzIAo+IHJlcXVpcmUgc29tZSBlbXVsYXRlZCBtb3VzZSBj
bGlja3MgdXNpbmcgT3JjYSwgYnV0IGl0IHJlYWxseSBpcyBvbmUgb2YgCj4gdGhlIGVhc2llc3Qg
d2F5cyB0byBnZXQgdGhpbmdzIGdvaW5nLCBhbmQgdGhlIFBlcmZlY3QgU2VydmVyIHR1dG9yaWFs
cyAKPiBvbiBIb3d0b0ZvcmdlIGFyZSBoaWdobHkgdmFsdWVkIGFzIHdlbGwuCj4KPgo+IFdlbGws
IHRoaXMgaXMgZ2V0dGluZyByYXRoZXIgbG9uZywgYW5kIHByb2JhYmx5IG1vcmUgaW52b2x2ZWQg
dGhhbiAKPiB3aGF0IHlvdSB3YW50ZWQsIGJ1dCB0aGF0J3MgbXkgYmFzaWMgc3RhcnRlciBraXQs
IHNvIGZlZWwgZnJlZSB0byBhc2sgCj4gbWUgYW55IHF1ZXN0aW9ucy4KPgo+IH5LeWxlCj4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

