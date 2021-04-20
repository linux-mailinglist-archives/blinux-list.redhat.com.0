Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7F88364F6B
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 02:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618878038;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=R+ucqWn0GhxpJcuS3+sZhGe+VzvgCQZ7ZWHaQCkf8Yw=;
	b=in2rm3b7ClTeCbDzodjqhxkdnQGLICXJqlcFOAQibmwaYmm3CvR2UkWupBCCh3GyMvRNV1
	9JbrdsdTgKx7mmVR6c9627nawRCsWAo7/UuQ8+1ZEme+90kg1ktaIL36Jpcz46qkNQ45ej
	SMt4FZE65z4DUoV8bLg+ujn4UbSU4KI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-rFwCuYe2PI2AWwaednEKew-1; Mon, 19 Apr 2021 20:20:35 -0400
X-MC-Unique: rFwCuYe2PI2AWwaednEKew-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D6378030A0;
	Tue, 20 Apr 2021 00:20:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1E985D755;
	Tue, 20 Apr 2021 00:20:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B5F2A1806D18;
	Tue, 20 Apr 2021 00:20:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13K0KFjo026849 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 20:20:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EED83200FA52; Tue, 20 Apr 2021 00:20:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E90942036604
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 00:20:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80040858F11
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 00:20:12 +0000 (UTC)
Received: from sonic308-10.consmr.mail.ne1.yahoo.com
	(sonic308-10.consmr.mail.ne1.yahoo.com [66.163.187.33]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-214-Wx2NChwwOc2k-1wGIX4ArQ-1;
	Mon, 19 Apr 2021 20:20:09 -0400
X-MC-Unique: Wx2NChwwOc2k-1wGIX4ArQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1618878008; bh=C/AxBggeiCrzt/Bk4folqUo9KiYm7Yp6it2oBbhEyHw=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=mWbPVr3fREOzZoDtJ3gwEtib7wnqSNu4X0PSRBXAOToGfizZWJl5F9r3Es/Ur2/5Ue8e1RD4CYD6ByukhLMTy5OgIz3rDeLpGJSdyB0r+5R6Ex8sOrw12kK2ShZn/WzYm0a++4mQCrooPTDeB6scwOTBDU+AR23X13sMDsYHRHVbG2iX50NxjolfRyzzvWd+scO4okpyKyHDL6F/nCjUPrZFJ+or9e1w2TGobJXDIprAVHgpGZh/jPh84gtxGcqMq3BROVeK+H9qu8LiALtvMdORMf0MslsJwfg5Vu5A47BCOYm4dQ0MsPjYtgizZwfQaaKzxi2L84wnyaVqG8XlFA==
X-YMail-OSG: 25q7zzEVM1kjRVa8E1d9TRl0i2YYSAH10JeQmT6xC.6KtnpZ6xkDZOouNeadZt1
	wLywjSRMe4npssBUZ3OLy5fejV2rlesVrZlcOmVYR7l..paHfHFxwtQ5OniLKpb8vjnSHyVHtnW5
	L.w.0WK_s5ah7RskCwhO9dCEGei6__H_R1ZZjGGpE492Yyv5uNpk52oE_A7AvEZV7EHh7sv1e.HQ
	WrXGc4rdXLjC1soy0kyWO..Gua2T_uo7tMw.m9jYBriHOuEkTQc5d2.q7W787lf2RRLNc6Gr7c_P
	RA7zLQGYZcvQYqGgSJVfoBukII9RTJlUug5KKMZ85AdxS4rIuI8MJy3nCBLOjJOjsqgMJLWTlbeF
	j8tau3QZ2p4lEZ5MNdwQ.rfMx4qvf05Aj4dt5Y9rnlU0UP55t2FGTX0q6AIDG0xXIxkUpjaheglc
	dMw7tWytLb3Bq2gtnW2tzW9XVrYfxHtKa4aKN_8y2EY96WEAn73sK1Q36KYURfGVF_XwZygCDQr0
	dRj9oNDbBazxxWt2PHrlOjTcwKDgValHpOFS6aUOZVdczr4ssE0whjnq9K25XNE8GeDVqakc6R.r
	M4U7v41ToBNDkFk5fktkjcfPPVEoa4F1b4y61v73Pi9rALuGmznYuTfXj.F5EVKRaS21RyuNhWOD
	fy7ngCpbc7t6ITX_EkwEhkMF9K72_62hea_R3i0P7myR6sQy.ypAO8rgI7TeOYzS_4Y6_nYTQuyw
	MjyVfVgnEDfH6lZnQ.1YrlIxfgKOlije1dVr8.m30VFMCNizAKQSVEzBNScYLPReSTT9YzDTP8xf
	4EXm1__LIKJo2M1ro3oU1zRVyd1uy.hlXmwgAP8lkmllDjHpF8DjE5yDyS9DtNH3FYt4Ox1kafgz
	m2HMvhQUiD7cQXtRHIwZHy.4ZuMrv4LftVQr7gg1L.csLFDKBnPOnmulmRWwOr6R_E6rF2gxjXiZ
	IpbhhVHbhtE2mXa0HK7Fke2wAdhgMdMZs_jPaZr4uIhO8wgI8yMRy42UxUIVMVXqdTRmV6nbYz3d
	MShCzQjqG9slsfLpVSQnZYjhCyyfI_0WmBqcSS1aoTlQbdpVBAd78nNwwzPBYKV7YHM10ZctU7ke
	b.ci7EkLbE8ZvpwemthFmEoNvx1Uri8RoMsrKX0rBaNa8xUliI8VXc9zFDyejnG.YhofFesWidQa
	dOJHJWFsaOQFZzD_q_IPwBmJJeyIJRQqiVidzicUXvzVkz7AaLVUqHfoDyHhAe3OKdv5RH2L2jzY
	zBhRKojcNHxg8HPHeyOy_uDVTrTbWOfixSM8OYhSNagJem5BxEKU4xARNJJ4RLurMaFo.A9TmwUj
	MZKe.9TaooHs9tABtqNrVERP3eYF1NUwUZT6HxX4x5o3JQHMjuInlKNKMBbUUmP8E_pTtV85ipj1
	ZRgvDc3E4SdQo449RZ8EKHhVHBEKG4AhI7_GRY9_dsbE_2LpKjnZ2QyJ20SCyzZPWOikyhECpX.3
	opbCNjuBYIF3zZjpV3RYdnHTH63M3cNjqHkSOHxMUnNIFoncXVp3hceaTpJi.V0S_Pt1q505VSko
	Fj.YjqVWc4Ql6gOFAA8GoQuBEXVst2zJuTMm22TeUIGrqJhitEAU4Ep.IDhW0nsun7Djtox5NPEg
	CsCnaHSlFHDZQiQ8yAXzrLd4Z3QSwcI7ekDG60Xh4GRI5Ijt.TvbMBQUfKNk5DWivzWSYL2pbP74
	_mZUFv4.IPKn6bBflvz9nHjxyZiQikFFQrSYyADu6n7d0irk0ZhkoAOKaS6QByeabTrGSsdec.zx
	00sMf9yfDQLoE6F2SqPbcZTn3n4pH.0lzP5Ko2O0eY7oObRKy.hsMlHMR4pzxIjDFhtCg18dYGiz
	YLHEFPKN2tHrZoWJGntJRKRwmH6NuLSKGHa9jUEKgWB2PD9YYykxP2nUigQgGn9VD4ZB1_h950GK
	vv.fWGdSlOIcAV7UNZGpJjbmfyaNjfp51aqaQEvMs5wS7PzjYj4kqT3XfFgC8sHxgOAPmeHA4.Js
	WqFcKL7YjoAMDaItT.Dz5NBL3PUHFGwRd6Ym5db4J_Bv1MsmnbrU4z8fihht..oW09N3bsW44b2m
	b8CY_uggk.A_3DkjgQlKw5scz2BugnNPUkFnyQuRF.1DWZ6bYICfMzJ6gcg4r4zQXfWjwtjQV5vm
	LOMIqNGN6jASyhudEIuoMhukmK0IJUaL.Unx9OmJOuBvGlxH.Wo1Ss_icmv0ntZk3fHxFQ9HHJJ8
	bZJv6l7r7aqJXNqYIYS5zdqN5CBPa9gSqtLPw5N5p3jAvJ3tyK8C3vv2t52O4DaIpxUJ.oKBq.Fr
	D3SJrWV5T_28N9pCbu792iJelJ1r4HyaUmhBs5HSqhLTTeimpoj90UDhWSCZq_1CsXKjh_fMd
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 20 Apr 2021 00:20:08 +0000
Received: by kubenode516.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 0a87478eac706c35bc143cbb88660629; 
	Tue, 20 Apr 2021 00:20:05 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 20:19:58 -0400
Subject: How to navigate - how to flat review
Message-Id: <9229A40C-ECEB-4115-A86B-072313A6C0A6@yahoo.com>
To: blinux-list@redhat.com
References: <9229A40C-ECEB-4115-A86B-072313A6C0A6.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgoxLiBJcyB0aGVyZSBhIGNvbW1hbmQgdG8gaGF2ZSBvcmNhIHJlcGVhdCB0aGUgbGFzdCBs
aW5lIHRoYXQgaXQgc2FpZCBhbGxvd2VkPwoyLiBIb3cgY2FuIEkgZWFzaWx5IG5hdmlnYXRlIHRo
ZSBvdXRwdXQgZnJvbSB0ZXJtaW5hbCB3aXRoIG9yY2E/CgrigJwKMy4gU2ltaWxhciB0byBhYm92
ZSwgYnV0IHNheSB0aGF0IHlvdSBhcmVTaW1pbGFyIHRvIGFib3ZlLCBidXQgc2F5IHRoYXQgeW91
IGFyZSBuYXZpZ2F0aW5nIGp1c3Qgc29tZXdoZXJlIGluIHNldHRpbmdzIGZvciBleGFtcGxlLiBJ
cyBpdCBwb3NzaWJsZSB0byBuYXZpZ2F0ZSAgbW9yZSBncmFudWxhciBhbmQgZ28gdGhyb3VnaCBh
IGxpbmUgb3IgcGFyYWdyYXBoIGJ5IGVhY2ggd29yZCBvciBsaW5lIGluc3RlYWQgb2YganVzdCBk
b2luZyBzaGlmdCB0YWIgdG8gZ28gYmFjayBhbmQgdGFiIHRvIGdvIGZvcndhcmQgYWdhaW4gdG8g
cmVhZCBjdXJyZW50IGxpbmU/IAoKCuKAnCBOZXZlciBiZW5kIHlvdXIgaGVhZC4gQWx3YXlzIGhv
bGQgaXQgaGlnaC4gTG9vayB0aGUgd29ybGQgc3RyYWlnaHQgaW4gdGhlIGV5ZS7igJ0gCn4gSGVs
ZW4gS2VsbGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

