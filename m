Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4BBEB2F5533
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 00:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610580564;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=88MDQcmWUfoRU6rD9LU5DbYz2EbmHtLxPnknclz1RYU=;
	b=b7wKkm5u6DFsD98H2Z+5YZ6/TwSCS71Jwy3yHtkgmU8KAHPptqwOu6qcy4dcl0Fj2IaYQ1
	jpZ6OOW6GOibBJAEL01ZNXFcOPVSOghImKsgZCfJoKDYAnsCm0OX1xLhKHwvLGqaD3PHeJ
	sBRJGbnRauCmcfIRjtLhGfVPDElsqYs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-H06KPregMvGfFO7kSxx72A-1; Wed, 13 Jan 2021 18:29:22 -0500
X-MC-Unique: H06KPregMvGfFO7kSxx72A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AC0F107ACFA;
	Wed, 13 Jan 2021 23:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FDF56F988;
	Wed, 13 Jan 2021 23:29:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 29589180954D;
	Wed, 13 Jan 2021 23:29:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DNT5s7005887 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 18:29:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6605D2166B2C; Wed, 13 Jan 2021 23:29:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60F6A2166B2A
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 23:29:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59415811E76
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 23:29:03 +0000 (UTC)
Received: from sonic311-25.consmr.mail.ne1.yahoo.com
	(sonic311-25.consmr.mail.ne1.yahoo.com [66.163.188.206]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-496-DpHUqy-AMYCW_5rUhmCocA-1;
	Wed, 13 Jan 2021 18:29:00 -0500
X-MC-Unique: DpHUqy-AMYCW_5rUhmCocA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1610580540; bh=rDABrBRpQSbDG0HaiYLUwydFemSZ5bO7UAopbK4AnSc=;
	h=From:To:Subject:Date:From:Subject:Reply-To;
	b=JKitOW6i3/cme+x4wHtUhYQ0tvn3r5ac+XWoQGbu1jkJQZ0K3DWy2CzuJEUSmmUDJ676QuBHJPhFP+hRW/+sFRIIhsJuXxX1QvJqM5HRJJvvmNs8kqN1NxMsYRSnFpwb+UE84pGCU9zDLJZ6oZVoSi1F5/qOogGBXNbSWiJ/NjfSHrq5Rp8i5xORoO0PvTKF4z/dSquyFlW2C4MTbsJPrkrozQKLAsSg7ZCVqRmKtWYWUrBqd51VLLx9d56xJ5afaSBTBA7dPSg0egHp7zyfBwS3uM4iYwHP4Ln6di5xSLDjNPUHEJpPDVxIzOQFOgW9Y5VgXVXxX0eNngto6bXzBA==
X-YMail-OSG: 8ZH2B7IVM1kU0Pmv3loXGHhy7M5aMdaxMycKQZ68jwxcYS7e3NuKfitjdKEoAer
	p2uyltaf7DpCSqvYCvL.3g65hH3MA0jPl_vaEr6gAxpImJ9aFiMOo3ZaKnK7.N4SCDHodbCNDaGx
	dloy2zwgu7C5T3jaAQwMUyBeQ4s.zkMWDqvG5WEgChHdwH2KyHa7E6UWupM4i0sH0qPmVbebsis8
	YlyvVmJEwHjAVJPrPX5ztGlZ00h6zjXEVp1P7Q9u8YU4N4Im.9vRkUkq65SP7QJDALVgpthZVbgY
	dqBrrzy80eWirL3TmOGJL7TWMnf2e4fzINXsU_wBRDTM08Enx9ej_6V4CXdk0dwKyZgto3euHWnJ
	JXnG1u2JAQRvKM_oC1Ekbg8llYFxzthanQ2YVnolI8o2mI88zK_VGzo315IPu074TrlU..SwZ8L8
	pNjGFk0e0SeSRNRPhjGyK_M6_IfAHaf2tWyKiC5ooTzfSKslw7DX_Lkz6IaTwil8aVv4ItQD5KnU
	ywtq6YOQ65OvPKO1xRJlFgPHcOAeVMAjeLv9FePVym3dRrbstXdJRYihpKlyfvMBCaiUFaYWGqjl
	UyhIFehcQOj_5enNzutzvLY7cT.8kom8OB3OCZ0Opb6tyaUGjAxb6g3oxi8TvFfoFIZN.fUH78Qr
	HscYp6lH5FPa1n9p3_vMBARLAIbWeVhifrib0f9EZPTKjRlQJ_cioIWd5OfsntN1deQE3R6aGYxI
	MGsgn.3vls3xMyk5zR526StYtLxYKzm78t8Go7DpQdvkyihZ6GEBw61Jbe2xUiZifHU7JSK.Cio1
	l2z7pZILM.AY81vncm3nbGfx37ySqcZKs2Fer7WKL24HsbeSb4Lgg0nxd7LQ1soueu8XTWwXZRMR
	P4wUdDx5OyF2AAY0z9nJYGdD2x28vlc9xgNYuQplCnd94Whocf.cphSQnZMyjT2IK35tiowrM2TW
	_s8veVfQb7ICObwbX75R_p1_acztr2nhzjQN15.mA9G8uVTj1gUtOO.JdoBWXq8E9LNczOekkUYp
	XVdIuDiS2TSikgVpMmawXqNO9dLwjBuGhYrXSR.sRWSYeTW6BODmS2Su_isSLgz42ZFT17cMNvd2
	LGq.i_yg8uFcJ08HJ2EqGrDI8s82ukIyZ0QC35OfQsCtnpGwcLHTSDcSVaNqoebMKnKBZXSwevwp
	59c8Wdw.ZE452TsFMwZX9CX_L9S0wENbmmwCqlx_hxEmA_9xERvt4czK5ZY_IFa6KSGi.caOa8nq
	IgtpqYBJxLXRUa9cFmz_G2vg4MqfSqHqs7TF8fHkJHGYGE.DINfrevG2GbCxh2jWfvdxXvVajMKB
	8yiBpxO2Cp0BuVSjVSn9x3I_D1jPwteczaOceP7fxsY.t4pmVO7Sl__hKLEG0nsp7Ms9Mkp4nwg6
	vAayux26cH1AIwM.pQXBtQEngeZ3jnGhSNQvWRp1nURZSLwX5rj8S0VWfJlvupZMUK6b4ybuLdvS
	3e4cHUQqwl7OsYXucjmC6PQUpMMNU5zqnCOaWEJ3OfzvyaTHUBLFJmz5erJyXfREduuBpySSy1R.
	3Ckpc5NK188ifZ1gwLirG2x3LhZI4S9xS4NBZIdSCTHbIW22vHKGLiuyq15zcKXHyD22yUlY.v1J
	5KfgM.LP3ZwvgHKPp5voY5QEUpccTnMHVKikJ1t1SsritrXRdFVix8LQvSb7Uwv.iqo14Vm4URkV
	Zilsoi.eg7wyabiLz_Uu1p7gRhdsgmOHw6E_7ggKJfb9pAh1Btgg76kd5y.OD4E93r41GGPGP0ed
	P2.xkAVyQSgEAzhceM0amtx1tlsQ3Vcml8VpPqb7XhjXztony1MzaKT_XjE.pMvpnkJO47dq0t8M
	PsDihT1P6Iqd06iMVznoEwHn.vGMlv0PEab6TA3q5lHG.6sDZ4Q_uwG8B5y1.F8QkNF9VuhnDMKt
	0FOHVk2543kcBTIvjmHgdL4p9U0SdCIwcIcWNYf_Hga9PgzuCMpQ2FRacFAl7joi6gsMmlwdw_pV
	pZf3ws0XIMZmAoHeOlO1nV4TI9XfFxkQi4bu8t.Nb0t0m5WA_HbAszb4Sqe71ZZfW35SnzpC1z6o
	i5HfWfPuAPVEBTuUDz1raX0K5EKKpSHTqx9fu8lJAmTrsWmp7A3qd1N_fpX_74nG13LMSAUnuoxj
	gaxybJoVSd3qMyIW2VMsWpYmQUdOhAbDKuU0Ar1Zx9qEmUPMK7EcObeKcHx8Inv60I0n0kIwglV.
	bVMOTjTYTXLqF9mAUx9_njRTdkb7aWdPVsC405HHDu8s2.DxdZezmFV.7aJuagw3t_lc6BG._22h
	O5M33VxHlo3LpJPS4aNSxHrIFZFB.hMnVEXGY1M_6hqQT3UKLRMb63965UABCpeCQ9q5msjItiBy
	VBmPOoisI.LC8hRi0
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic311.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 13 Jan 2021 23:29:00 +0000
Received: by smtp420.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID ebfcccc11a419959d1a6eeb13d9cd2ca; 
	Wed, 13 Jan 2021 23:28:55 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>	<108A8E49-CA6F-4343-A117-892A84702025@gmail.com>
	<alpine.NEB.2.23.451.2101131355400.25393@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2101131355400.25393@panix1.panix.com>
Subject: RE: Does anyone on here read code in braille?
Date: Wed, 13 Jan 2021 16:28:53 -0700
Message-ID: <03c901d6ea03$dc1da4a0$9458ede0$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQG/VGDEuSP36gFZZ/cL82B2dnTYJwERKiEtAu9qvNwCDbi6DwJpxsy8qhGc2iA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DNT5s7005887
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzdGFydGVkIG9uIGFuIG9yYml0IHJlYWRlciAyMCBhbmQgaXQgc2hvdWxkIHdvcmsgdGhhdCB3
YXkgZm9yIExpbnV4LiAgVW5mb3J0dW5hdGVseSwgSSd2ZSBvbmx5IHRyaWVkIGl0IG9uIFdpbmRv
d3MgYW5kIGl0IGRvZXMgaW5kZWVkIHdvcmsgdGhlcmUgZm9yIGRpc3BsYXkgYW5kIHR5cGluZy4g
IEl0J3MgbW9zdGx5IGFib3V0IHRoZSBicmFpbGxlIHN1cHBvcnQgaW4gdGhlICJzY3JlZW4gcmVh
ZGVyIiB1c3VhbGx5LiAgTm93LCB0aGUgT3JiaXQgc2hvdWxkIGJlIGluIHRoZSByZW1vdGUgVVNC
IG1vZGUgKmJlZm9yZSogeW91IGNvbm5lY3QgdG8gdGhlIGNvbXB1dGVyIGZvciB0aGUgZmlyc3Qg
dGltZSBhcyBhIG1pbmltdW0uICBPdGhlcndpc2UsIHRoZSBVU0IgZG9lc24ndCBxdWl0ZSB3b3Jr
IHJpZ2h0IGluIG15IGV4cGVyaWVuY2VzLgoKCURhbgoKCURhbgoKLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlz
dC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uClNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywgMjAyMSAxMTo1NyBBTQpU
bzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4KU3ViamVjdDogUmU6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBjb2RlIGluIGJyYWls
bGU/CgpBIHF1ZXN0aW9uIGFib3V0IHRoZSBPcmJpdCBhbmQgTGludXggcGxlYXNlLiAgVXNpbmcg
eW91ciBvcmJpdCwgY2FuIHlvdSBydW4geW91ciBjb21wdXRlciB3aXRoIGl0IHN1Y2ggdGhhdCB0
aGUgY29tcHV0ZXIgdW5kZXJzdGFuZHMgeW91ciBvcmJpdCBpcyBib3RoIHRoZSBrZXlib2FyZCBh
bmQgdGhlIHNjcmVlbj8KCgoKT24gV2VkLCAxMyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSSBoYXZlIGFuIG9yYml0Lgo+IFdoYXQgSSBkbyBp
cyBwdXQgdGV4dCBmaWxlcyBhYm91dCBsaW51eCBpbiB0byB0aGUgb3JiaXQsIGFuZCByZWFkIHRo
ZW0gdGhlcmUuCj4KPj4gT24gSmFuIDEzLCAyMDIxLCBhdCAxMDo0NSBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
IAo+PiBJIHVzZSBicmFpbGxlIGV4Y2x1c2l2ZWx5IChvciB0cnkgdG8gYW55d2F5KSBvbiBsaW51
eCBhbmQgd2luZG93cy4gIEkgdXNlIGVpdGhlciBhbiA0MCBvciA4MCBjZWxsIG9uZSBsaW5lIGRp
c3BsYXkgZGVwZW5kaW5nIG9uIGRlc2sgc3BhY2UuICBZZXMgdGhleSBhcmUgZXhwZW5zaXZlIGJ1
dCBmb3IgY29kZSBJIGZpbmQgdGhlbSBpbmRpc3BlbnNpYmxlLiAgRXNwZWNpYWxseSBpZiB5b3Ug
YXJlIHdvcmtpbmcgd2l0aCBjb2RlIHRoYXQgdXNlcyBsb3RzIG9mIHNob3J0IG5hbWVzLgo+PiAK
Pj4gVG9tCj4+IAo+PiAKPj4gT24gV2VkLCAxMyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gCj4+PiAKPj4+IAo+Pj4gQXNobGV5Cj4+PiAKPj4+
IEJlZ2luIGZvcndhcmRlZCBtZXNzYWdlOgo+Pj4gCj4+Pj4gRnJvbTogQXNobGV5IEJyZWdlciA8
YWJyZWdlckBpdnl0ZWNoLmVkdT4KPj4+PiBEYXRlOiBKYW51YXJ5IDEzLCAyMDIxIGF0IDEyOjM1
OjE5IEFNIENTVAo+Pj4+IFRvOiBBc2hsZXkgQnJlZ2VyIDxhc2hicmVnZXJAeWFob28uY29tPgo+
Pj4+IFN1YmplY3Q6IEZ3ZDogRG9lcyBhbnlvbmUgb24gaGVyZSByZWFkIGNvZGUgaW4gYnJhaWxs
ZT8KPj4+PiDvu78KPj4+PiBBc2hsZXkKPj4+PiBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4+
Pj4gRnJvbTogQXNobGV5IEJyZWdlciA8YWJyZWdlckBpdnl0ZWNoLmVkdT4KPj4+Pj4gRGF0ZTog
SmFudWFyeSAxMywgMjAyMSBhdCAxMjoyNToxMSBBTSBDU1QKPj4+Pj4gVG86IExpbnV4IDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPgo+Pj4+PiBTdWJqZWN0OiBEb2VzIGFueW9uZSBvbiBoZXJlIHJl
YWQgY29kZSBpbiBicmFpbGxlPwo+Pj4+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBh
bnlvbmUgb24gaGVyZSByZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0
IGxpbmUgYnkgbGluZSBvciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBv
bmNlPyBBbmQgd2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+Pj4+
IEFzaGxleQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

