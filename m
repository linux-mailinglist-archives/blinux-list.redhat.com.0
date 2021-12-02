Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D5466A14
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 19:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638471314;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CQ1tJ9LKSBU987hpGNGx27CaoI2UpU8MSjbjQBUsB0c=;
	b=VlVU7pVCmKzu2ZTGvC3wCxT0kCdXF/f1OseD8+ClZ3ChuR3+HjQyyx78rl+5Uw4gtLjgEL
	s3tBH6eSg8IK/gl+0pwQYOqOkvjcPMkeJ7dZIGIgSAvDCTHteREHUFxTGyJdt71zTZlITS
	6Py7dspFXYA/XNNRdslJq9CWHUgRM88=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-fXHeuHXaMXejK3GEkm8uGw-1; Thu, 02 Dec 2021 13:55:11 -0500
X-MC-Unique: fXHeuHXaMXejK3GEkm8uGw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 109A9801B01;
	Thu,  2 Dec 2021 18:55:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5041819EF9;
	Thu,  2 Dec 2021 18:55:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 897DB4CA93;
	Thu,  2 Dec 2021 18:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2IsLm3022420 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 13:54:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2C67E2026D46; Thu,  2 Dec 2021 18:54:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 267372026D5D
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 18:54:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE249101CC62
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 18:54:15 +0000 (UTC)
Received: from sonic304-24.consmr.mail.gq1.yahoo.com
	(sonic304-24.consmr.mail.gq1.yahoo.com [98.137.68.205]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-117-rBzJyh6uOm-g_qY0iLQZWw-1; Thu, 02 Dec 2021 13:54:14 -0500
X-MC-Unique: rBzJyh6uOm-g_qY0iLQZWw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1638471253; bh=mIO6ce523aVTObqmLBhOZu9EYym6DFG/R4+HZsVp5Nr=;
	h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
	b=nQ7U7O9p+VYGIEc9+KHbO83gULIVE5f3c2PffGoEzxcSrmzHL7YYZ+IavCii1YmjSkHoxvijjEhYYKFboU8PxpssBHZ8FLJq7hYnYGWtspoLXvS2VP10Pf3jL1SYNEM/gNhZnHi7IeaZ0m4j00SKkl0lLzj6X5wDAmdKajs2ZYbPvpehVP0kJouNNkrLGPTz7c+7YAzJw1hq1lz/2x5oszvUKeYvLP5FDzVQ1OsTf5JbudfRlVttmhNPeoFY81D/X2YORDdCmNVp7kqEz1L3pRdUHJcp5CvVCdsNpCNdxyuzIJ4yazQNpezy4EU46oMLHDNGuveYM66Uq1wJjH5bxw==
X-YMail-OSG: HPD.nXcVM1mTkH55UCPfM5lsymzrbqK3DzyT9zsMaHtTDmu3OCpezBDOv47Ia79
	ZSSHvPPY6i7.tPXq8M.HVRiUyzLkqZjpwii97Mp7LvV1ja1YD4ewC_xlTg7Rt0W1tnidWaYJv75H
	iWG8SShXUYZWSou4zjnoAYwf2VY8q4SSO0tbLZuYgqjOnQpucdZ...Yve86xjhA5qGzo94PPT.pK
	otcUBoaI4EpEuBrEEIqJL.XzHDyBpDi7hZ6xJKagCz.e162du7nrYv2LGhagUmGCpbdofNBGhfUR
	PYlN3pdC8YI.SGNij4WYQFYy5dcxJdSic5g5dg39NdNQF1jEcOCXlDy1A8gDItYGrF3rOjyxtuih
	douQtM0RpTfY4sTLdv7oPczAxGRaYQ5p3LGDey74dOFEU3540_YyY57IKmNZsVxmL27RlbFV.jVO
	qPghkPiTKWK5BJlgHsQoRQAmyfTx0XQgWt9ypHjnC2cuDuO8rrQlcgC0sr6buxUF.vNBlLbwjiiu
	XxmXyN0.9o0YPlfMiwykE0RKH5qVL60A9uCDXfkR0Lnjs0KPo_0BdcUN97BkULtchzYo5mZMT9dM
	JKnqPUmsYyDTii2MaFSea4hDU85MnwRg6V9P7HYcoDr_RjUGKvOgmDDEKu_Y7EwNHn67T48YUNc3
	_1eKorm7xKJtRiMbsGSib3_iWym03pruHLDFuscfI6ZO.XgWn8TSZme7NnnNQZGdr_KRk1sngMI_
	QMaTXfgDTO9OjgdBWpmxsRnIfhr__Qb2CzxpKUn5QvR9xfFDAqIzux2qERmrxVeQGePc_Fe6dhBJ
	mEJE9KgfyioOAzr.bEoToFZgkpZCsjAYQK8ImnFpqynjoPEWkz39z7lByAK5SAeZLYoZlnEwXChZ
	bn0yjoAHz6NtfFeSWtd75GQFoMXYt1jEvlj1k7P1s0AuE1Hx7RvVHO0tcMXCD6cMsrTY2QxAdJdo
	VJJKyESAQAek8IC4NvMaZBhwSzUTFiO2qmh_g9zPFM_vI0OdqWbkt5r9eIoHr8FGlAW_bOQMMHZZ
	U8nDVVuR.hbXRHQLX3IshsIY1KGscRuuyBwZXvVMGt7kBTY85LWJyiCKqx3HqnJfeKXDvwdce6As
	Jd_wZQ7B0s3TSOG_Zq4VSyL38tVadSzyBCRCvk9H733cmQy3mIExicI6dXa3KMIY8p1rlla7U1ob
	KPhgKpOUcpPc2G4WhIFgPNW_UPqsbv33YkAYhH3mUWHOPbZjm46AtE0x5if.fFskVKCZ49XEfQ.S
	hZhB23Rl_L_ZA4kZgi9wJQXuSo8xjxXgKA5bGhukU0lH1UvKdZefBsYBDVdpynTiU6GdmpojK.B8
	.R1_Rhqlu1CQGc6MkN4VltbiieLHopgDPE0Hr7MfQ_fVr7v_sTsuTQjlWCbw1NBQx8HlWIAMY23j
	Zsg93Lc.jmz2.kNRYICrb6qYu41vd2Ch1UxFmEffwlFlbDQsK0UUUHBnptgE5qQSExmt5CAHuLn.
	qegtr6F1Xw_SdQEzQ9Ci.6NQmb19FIa0nvnMROOORdn3FPGJugULUc5GV0_rocdF9vXfs.5YPH08
	_nTLexkrwUJbQKPRGfevpNGsUweQRUkmISebMSGc1eT8jcoDnQy_pO300niWBuwW3vDO6C2pXxQx
	t9BnOa6nCBdxCYd3eHbHtQoklj8vwyCnINv0ims6SiyjY.K_mI1QcXmm8wanYeVK1TBk84qFTImx
	LiSDR9krUw_H7hgVuQB3z1yLVrFl3t5UKSLZ1kR1._jINoEE_FzQvnTFe.xhsGkynIP7CtC43TJy
	47p3VyxPXDD1XkMLV0Mx_yiw85aQAGUsdQ5YYY0n3O1CPSqPr3yI7ANMwg_l4VnCUuN2H1k6o6Fa
	Gn.IKJMovWXuPXCiEZ7RqBKsGjXM1vF5YJmvvSJmqVm5ASKYT5zRBDd8kCKWBGGpScozUEEWHmR1
	uCeJUTvto2toswPIzQCqHO13_0LHLYAGUPT976fMFX1Bm8ix.d0Em965IP63tJc2LlzNv.z_jMJ9
	VaS2eMVIUF.gLSIkOsmuagFZuFMGhko1jw2WDaUfFTSxzEmKEh1hlc4MAR3egp75KuKP9yFp9UZy
	DwViCR9zspH0fYsymFi7Mh5uMmeP3zHhzyBO0rLsh85FTt3V2S_7y9SwCUoJ_yA80N1vaZ5DSL4W
	Cj8ZcNJX.zDjrGenbjOA95LNXFJoXIlwbs5gMF38YSH.AuzDFETXsQUaNQ0M56P_5lw--
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.gq1.yahoo.com with HTTP;
	Thu, 2 Dec 2021 18:54:13 +0000
Received: by kubenode514.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 8cda304acc5fe1b79268e440648845fb; 
	Thu, 02 Dec 2021 18:54:07 +0000 (UTC)
Message-ID: <e3083f60-6d4e-3b55-d411-bfd49eeb8d30@verizon.net>
Date: Thu, 2 Dec 2021 13:54:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: New packages available for Slint: flatpak and pipe-viewer
To: blinux-list@redhat.com
References: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
	<ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
In-Reply-To: <ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksIERpZGllci4KCgpBbSBJIHJpZ2h0IHRoYXQgSSBzaG91bGQgcHV0IHNsYXRwYWsgaW4gbXkg
c2xhcHQtZ2V0cmMgZXhjbHVkZXMgaWYgSSAKd2FudCB0byBtYWtlIHN1cmUgSSBkb24ndCBicmlu
ZyBpdCBkb3duIGR1cmluZyBhIGZ1dHVyZSB1cGdyYWRlP8KgIChJJ2QgCmJlIGxpa2VseSB0byB1
c2UgdGhlIC0taW5zdGFsbC1zZXQgc2xpbnQgYml0IGZyb20gdGltZSB0byB0aW1lLCB3aGljaCBp
cyAKd2h5IEkgYXNrLikKCgpUaGFua3MhCgpBbAoKCgpPbiAxMi8xLzIxIDE5OjQwLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhlbGxvLAo+Cj4gdG8gaW5zdGFs
bCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBpbiBTbGludCB0eXBlIGFzIHJvb3Q6Cj4gc2xhcHQt
Z2V0IC11Cj4gc2xhcHQtZ2V0IC0taW5zdGFsbC1zZXQgc2xpbnQKPgo+IFRvcCBvZiBodHRwczov
L3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL0NoYW5nZUxvZy50eHQgCj4g
YmVsb3c6Cj4KPiBJbiB0aGlzIGJhdGNoIG9mIHVwZGF0ZXMgYXJlIHByb3ZpZGVkOgo+IDEuIGZs
YXRwYWsgYW5kIGl0cyBkZXBlbmRlbmNpZXMKPiAyLiBwaXBlLXZpZXdlciBhbmQgaXRzICptYW55
KiBkZXBlbmRlbmNpZXMKPiBTdWdnZXN0ZWQgcmVhZGluZ3MgYWZ0ZXIgaW5zdGFsbGF0aW9uOgo+
IC91c3IvZG9jL2ZsYXRwYWstMS4xMi4yL1JFQURNRS5TbGludAo+IC91c3IvZG9jL2J1YmJsZXdy
YXAtMC41LjAvUkVBRE1FLlNsaW50IChmbGF0cGFrIHJlbGllcyBvbiBidWJibGV3cmFwKQo+IC91
c3IvZG9jL3BpcGUtdmlld2VyLTAuMS43L1JFQURNRS5TbGludAo+IHBpcGUgdmlld2VyIGhhcyBh
bHNvIGEgR1VJOiBndGstcGlwZS12aWV3ZXIgd2l0aCBhIG1lbnUgZW50cnkgaW4gdGhlIAo+IEF1
ZGlvIGFuZAo+IFZpZGVvIHN1Yi1tZW51IG9mIHRoZSBBcHBsaWNhdGlvbnMgbWVudS4KPgo+IENo
ZWVycywKPgo+IERpZGllcgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

