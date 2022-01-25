Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA77C49BBA0
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 19:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643137006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1RO9wWKUYEHAXJITnvVNHc28H9VoZyCC6WO2nke4eag=;
	b=MC0m9CJpBhIxiH3SI3cy9d2DvKxMgFV+Ea4O64jibtR02tsBAQciWKRJCkbZ7FX4aEgVpa
	TJ+B62ELOIicMgtW/1JDQiPq3RH8eAYEPh2UcOHtemdYP649Ctn/+RoTl5L00S6rUCCwuL
	7ctlWsOhzXYQxru5v05c5RVr2BTVpV0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-392-Laz3JMjbP7eI_ut5qIYtzw-1; Tue, 25 Jan 2022 13:56:42 -0500
X-MC-Unique: Laz3JMjbP7eI_ut5qIYtzw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41C6261261;
	Tue, 25 Jan 2022 18:56:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AB4085884;
	Tue, 25 Jan 2022 18:56:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 622214BB7B;
	Tue, 25 Jan 2022 18:56:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PIrKHr015959 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 13:53:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6DD5E4010A04; Tue, 25 Jan 2022 18:53:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64479400E116
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 18:53:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B2E7296B008
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 18:53:20 +0000 (UTC)
Received: from sonic303-3.consmr.mail.bf2.yahoo.com
	(sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-638-dWK3v2vfNQ-ep9ateUYsJQ-1; Tue, 25 Jan 2022 13:53:18 -0500
X-MC-Unique: dWK3v2vfNQ-ep9ateUYsJQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1643136798; bh=AuMqhvuCKaRGUFzEp/yeVR47YKXprhkxBqPu3nw4nmA=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=aFQKj+46MJwUbK5CW9tjigS5P5udlK1X2k0IgQqAGnuBOxQ0uftMFkMgPFNQoz/L8cAUnpQc9Er8DR5ty8D0xorjY5wJ7r+W84FqFYZrxJHRveQ9SK8Q8NcMHk7VuQkgBSSAXjhcTomsByvslr8MGMIIjjYNQXflAWAiXG6M/90XUfHesRTgRdOz4kd30ThqyPx49a/OL9MuVB1hJCAFX+jprXVVNSWL6PpsPegKXk+VgsAwoOYcPTwXFstOCsyR6r3VPXF7nduC2MYoVIr3ieD1U9npYgSSmjVpP2exmbIt8EJrvd8npvugpOmS2yFoez39sg3fRc4UVapLv/Jl6g==
X-YMail-OSG: MMHVOGoVM1mEX95a6xMTlS2NpjREz9q.KvvrcwX7BtZLO.9NDyRR6I2KDHjpqWQ
	.6j1eGN_OXueZfFHFApDot2Ez6DQTpZI5tjEeb4Q_Kf9TlwVmWt4yAZFzfPeNORcKktUHpqaiayY
	yZ_6ZGMT2inHY53DDlxyYbmN0xeymm.s2lDOP156cmEdUB2lUdoMBsoNoJvVD8UdKVWpMrdb36sP
	HP8TBJPU.c227UV_pH7ZoJFYpT1INFrHkDrg7xvf30zkF..uRRSTwJfpyXGik6UYRVO_GDvVLaAh
	buDU5D74ijTmjMe12SZPrGqGOLtttjZUyl8AfVOxqdutcuV.CKMCvL4Da0e9qAQyt6hr8t9kRaFu
	sAUmcvPK4pD6gK2pZUS78yV3G0VgCSMwnNa50y.fn.0xPDaBB0mET_m5Bta4sj53RcBDg0dJaqdW
	Yn8ALv0jGgBBl_vLyIR1Ch0jNnfiLfm8uG2Vpdn4sBVUGhYyhWu8UKp6M8nVyJMHUxt.R0jEPSgB
	5SBzOQw98Ip3vVAeuc1akW05GeH_edYqIH3gmBiOKRfT58N09BmYhobI9F8rM_FRKGVl2XWgs9YQ
	a7NxR2510o5Dhod9Guvwl4uiW1Ic3JyBIAAYkMtOx22J7RX5Wva1EwU_LIeHF_PI5e6w_OnQ0soc
	6objieMsUR9mkbyJW5eySsO3SNAOHrmF_ediaORsvOwdB5Xoa.FJSTgBNmszI1FUI8ODlHDS8_0C
	lLNOAjqjy7WdvmCenbAeBgOZXcho7EJ5qIhjH0Qyl4gvUA6x79QxON.m_IM5mp2i0Cap5X_C9DqY
	dMldXRNzbEryuNYRc565Lavjp51tK7xmv7Xe43rHP9S1G.uF2eSEQkUE_5s1_tur_LOF0e.a0dsc
	TCYK5C6qNMn2dn5rHThy3GHho4FuyS5vxWu0goocUS0z4gCdvvvocN5GURoXB9M6xSh7sGsLYqzl
	_WZULZzmiKSh7Y4l4IL3b2eRdiko3xAhhFAIlOwQLKKetyO9UHJCd3.EB_yO1c99YCz3h4Y2MHfE
	INQuh7QviUuYriIliKpPOaI3XktOflNgUVVtYa3dKtFJVBDoFpxD6dPfuvRLS0D0_KzO3dJ07PCk
	RvGHPLbJiLIHbMoPdLObp4hQMFFmWXUDdMJKacgo8mPMvLS7VowINQz5DRGx8x5Qyj6wrVGo.iO3
	mJbBXJGE9y9zO30Exykz_aqQGfacwo3jXmcWMLfM3aLyEderPyKmrIuKSrlicrZ8csoOXEU63Rsu
	sYoW19MFDgo2f9QIhOdK72FfwmeA5I0ZAk78cu5EN.LfDomeclaZighIHbBDfbVFn6YPhnNZBHbL
	OLaLXJNNp.CNzOzwTuL.MNTzKNmlY5nv1vlPl6QxkC5cnw8hPxNbtRjRKFvcTgzzTVVxUlhRxpiA
	3ulpwfzKCUuBIwjwSnBZRG9aPapeljtgeZp6yezqh2.v6EPZ.FDeiVy4VvB7o1c3zT.dQyIda_2h
	s982outCw_kpiXbrW1Qefzes_AlOPins.0btBhuC5YKDNbJM3X86pMD11BK8zSdMu3RkrsrC4ZgX
	qs5w2hfRmV8YykmtTAe78jZLvAqoSJfenzIncoSh1CejYhIGwIouCoDqsZLqjRx6gsqB7EaCSec8
	x4kybx_FDqZ9svsflRxAwl3U6P1GbRC2q2S1fu7uKiEZldDqrfW93Rd7YSjM4yzXCLb6z3AuusTy
	O.hUR_csR.Co3zKs6QgZB4JBgYbzEKHXqmT3Hqi3y3obe96eQeQ5EWuLGPAqcS4db8pI0Ofwj4pE
	eU4_qcQdSDdikkozQ.e4KQxJ4ie14D6eZ_7vLnDt.c_A109YT1KZP0Ci6vXTr7Rwl5y7IfLzATd3
	IKijJ9c9kr9hecVeXEyWzLMydQpo3R5WftvypwxJqatonFsojZG7rckLnS6MiIjL_7lcnsK9Qq.2
	e0weuzTZ.rA54PPeT.DETFK5b3tG4rcseBOmcOKjFSNpvVH9CCCo760WRuGLmZbqf9ZZm1GMI6mC
	qw9njeYS3ruqXW.NxNTkdHzg0hzBYMYi9N.YJwWvt8Ze3B8uqDxSYYhQ8gf8XCxJNVUFQ_wdvnQy
	G5Dio70xPbx5XfAOHx3fT.QsOvI_.3PGoMUkVSBhdib95NZYur0mML45M0ARHWw--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 25 Jan 2022 18:53:18 +0000
Received: by kubenode527.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 35aaa35e261b48b77e96c4871ef48550; 
	Tue, 25 Jan 2022 18:53:12 +0000 (UTC)
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
	<ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
	<b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Configuring ratpoison
Date: Tue, 25 Jan 2022 20:48:00 +0200
In-reply-to: <b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
Message-ID: <87zgnjodji.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20PIrKHr015959
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpJIGluc3RhbGxlZCBSYXRwb2lzb24gYWxvbmcgd2l0aCB0aGUgU3RyeWNobmluZSBhbmQg
dHJpZWQgdG8gCmZvbGxvdyB0aGUKZ3VpZGVsaW5lcy4gV2hpbGUgdGhpcyBzZWVtcyB0byBiZSBh
IGdyZWF0IG9mZmVyaW5nLCBJIHNlZW0gdG8gCmhhdmUKaXNzdWVzIHdpdGggdGhlIEFMVCtGMSBt
ZW51OiBpdCBkb2VzIG5vdCBzdGFydCB0aGUgbWFpbiBtZW51LiBJIApyZW1vdmVkCnRoZSBxZW11
LmRlc2t0b3AgZnJvbSB0aGUgL3Vzci9zaGFyZS9hcHBsaWNhdGlvbnMsIGJ1dCBzdGlsbCBPcmNh
IApkb2VzCm5vdCBhbm5vdW5jZSB0aGUgbWVudS4KCkFueSBoaW50cyBvbiBob3cgZWxzZSB0byBw
cm9jZWVkPwoKCk9uIE1vbiwgSmFuIDI0LCAyMDIyIGF0IDA4OjIyICBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIAo8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gVGhh
bmtzLCBJIGFsbW9zdCBnb3QgdGhhdCBjb3JyZWN0LiAgSSdsbCByZW1vdmUgdGhlIC5yYXRwb2lz
b25yYyAKPiBmaWxlIGFuZAo+IHJ1biB0aGUgc2V0dXAuc2ggc2NyaXB0IGFnYWluLgo+Cj4KPiBP
biBNb24sIDI0IEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+Cj4+IFJpZ2h0LiBJdCBzaG91bGQgZ28gbGlrZSB0aGlzOgo+Pgo+PiBTZWxlY3QgeW91
ciBSYXRwb2lzb24ga2V5LiBJdCBjb21lcyB1cCB3aXRoIGEgYnVuY2ggb2Ygb3B0aW9ucy4gCj4+
IEMtIGlzIGNvbnRyb2wsCj4+IE0gaXMgZWl0aGVyIGFsdCBvciBzaGlmdAo+Pgo+PiBTdXBlcl9M
IGlzIHdoYXQgSSBnbyBmb3IsIGxlZnQgU3VwZXIga2V5Cj4+IFRoZW4gaWYgeW91IGdvdCBtdWx0
aXBsZSBicm93c2VycywgdGV4dCBlZGl0b3JzIGFuZCBzbyBvbiBpdCdsbCAKPj4gYXNrIHlvdSB3
aGljaAo+PiBvbmUsIHRoZW4gaXQnbGwgYXNrIGlmIHlvdSB3YW50IFJhdHBvaXNvbiB0byBtYWtl
IHNvdW5kcywgaG93IAo+PiBtYW55IHdvcmtzcGFjZXMsCj4+IGFuZCBpZiB5b3Ugd2FudCBicmFp
bGxlLCB0aGVuIGFmdGVyIHRoYXQgeW91J2xsIGhhdmUgYSAKPj4gLnJhdHBvaXNvbnJjIGZpbGUK
Pj4KPj4gTmV4dCwgZWl0aGVyIGJhY2sgdXAgeW91ciBleGlzdGluZyB4aW5pdHJjIHNvbWV3aGVy
ZSBzYWZlLCBvciAKPj4gZG8gLi9zZXR1cC5zaCAteAo+PiB0byBtYWtlIGEgbmV3IC54aW5pdHJj
IHdpdGggUmF0cG9pc29uIHNldHRpbmdzIHRoZW4gZG8gc3RhcnR4Cj4+Cj4+IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+ID4gSSBnb3QgcmF0cG9pc29uIGFuZCBz
dHJ5Y2huaW5lIGluc3RhbGxlZCBhbmQgcmFuIHRoZSBzZXR1cC5zaCAKPj4gPiBzY3JpcHQgaW4K
Pj4gPiBzdHJ5Y2huaW5lLiAgVGhlIGZpcnN0IHNjcmVlbiBvZiBvcHRpb25zIEkgZGlkbid0IHVu
ZGVyc3RhbmQgCj4+ID4gc28gaGl0IGVudGVyCj4+ID4gb24gdGhhdCBzY3JlZW4gd2l0aG91dCBz
ZWxlY3RpbmcgYW55dGhpbmcuICBJZiBJIGhhZCB0byAKPj4gPiBndWVzcywgSSdkIGd1ZXNzCj4+
ID4gdGhhdCB3YXMgYSBsYW5ndWFnZSBzZWxlY3Rpb24gc2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZh
ciBhcyBJIAo+PiA+IGNvdWxkIHRlbGwKPj4gPiB3YXNuJ3Qgb24gdGhhdCBzY3JlZW4uCj4+ID4K
Pj4gPgo+PiA+IE9uIFN1biwgMjMgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gCj4+ID4gd3JvdGU6Cj4+ID4KPj4gPj4gSGkgQnJhbmR0LAo+PiA+Pgo+PiA+PiBJ
IGZvcndhcmRlZCB5b3VyIHF1ZXN0aW9uIHRvIG15IGZyaWVuZCBTdG9ybSBEcmFnb24gb24gSVJD
IAo+PiA+PiBhbmQgaGVyZSBoaXMgaGlzCj4+ID4+IGFuc3dlcjoKPj4gPj4gKDE2OjI0OjIwKSBz
dG9ybTogRGlkaWVyU3BhaWVyOgo+PiA+PiBodHRwczovL2dpdC4ybWIuY29kZXMvfnN0b3JtZHJh
Z29uMjk3Ni9zdHJ5Y2huaW5lCj4+ID4+ICgxNjoyNTowOSkgc3Rvcm06IFRoYXQncyBteSBzY3Jp
cHQgdGhhdCBjcmVhdGVzIGEgCj4+ID4+IC5yYXRwb2lzb25yYy4gSXQncyB3aGF0IEkKPj4gPj4g
dXNlCj4+ID4+IGV2ZXJ5IGRheSBmb3IgbXkgWCBzZXNzaW9uLgo+PiA+Pgo+PiA+PiBDaGVlcnMs
Cj4+ID4+IERpZGllcgo+PiA+PiAtLQo+PiA+PiBEaWRpZXIgU3BhaWVyCj4+ID4+IFNsaW50IG1h
aW50YWluZXIKPj4gPj4KPj4gPj4gTGUgMjMvMDEvMjAyMiA/IDE0OjQwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgCj4+ID4+ID9jcml0wqA6Cj4+ID4+PiBIaSBhbGwuCj4+
ID4+Pgo+PiA+Pj4KPj4gPj4+IEkgaW5zdGFsbGVkIHJhdHBvaXNvbiBvbiBteSBTbGludCBzeXN0
ZW0sIGFuZCBkb24ndCBoYXZlIAo+PiA+Pj4gZWl0aGVyCj4+ID4+PiB+Ly5yYXRwb2lzb25yYwo+
PiA+Pj4gb3IgL2V0Yy9yYXRwb2lzb24uCj4+ID4+Pgo+PiA+Pj4KPj4gPj4+IFdoZXJlIGNhbiBJ
IGdldCBhIGdvb2QgcmF0cG9pc29uIGNvbmZpZyBmaWxlPyBEb2VzIG9uZSBvZiAKPj4gPj4+IHRo
ZSBPcmNhIHVzZXJzLAo+PiA+Pj4gSSdkCj4+ID4+PiBhc3N1bWUgdGhhdCB3b3VsZCBiZSBtb3N0
IG9mIHVzLCBoYXZlIG9uZSBvbiBnaXRodWIgb3IgCj4+ID4+PiBzb21ld2FyZT8KPj4gPj4+Cj4+
ID4+Cj4+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiA+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4gPgo+PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+ID4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgoKLS0gCkdvb2QgcGVvcGxlIGRvIG5vdCBuZWVkIGxhd3MgdG8gdGVsbCB0aGVtIHRv
IGFjdCByZXNwb25zaWJseSwgCndoaWxlIGJhZCBwZW9wbGUgd2lsbCBmaW5kIGEgd2F5IGFyb3Vu
ZCB0aGUgbGF3cy4KLSBQbGF0byAoNDI3LTM0NyBCLkMuKQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

