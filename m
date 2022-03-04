Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F35D4CDB25
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 18:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646415769;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Me86+cWAdXSk7J8zVsTJ8WELMRjYSPK2i6RSPKMlEXE=;
	b=e2SV0x2qa/HiOKwHPvl4agLiW6K5ftoH9/gx+8f/fJJzUhjSKl8baHAdIgljryooTQEY0A
	wlJwx6lJ9zGv0YoSBjnx6cjRnQ/zauBPeAtJDfgPV6mYBav4hNSF74sNjM2zHaZDqkprRA
	7IPGcXgcwllt9hI7V7nATLzKKYbEM5k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-232-85unARLuMDi5VxsdeiC4dA-1; Fri, 04 Mar 2022 12:42:46 -0500
X-MC-Unique: 85unARLuMDi5VxsdeiC4dA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83DA251DC;
	Fri,  4 Mar 2022 17:42:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8D9B7C046;
	Fri,  4 Mar 2022 17:42:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F0BEB37A0;
	Fri,  4 Mar 2022 17:42:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224HgQqr025902 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 12:42:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DB56840D282B; Fri,  4 Mar 2022 17:42:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D74CA40D2828
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:42:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD17A2A59540
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:42:25 +0000 (UTC)
Received: from sonic303-24.consmr.mail.gq1.yahoo.com
	(sonic303-24.consmr.mail.gq1.yahoo.com [98.137.64.205]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-593-EB_8XUgGPH-_4V_Satghaw-1; Fri, 04 Mar 2022 12:42:24 -0500
X-MC-Unique: EB_8XUgGPH-_4V_Satghaw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1646415743; bh=yn41Kui5okyFOvE19MA/V8T7y1eqfMZ50WgdySL63ck=;
	h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
	b=gWE1ec8YyRJXHv66PuHZQJ/NsdPwTmyvFLtvPJ/AnU7g/xaW2einlHe4usoU8afsYZdkRIM4uFUex879PiwYvIiYF9J1eF5XD8XX4EhVgGbkUYW2VDc8OQdlgOVWom/jXBF59H2qn61CUKB1/jgfTUnO4b8L4sea0a/oIUdHAIx0vc2vF9+48lJupxzZJ2CY3ZYt9THLowWKrOgnHYEoMkjmvbs9bl1MjEchiBuyK+tLXQ/JzwL/MDRqdvXRtlB1Lj+L8+1gsToe6mgALSp6SxeC6vPWW7D9NctUGhMVJlUqddo3rkKEeHgeM1XcEnT6V7dcLML0zk+hpl/1RjOKHA==
X-YMail-OSG: AUfNAhgVM1n1iwgD43BLenlrKcOBDSLVxl_EEBaYkc2xEGlZ3b4lkNYkZsKEGj8
	OnFd6IcvVm2Qlm8c37f5bE9oA4BnaT0GnGbuZn36Tu0WM0dw8WGPCXYv0GYdPt8NRIZcM2rVSTAF
	7.Sx.6UxoSa0ovQ1jlqIEEb9csLi22RWdQb7R19DVhgBCoY.l8Fqz9lfttwirDQJrEwk4s2xnIcm
	MHJdXBvNPJXxUpa_fga4QyKYnAWe0daXHiXfn83uY9rQomhugIjnYYmKi4ITaAjZp1MKypQnbYOX
	tzeCSymkrl1vWPFWkPTEmjRxxPXK8t_GctQrHPe.ETZzp5MLHTT1XyhYH4JDpEKGd3m2Jsqf2O61
	6sokNY80FvUVlOUbCBzyGlI4A7dWQFPV2TewmlY8bh20n0OWYIgs0P9x2qEqKx6M8dlWk8eR6s9Q
	fKiSSTjzq1n4Eu0sJYG_bf7510uQW.WT6m.7Vit.fx4bKio_vNfQ15vuVrQIQZfUnqYNC_esbvc1
	r1dnp.N5G5pV22AO56jcayVOp4Ct_cmtY3OAu4AQVpiRAsFur2xJr1wuItEnHJ5_Z30Fj_rZqkjm
	5M40g.vNuoDRCxghLfHF9WUaKZlPjmxsOUb26suRDdYMqqeSdCOEWT5DQW9HLSNlD_SW02nF17Av
	mul6Lcu.wl2PnHiy6Y5gY2RsvWE17TMqxXIN9Y5ibii5NrSu.IWZzrd_Q_HRlVvxF7SAAwiGJOL4
	lgn9a2K6jK.NbfE77xsoJ9QdbmNP2afUVawjZHmzp7uTfZuDooyWfLT.H4bmv9_KnUpVOY2hG3fG
	kLsyLqlg5sbmMgR.XlFMgRy8XET4nFGusD.x5bocsTIRVZq2GVo00LqWriEStY7QSog.61rcDUmK
	xkWSAIGBnUmZ4uRi4qGfc1eWKz111QjYRSFtbkSXHnWgCmr46IYyezUQO_4unLnX.rhVmDgv5HbI
	hUfAmyYmzdjkWWyvnGdj.xTsGtRccv65ZZZ_RhSIpCruLq12m0pcqn_pe6LuGuLMSHahDibwy6t2
	RMzKH4yC1mEwflns9ws7RfNEKlZ170AGjNp.UmeoZ6ifyKkuJtVxBYRemScPKRTZeZNBeqxzFoM_
	lrJ6vJNqs9tf162VhWHPfugR5CTQQt2LKNae7wrgFf3YhKXTtJGAZD8uhnlsaEU2U7L.8SYdrThc
	SUyMkJrXjZvuT1QBdzMMwPVv2mgrtG7C8imGNUybb2G50hliVjik0D5g8KnOKXXGh3PEmIgsJAcK
	Q1dztOHr60PeigzIzRvDphW4BRWx9P8Is.tV4_NY8aMyvuk6SSl6H.GtTq6w0JmWwEXLSQ4VxmM6
	R7CMutte6pf.aI88Ml2HcS5I.q.rK_J.NMgU.BZVPPS5SCOH1daCrWhb02BFkatB2NArXtpCCYuw
	hiir88CelhZ0r90yW8XIp5IGLod0r0fURKqvymuaj6FALTkg.0qzTk5fCpkUHsxgxqmY7h_nrW52
	FgZAnMruSIqJska.Sf_E30OF46NEJW8zdnHbwJnF_jT6pXvCwerWVV2gOqM2BHEhspQJHDA_Hi.U
	f4lKHyOrwvG5IRu.BDHWWhsvuZG9z22qZiI663lt0jJh.bJr53cqxuLooBdVrWMriXvqvWXF.dCP
	RvsRsmdlQY4UUAuAUHYsXjOI2jUNcd5JyvynvTdFGxagLgvjCU8nNejRF0ud2DMb1jaeSqFR0R1J
	yc1S.IRzCNDSooH6YjDZNdXddGJpKWDL4p6kgBcTQVpKELQnkp29Cu6YiwIEOhmgphpcPFV9BkxR
	U44TQd3k61SkhSJfBI7IU_SdwNYI9tItzOQip1jpgOg4xn_PNtxY6Dkqpt8McJ5PbCe76hD6.s8X
	Hh.zkDkkNCiC49DPIcM0By7D.kjXiIO9z1f2aZzadB8c2HKa6IIq6yNhkWUK817xBpmNRakbOLIf
	nQnt7K4A9aGsX9OxbOj4vEg9Pt55TDelSsiZs5kPkgO8ePDCTaui8DeoBDQMK5qOgvho.qiovVxU
	_9ntfeLxiyg8mZjkl2P0Ctv_Y_yqLi9hk8XOAvecbujtlsduZJ4CanoRhsazNiuju_lBx5uV6CEp
	4k61PzVoXVZntKw0_thYn30mUUnGyHIFBdKBNkQQp7W0hbH3IUjjTEJms8MrQoXWbKEE0e2eG3TP
	wNetH9k6ZQ5ZaBIla3ImyTZBEisu69rLaQF3YPG8LGFtKDJUoLZUCtmmmqa6z6XssY1vdGaYOLIG
	Hap0v7uQwXB1Wcrs9BcfhaolmPht7kkYq
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.gq1.yahoo.com with HTTP;
	Fri, 4 Mar 2022 17:42:23 +0000
Received: by kubenode505.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 889d1f4f68b817ad234aeefc16347ae5; 
	Fri, 04 Mar 2022 17:42:21 +0000 (UTC)
Message-ID: <7ac5cb2e-7110-4b77-a396-1e53393934a0@verizon.net>
Date: Fri, 4 Mar 2022 12:42:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
	<dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
In-Reply-To: <dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGV5LCBLeWxlIQoKCllvdSBzYWlkLCBpbiBwYXJ0LCAiSXQncyB0aW1lIHRvIHNheSBnb29kLWJ5
ZSB0byBiaWcgdGVjaCwgYW5kIHRoaXMgaXMgCm15IHN0YXJ0IGluIHRoYXQgZGlyZWN0aW9uLiBJ
IGRvIGtlZXAgR21haWwgaW4gVGh1bmRlcmJpcmQgZm9yIG5vdywgCmJlY2F1c2UgaXQgd29ya3Mg
dGhlcmUgc3RpbGwsIGFuZCBzb21lIHN0dWZmIHN0aWxsIGNvbWVzIHRvIHRoYXQgZW1haWwsIApi
dXQgSSdtIHRyYW5zaXRpb25pbmcgdG8gc2VsZi1ob3N0ZWQgb3BlbiBzb3VyY2Ugc3R1ZmYgYXMg
Y29tcGxldGVseSBhcyAKcG9zc2libGUsIHdoaWNoIGl0IHNlZW1zIGNhbiBiZSBmYXN0ZXIgYW5k
IG1vcmUgY29tcGxldGUgdGhhbiBJIAppbml0aWFsbHkgdGhvdWdodC4iIERvIHlvdSBoYXZlIHBv
aW50ZXJzIHRvIGluZm9ybWF0aW9uIGhvdyB0byBkbyB0aGF0P8KgIApJJ20gbm9uZSB0b28gc3Vy
ZSBJIGtub3cgZW5vdWdoLCBidXQgSSdkIGxpa2UgdG8gY2hlY2sgaXQgb3V0LgoKClRoYW5rcyEK
CgpBbAoKCk9uIDMvNC8yMiAxMjowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBXZWxsLCBpdCdzIHRpbWUgdG8gc3RvcCBnbWFpbCB3b3JraW5nIG9uIHRoZSBw
aG9uZSBhbmQgdG8gYWxzbyBkaXNhYmxlIAo+IGl0Lgo+Cj4KPiBUaGVzZSBkYXlzIEkgbW9kIG15
IHBob25lIHRvIGRpc2FibGUgR29vZ2xlIGFzIGNvbXBsZXRlbHkgYXMgcG9zc2libGUuIAo+IEkg
bm8gbG9uZ2VyIHVzZSBHbWFpbCBvbiB0aGUgcGhvbmUsIGFuZCBJIG5vIGxvbmdlciBldmVuIHVz
ZSBHb29nbGUgCj4gUGxheSBTZXJ2aWNlcy4gSSByZWNlbnRseSBicm9rZSBhIHBob25lIHRoYXQg
d2FzIGNvbXBhdGlibGUgd2l0aCAKPiBMaW5lYWdlT1MgZm9yIE1pY3JvRywgYW5kIGludGVudGlv
bmFsbHkgcHVyY2hhc2VkIHRoZSBzYW1lIG1ha2UgYW5kIAo+IG1vZGVsIHNvIHRoYXQgSSB3b3Vs
ZG4ndCBldmVuIGhhdmUgdG8gc3RhcnQgd2l0aCBhIEdvb2dsZSBhY2NvdW50IG9uIAo+IHRoZSBu
ZXcgcGhvbmUuIEl0J3MgdGltZSB0byBzYXkgZ29vZC1ieWUgdG8gYmlnIHRlY2gsIGFuZCB0aGlz
IGlzIG15IAo+IHN0YXJ0IGluIHRoYXQgZGlyZWN0aW9uLiBJIGRvIGtlZXAgR21haWwgaW4gVGh1
bmRlcmJpcmQgZm9yIG5vdywgCj4gYmVjYXVzZSBpdCB3b3JrcyB0aGVyZSBzdGlsbCwgYW5kIHNv
bWUgc3R1ZmYgc3RpbGwgY29tZXMgdG8gdGhhdCAKPiBlbWFpbCwgYnV0IEknbSB0cmFuc2l0aW9u
aW5nIHRvIHNlbGYtaG9zdGVkIG9wZW4gc291cmNlIHN0dWZmIGFzIAo+IGNvbXBsZXRlbHkgYXMg
cG9zc2libGUsIHdoaWNoIGl0IHNlZW1zIGNhbiBiZSBmYXN0ZXIgYW5kIG1vcmUgY29tcGxldGUg
Cj4gdGhhbiBJIGluaXRpYWxseSB0aG91Z2h0Lgo+Cj4gfkt5bGUKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

