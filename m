Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 770594AB130
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 19:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644171379;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AhPymi+rK3B4nU6eqHoqvFAMkySlg9/eKCPk0GVDFJA=;
	b=YZ4KcleoOMXbo3hX7nlE87QEykta+tb7oNUxMUGbh0GedXohCaythrjd5Q1EBhIcgGOKH/
	D6kYRTuPqmzNWgWuan0FKj295yq0lyVzvUY5ntzNfEPrBFqhhBO9ZVldOyR3UnhNuoblOe
	hx4+UwkjUb9LJW5vZBf/GOKY0k7NhGM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-NLCilGCJOZGl5N5ZODCStw-1; Sun, 06 Feb 2022 13:16:16 -0500
X-MC-Unique: NLCilGCJOZGl5N5ZODCStw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D002801B30;
	Sun,  6 Feb 2022 18:16:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4002745313;
	Sun,  6 Feb 2022 18:16:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15D101809CB8;
	Sun,  6 Feb 2022 18:16:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216IG1Wq026947 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 13:16:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 558BC112131E; Sun,  6 Feb 2022 18:16:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50B931121314
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 18:15:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66CD9380670D
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 18:15:58 +0000 (UTC)
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
	(sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-611-QFMue3KCOwqgkoDA6dfdKQ-1; Sun, 06 Feb 2022 13:15:56 -0500
X-MC-Unique: QFMue3KCOwqgkoDA6dfdKQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1644171356; bh=5Gd0wIkf3kJRM4R38xo4OMV+mv4M3WDBwTEGh9vi2m0=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=nrrWBe5Sz58ASsmYpe8J2aK303wsHHvpqPGtpS0N0OLOt8yiWI9H8i/StmGpD4kUIgx4T/FKy/IgqWiro6wrPpJOtUygpZW9i+X5PecYtvUiBxzrLKXHbHuLm6hm0s9dDnNg5PglLwGCx7YK3BWwn1K0AoFT30G/jENMm1uFb5oTX+baDzuMVbVQ5zq7i1NGRQkGco65SlhYrDkokmxoKKclg89n98PxMAxY8EmQYNz9QBF5o4q+OHrOjIfvDukyw/MkPghGAD1Ow7HBBsbCd93EyJLRQXcoHEzdAc4Pxkn4WXr6VC1O5Ce1HIeh2Z4wTMcxS7GsLVxWiDj1sRBIBg==
X-YMail-OSG: nWQ4DX0VM1kUGc4ygpzdWV.ObRGE75RJ4L5jbwma.L8trw2fApRUpp7YuOVTFcw
	N4V5oFihc_n2FvzJAf66S3lvXcv5oi2XzQzfwIrViOCqMa4O8fQAQ4dq5uS288iAr5piJu7ow4kq
	PpoU9dySgVCu7cujzsGBBhMuZobDvNcKQHXDkuFzNLyscI3o6BMiZIIQlB38EPd9pPUzuR7tR3wN
	0LTC1jLAaChjVysTPRVxo49ra0XeYziWyPE2QAzLOrLbhzaDYWgotxsc1Y0GDHLxe2DQRldVzhn0
	ZKozVyHPiAZsiXmDEtoy79AfStmBqj..nhNsgcqXOI4qhPCrokkIZvy17EfWKtLAlQk1S63jjjPO
	.2_P3DlMxh8wLsvV4cZOIbA1GBzNbSZSnHZNtoLzH47AxYuQWSBetkS36.TFQkWVodauFeGw.oEi
	uV2HVfUhh7V2B8D6xx7SKXXEFBRRjbq6SuJw8K7vSweUgBLW5b0XDuFbvtR65_Gw6V0rDynTO366
	LkXCTSRNgCCEzT0jl3My4GC7s7E_G8xupuJ_ABdrw4_PY.ykJKLi8SMVt13b90j3KpGb2Cq4_zGt
	T1et2VCCs5HN5sJo3f2dK.l7G0oAmGmXLWJrIBm6isrVT4Sk1qjadv_dymHMWJju1aM1hJdfzblz
	lGehz1H8InNKS4JleS6_JTtI51QPaNbBkTjkX_.pWa4uHGBXHTGbiPU8GgNQirqma4Dn8mjZAOV8
	2FfF0W6L2Cep3ZZvjVa7GnO19isfVYhFy83rOrpIThX1n1kX3IrPHLMRX9gaiBII_74PB_QoqCM1
	YRY7.nQ2YQCGQTj_9BPoguVJ7Y_ZYRN4oW_Xf.T_Qea0oJRKfzds9357IIZvqCq9e_VCNPXMjY3K
	i09rCEox9pbtKpcWlPFlBcg6mtpsFwhczQL5oQmpD2Pw7Y7RsbxSIeWHqNPaeaeT9HgG5KFznbei
	8Axly9LZYW8WXn535uyau7NA_e34ZZSqEe1xC9aVBD85hd86jB7K04CZbcZgbyVJ6ntlBebE3pan
	s_kdFy76QCE1G3loCZcA0EsxUUIULnzZw2AYPtIcYOs3fyyPg.1k0lneGFLm_x5QPS8XfdUYmSoX
	.xc01icrjokGsKQmddeyL5_wMppSWUwqAI_w4.rHVsNFz92LCr5QfTbpBYF2XIUr9zkdvIj4Mqi.
	TnGgwVbzrRiS5eJ9WP9lv4F53r9mfE.Pr8zkzDfAkhTvIdxv4DrJwJFogQuRH35d8gmSIu5rqYQk
	85znbTFKsKEabQlgR0SLYflw.hw1QUTu1LuJuBBEi4pgaQK_Bp90NTn67kVPIwG9oHa11HewwnMQ
	_PKA5hqGzA.gfUq1MFcjWr42n4kBDAstEOLP0tk0NeE4s7H0szLP_RRSYxStadZHsnZfwN0_K45y
	hbqMRjNUOLZD7Tbb8fkbY1bPAXH5RQCetA8ulJzUkkgaOkuzZMY2xxFEM2voFv.PCFIoISxvZL1I
	JKGaEuxOqLSKUdBq.BCKGrixTcOxlc_vPL9AzEZVhxm0d_0s78Sa2apT4zfFjM20pgCN2stpCy7a
	w.tfZtIxSKh7PqSZhdXQODvF4bEryCf9lBJ0jCPRknFatY.Gq9LZBYmkSZSMSWRWeMgY0V4pES43
	mcY5ZZVlfFXvbJSshp8n3y0pNF4mXspG3oKfRhfVSCV1576dR.tmpkPn7LL33ojBtsoWYMV7fw_p
	v6NKqCj8dKHFB.Lh58Lyn8VKllFoHo3JNyY1k6Fd8KnBK_YrSLPNPhC8kzKbcKZ9HiT5dTFFHrzr
	C2MoigxDhlZiLMnAfKwOobPl28WbVrxsj3roZFRdnOg4473N0e.d.U_w21knmnvtgTGVcbJ.O5UE
	zwGr6IvdWMAJXbhlbnxX61UBUzndcUn5jJF6730Urkzc6UDY0RwcBFuWR61xxFIySKm14kCL07wR
	PiOdqq6uNBnuPyZwGF7RYvHRr8.B1JBxDy7BZI_x9DU4gMPYbDMHz_Oiy2gW4oG674slB2w5_mN6
	iInR2Sd9_MqwRcwScsZM9NjDj7cO2K5CbcEtzWezA0qI8_yuSRZ3Vy74zjFWaPHALnpcO9gFdFs.
	RDI3obfkmf_tyteWi1tQOoS7y1A54G8CQIxjKveCbvZ2Sc_JEkQvW2aJNuKdT4GloIpRIfamH3cv
	lGjuKiYh_0g5FbyAi.d5UknondMLnqFjkuIdkgw_FeO5VhdX3d1ERAo9.RWiLpIlcKdHTjP09a8t
	zCo5v2hVPig6O3vAWnqZUDGbB_8VvQYgUs_Sgh77RL_kiIo37q_y4r35iHQ--
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 6 Feb 2022 18:15:56 +0000
Received: by kubenode522.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 68e512fa385c077726f91b6a918cd7e1; 
	Sun, 06 Feb 2022 18:15:51 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
Date: Sun, 6 Feb 2022 13:15:48 -0500
Message-Id: <F20D19EC-9AE1-436D-ACE7-747CB9C7453B@yahoo.com>
References: <20220206175340.qp4k4pd6k4dvvw6l@alex-pc>
In-Reply-To: <20220206175340.qp4k4pd6k4dvvw6l@alex-pc>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 216IG1Wq026947
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgODAgY2VsIGJyYWlsbGUgZGlzcGxheSBoYXMgbm8gbW90aXZlIGlucHV0LiBJdCBpcyBleGNs
dXNpdmVseSBkZXNpZ25lZCBmb3IgcmVhZGluZyBvdGhlciB0aGFuIHBvc2l0aW9uaW5nIHRoZSBj
dXJzb3IuCgpBc2hsZXkgQnJlZ2VyCgo+IE9uIEZlYiA2LCAyMDIyLCBhdCAxMjo1NCBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gCj4g77u/T24gU3VuLCBGZWIgMDYsIDIwMjIgYXQgMTI6NDM6MjNQTSAtMDUwMCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGkgZ3V5cywKPj4g
U3ViamVjdCBwcmV0dHkgbXVjaCBzYXlzIGl0IGFsbC4gSSB3YXMgIHdvbmRlcmluZyBpZiBhbnlv
bmUga25vd3MgaG93IHRvIHN3aXRjaCBhICBIdW1hbndhcmUgQnJhaWxsaWFudCBiIDgwIHRvIGNv
bnRyYWN0ZWQgIGJyYWlsbGUgb24gdGhlIExpbnV4IHRlcm1pbmFsPyBJIGtub3cgd2l0aCB0aGUg
IGNvbW1hbmQga2V5cyB5b3UgY2FuIGRvIGEgbGV0dGVyIEcgd2hpY2ggIHdpbGwgdG9nZ2xlIGl0
IGludG8gZ3JhZGUgMi4gSeKAmW0ganVzdCBub3Qgc3VyZSAgaG93IHRvIGtlZXAgaXQgc2V0IHRo
YXQgd2F5Lgo+PiBBbnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgo+PiBUaGFu
ayB5b3UsCj4gCj4gdHJ5IHVzaW5nIHByZWZlcmVuY2UgbWVudS4geW91IGNhbiB1c3VhbGx5IG9w
ZW4gaXQgYnkgcHJlc3NpbmcKPiBzcGMrZG90czEyMzQgcCBjb3JkLiBvciBsb29rIGluIGhlbHAg
bWVudSBob3cgdG8gZG8gdGhhdC4KPiAKPj4gQXNobGV5IEJyZWdlcgo+PiAKPiAKPiAtLSAKPiBT
aW5jZXJlbHksIEFsZXhhbmRlcgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

