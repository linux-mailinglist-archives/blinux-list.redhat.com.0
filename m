Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3401C2F5093
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 18:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610557440;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r2mIOGQYjTVeuk/x7lPHG3kM40d/nsD83GBo9FzJb0U=;
	b=Gvnb8+Bhx4EmBjCEB2NbpbD4GWYXKisvVFTDX6CFWfhcj0PE484M9kr13FbCCsM20y+ytu
	3wvZwZS3EE4i9jIET5tR1+hosvFqtbACneCB1931l+Rj2Kw4O65MTBusnXd9kGI8cKGtbT
	TAyCfGxmWfVHrRsWuASDi5Ou/wqv44k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-V2oQ6U0gM8imwlMThJDgdQ-1; Wed, 13 Jan 2021 12:03:56 -0500
X-MC-Unique: V2oQ6U0gM8imwlMThJDgdQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B001806660;
	Wed, 13 Jan 2021 17:03:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4034060BF1;
	Wed, 13 Jan 2021 17:03:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 389701809C9F;
	Wed, 13 Jan 2021 17:03:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DH3kMI002679 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 12:03:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D00A62026D3A; Wed, 13 Jan 2021 17:03:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB07C2026D16
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 17:03:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 336F7185A7BC
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 17:03:44 +0000 (UTC)
Received: from sonic314-20.consmr.mail.ne1.yahoo.com
	(sonic314-20.consmr.mail.ne1.yahoo.com [66.163.189.146]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-505-7xmh7Lv5OeS-gHMrLetNlA-1;
	Wed, 13 Jan 2021 12:03:42 -0500
X-MC-Unique: 7xmh7Lv5OeS-gHMrLetNlA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1610557421; bh=eHBf/kYc2mlsLG08hQOXEmG0OI3F6Zr8NWLc357W4SC=;
	h=From:To:Subject:Date:From:Subject:Reply-To;
	b=ctIdqV6neu4iarPAbJ3SWfGRHPgdqmNwnFEuGr6BpFCN/nmVOkRMd/Nhv21eyCfXCJL7aR9d5WeNLxUj3j46/eQEY+2v4haPZQfMWZXe1v/NP8nBYeeviNui+WWWw0GHd6aqoTSVyxwm2OwQk7OqFfCgKlprX6kRowGYk5u9dq66Mug9auAACzGyFgxOOWEX5hoXCh+2L0ejRADnVy9Hc2mARZVB3YOTv6YIHseCAaCErNkDffXIVRKoj9S/nyh92gaTKIcVTOfMTuJBikdUqP54kj86uNEI+AKpIgcGJPnm3op+F0y1b+5J3ztNbTbp9nddlzjXx+Gc/vAImJGURA==
X-YMail-OSG: uAU60dkVM1kJ0GMkNsBMGgIPeH.4A98NTPxMqBsmluCqPoOANaFcRwuHGsJeDZx
	4wgwK8ZMhZ5arWifQHiu0QAuG..iS3q1uHF30gexWDSokjKFtMgJkVN6e4GdWCRWm.MGQYk4K8GJ
	ljMx7wa92TXZJqn300JDKn_Xd4BsPwPRA4RnvhiJ3K4Ccl3bJJ_CaWtoEiSm5Qx3maErEXetfcmp
	fAva5LVs9fFqW9tDtTdJU.2QNM4AUyl9fYOR9nlF9xOzV54c1JS2OUbCBVcAI4V3aEtg6Y0jJ7mU
	8X5CimALfoFxfPsKXmkmC75F.shTHHjalm34w4f9tmyuMHao61hl4yH1_WXltZEj_2Mpj.MTkm4b
	4l2j3x7oARxl0KQEUqm4i9UNDhFQ_5Llxzuz5hXn_xDx_vLtBTFiJBKsJmtP6zl0ASEmGEsDQSQo
	OJUCpcjqrakcBs4JUHoTrmdIEBDz72_JZuDvOkKcMVq7TjYclqO8eC5H9OhbHx5veaX13iaeMi1k
	83zS4ElpYRBTWaX7gVf4HsJmwWQiEo5lbyfjisuYQZ0p.HxmKfEidWFbDXV1opjnw8d8ONDBbm8h
	NdsnqKJ6JXP5Pe9VlXtp5kAAcYTo9WIKqFcugQLJSroJMtuhM.jiQljovkPT8IRpnpPvJq88ei2v
	nvyBJKYs4Hn8zx.i1bOaQ5NHaX8NANh.ddeAqlx7X46NKXvPKTf9giDlhJmpnZ4c89nUaACtEqx.
	Yv9Vmt.Oo28H4o29br4ojbRdcmE0arOllCOL3Yw14olmhxmCY6Z19g1v79LqOfmrQLWQ_3czd01V
	k7pjQebVfnW6o71vVc7lNMSyCHggDrscMio18J3Gy3WET4NfJZLrz4xtKU2pZ3JXuPax19meMZqD
	NKJpPi.sCIe8mIOO7sE0HYIXRnGKkZ_GboLpknQ74tLIzYeU1biD7AuvSAwKmv8KSdFXwdSlBehI
	1PS16UsJxcBp4tv_1YJowviMJQl1b9MVktCj7FSO_FweotDzX8JzHkx4vNMZUqgLtYnTRNdCIaOf
	6kDcPMgCliNfzbsOdsRJxaPQP3lHpG78HK3JH9qG4_LDjb9Pipc8e0IvSEfVGKpC_qT0PA4z1bzF
	prWWbBF5fxo36opNcs.oImltR5V.uxGXvOG.4a54KpHvaJQcRJbkhFfbPFSj6fX6hQNBDiJrxGn1
	Jocc8_bciv485YLbWFmbK_teh6pxuqjpIJJ5WygYqAWVVNPNqHnMOYinUv2fQH.Cxi4uxN4kZ3II
	95Ihfv7X0NPWKH5.jM9.ysIpe8PV7Wiznv0a_iPtrrx2x8aBpSVYDXpIRE55bsJoIn5DXyh5_5Km
	nJfnRxR1VGC6gnlso3qX8GwSo1L_HieNReUatRVrtRB_8wK3woCZB75fauJyAxMBM3sdCr0ms9qf
	kqLC_bzkz3bMC2sbtozcbw5nlMbEcVTa85TB88WerzhBXnoFJ1n2BcHOFD_nvFxZipyC7EoUX1P.
	QYXBLA3eI9vYQKEd6cVBFtMZhG2Sdz70djMBTtroLiLBa0H37vLIilZuLlaQWkf3FC4EdVKveiLL
	OfSpG.gkThzd4B5h30uWzvd4Vs0KYydioKE_tahZUEYDaenLnR5a.X6hI62JyQRx6gBspORokPe4
	cOY5gfiRX5wGYPwbx.mT22rXXl3X.cuK8TatbyIEmy2crxPazAz7Qk9fou2nfeqVQervS_7Aq9L1
	HNTT2fA57aFGmrCdKktWOO_5XVGp5LbhzBZ2xzgfwUiKUyC7C1IjwjP6hCatcZNVYZZk_CiN5kym
	zOwbSOGkaIXIBj5NzSD7E.ho0adxlPrWHjz7nUgeXC9G4WKMUMW.7hw_awfPpuPNB0KftH56yG0Y
	rb39DdB9yNI1FTxZhICKjgxPV3YAeGtEa0iJFhX1.QE3f_cOjY4hjglOCU2nuFtV_ptBy5XL1WrD
	XleN2LEYhe56qCgEb50jSpcovbCrhLmsK.23UnHz_UvxUTh1HNxkxCczQtl3vAiTaHLc_X4s4VKT
	KTLQL3e1J5SFYKDArxtdHetibv4S7XEZONNiocru_4OLcgPrkpkNdHKw44u6yNQwGVKDSmhGAvt7
	..d6jzFJRklnlLplMZ08yWvVetRTZF1EP0WJPwhA5xZtexSTVY8QVb.jVP5rk.UPV4QAKJO0nbsR
	Zh_xOkMQuHCtJUfzNv4dNaZoCoO1dxZzshrgXtQHuqS3k9YnDou9AX6Jsq.PEK7KmW19JC3lGKDZ
	NNOsKGQnDnqswnf2RyD2qP3YXXNAa7ftV0Esdzv3EfJmntFx46mGEVJ1m08M5jXUsPF140VrZ8QP
	HLHB6doH9ufLMr3VmgTA_6p5ivhc4KMxXVk.1dFVbnKVMn0hpTepedIU0A_rG54vTxzzPA.E.qWq
	QTfd1Qy6vv8Oa7G3U6cw-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic314.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 13 Jan 2021 17:03:41 +0000
Received: by smtp424.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 68c05c8a8992815d9687f324c1cc1a48; 
	Wed, 13 Jan 2021 17:03:38 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
In-Reply-To: <alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
Subject: RE: Fwd: Does anyone on here read code in braille?
Date: Wed, 13 Jan 2021 10:03:37 -0700
Message-ID: <007b01d6e9ce$0a27e5d0$1e77b170$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQG/VGDEuSP36gFZZ/cL82B2dnTYJwERKiEtAu9qvNyqNOwWoA==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DH3kMI002679
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIHN0aWxsIGxlYXJuaW5nIGJyYWlsbGUganVzdCBmb3IgdGhpcyBwdXJwb3NlLiAgSSBoYXZl
IGFuIG9sZCBQYWMgTWF0ZSA0MCBjZWxsIC4KCkFzIEknbSBzdGlsbCB3b3JraW5nIG9uIGdyYWRl
IDEgVVMsIGNhbiBhbnlvbmUgc3VnZ2VzdHMgd2hhdCBvdXRwdXQgZm9ybWF0IHdvcmtzIGJldHRl
cj8gIEkgYXNzdW1lICJjb21wdXRlciBicmFpbGxlIiBidXQgSSBhbSB3b25kZXJpbmcgaWYgY29u
dHJhY3RlZCBicmFpbGxlIHdvdWxkIGhlbHAgd2l0aCB0aGUgbG9uZ2VyIGxpbmVzIG9mIGNvZGUu
Li4gIEFueSB0aXBzIG9uIGhvdyB0byBkZXZlbG9wIGJldHRlciBicmFpbGxlIHNraWxscyB3b3Vs
ZCBiZSBhcHByZWNpYXRlZCB0b28gYXMgSSdtIHNlbGYtdGVhY2hpbmcuCgoJRGFuCgoKLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29t
IDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uClNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywgMjAy
MSA5OjQ1IEFNClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPgpTdWJqZWN0OiBSZTogRndkOiBEb2VzIGFueW9uZSBvbiBoZXJlIHJl
YWQgY29kZSBpbiBicmFpbGxlPwoKSSB1c2UgYnJhaWxsZSBleGNsdXNpdmVseSAob3IgdHJ5IHRv
IGFueXdheSkgb24gbGludXggYW5kIHdpbmRvd3MuICBJIHVzZSBlaXRoZXIgYW4gNDAgb3IgODAg
Y2VsbCBvbmUgbGluZSBkaXNwbGF5IGRlcGVuZGluZyBvbiBkZXNrIHNwYWNlLiAgWWVzIHRoZXkg
YXJlIGV4cGVuc2l2ZSBidXQgZm9yIGNvZGUgSSBmaW5kIHRoZW0gaW5kaXNwZW5zaWJsZS4gIEVz
cGVjaWFsbHkgaWYgeW91IGFyZSB3b3JraW5nIHdpdGggY29kZSB0aGF0IHVzZXMgbG90cyBvZiBz
aG9ydCBuYW1lcy4KClRvbQoKCk9uIFdlZCwgMTMgSmFuIDIwMjEsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+Cj4KPiBBc2hsZXkKPgo+IEJlZ2luIGZvcndhcmRl
ZCBtZXNzYWdlOgo+Cj4+IEZyb206IEFzaGxleSBCcmVnZXIgPGFicmVnZXJAaXZ5dGVjaC5lZHU+
Cj4+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MzU6MTkgQU0gQ1NUCj4+IFRvOiBBc2hs
ZXkgQnJlZ2VyIDxhc2hicmVnZXJAeWFob28uY29tPgo+PiBTdWJqZWN0OiBGd2Q6IERvZXMgYW55
b25lIG9uIGhlcmUgcmVhZCBjb2RlIGluIGJyYWlsbGU/Cj4+IAo+PiDvu78KPj4gCj4+IEFzaGxl
eQo+PiAKPj4gQmVnaW4gZm9yd2FyZGVkIG1lc3NhZ2U6Cj4+IAo+Pj4gRnJvbTogQXNobGV5IEJy
ZWdlciA8YWJyZWdlckBpdnl0ZWNoLmVkdT4KPj4+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQg
MTI6MjU6MTEgQU0gQ1NUCj4+PiBUbzogTGludXggPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+
PiBTdWJqZWN0OiBEb2VzIGFueW9uZSBvbiBoZXJlIHJlYWQgY29kZSBpbiBicmFpbGxlPwo+Pj4g
Cj4+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBhbnlvbmUgb24gaGVyZSByZWFkcyBj
b2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0IGxpbmUgYnkgbGluZSBvciBhcmUg
eW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBvbmNlPyBBbmQgd2hhdCBkaXNwbGF5
cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+PiAKPj4+IAo+Pj4gQXNobGV5Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

