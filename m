Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7283364A04
	for <lists+blinux-list@lfdr.de>; Mon, 19 Apr 2021 20:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618857791;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=wC/XAceGiqg0/mAwduBHz9BA0WgEnJOVVtwAXb1xwCk=;
	b=hl9T8T893Al3CZwthenV3kcJHHsMIWDOBfj/ZUckmNSfPOaA040Qom3Hv6y5FoUYi1sz9v
	AJ89ShcHGo8gi6oNC8Gg0C62U6Kde2irmYlkNQVIIw3dztikCRdQPGx8YK03u8elN/CZIb
	EA3D6U0Hud+Ncw9+TPBZFNVr+WTBHVw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-i4X4bPUuMletscV92s394g-1; Mon, 19 Apr 2021 14:43:08 -0400
X-MC-Unique: i4X4bPUuMletscV92s394g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 313F919251A1;
	Mon, 19 Apr 2021 18:43:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C11CD5C1CF;
	Mon, 19 Apr 2021 18:43:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C57911809C82;
	Mon, 19 Apr 2021 18:42:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13JIebNX030005 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 14:40:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27E73637A2; Mon, 19 Apr 2021 18:40:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 225D763AAF
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 18:40:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F86785A5BA
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 18:40:31 +0000 (UTC)
Received: from sonic313-9.consmr.mail.ne1.yahoo.com
	(sonic313-9.consmr.mail.ne1.yahoo.com [66.163.185.32]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-569-HCuLZG0LNmaxmEfu3h_B7Q-1;
	Mon, 19 Apr 2021 14:40:28 -0400
X-MC-Unique: HCuLZG0LNmaxmEfu3h_B7Q-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1618857627; bh=LKp6n0x140fs5tGrlStDdCoD1uHbB8FZHnsZ9WYRRRR=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=XLMoDVGJOry/NSRttE5e++rWMOQ0wpbiUt4wM+mlsAalwyYgsgMkzr5VV3MTbbRMiM6YUEHqzuO3XOShweKPPz62MON8seRw7LDrsAQpz6Xm3WZgJ7qjlJRSbyb8NXuIS1TObiu4c/U0gGmPj6MgsAq+uXwLnyg2RI2NiPAxnz6OD4tgQBQWyxyQb1KZMN399W3tPYzGQRv6KY5ILfR6z8BNoihLoMnRtfkpkeCog3oxEMqNs7UQkaPVCzvioId9rLPp+xFU8YQhxHhPjFELgVQgq7AkKmxVI/ah4woLdp0dXB1ATvBaZytpKyIj1lsK3TfQmUxHNG5s6oglxY+vyA==
X-YMail-OSG: ugBvlZUVM1l9YqNdm0XDFtiEcxOesOWmr3pUNfBiH0LIQrRhumF2_Nw6lxfdmJe
	0HVq0m.NM.gURsQgFE2h9FBIsEu9Ef7tvobP9jCEjqg1X2LjcqgbgGokd6J_BgWEp3bngiYRPF6q
	hyXdoOkAw8ATbrJLIhUGXFLje2EnLy7ysD.qpFzoR5LZNXcE8kQ0_VSOigblHrVioNJ.rqsdB7Gq
	U7oHBzdTx9KpX_J5kLCDHTefNIihj2UQ_tmT6zCsBSVsxZDMN9fv1dyU8Wmwp47JTlxOs9WG9W6g
	MKO08uirsluClB6j745gwWGxnYo9xJgl4.4fYxx00S4yz3fMd2pY_xLpSrG6LSx3jylc8uXlv1M5
	h_rhosyhDasVOJ.cIjulSFGfeLXIutWjBIJPIN.jz5P0mz7KX.W4ttgKKFienXOW.vf1b8GOGd.r
	6zxBwFMkHR1gC_1z_0DQGLkpcT3eHR_s0.WlgqP0dZqkRBuFddaugByw8Zv658ZLSruRw4ialMse
	nofxV7CmNwFeeGYDqARzBzdXdrIy.D0YE4.2S6rW91mW_VYaDYW0gF4m_dcPeViqIBJLkb9v83yp
	9WnnykDQkLIvGJSG3uzKcdJTk6VY9oD4s1anweJQnOWkGeemZnfwe5CAdfwOMfGhKjKoRNrj75dY
	byzMk0mt5QLUqYm1x7md.qcfYudb1UWy6c4tcZV.TnNrmNI1CEB45HeENkKUg67hrnkJLq.jHMRw
	yZraqI9OI0FqKdMtXHby0Uml1bFt_mh3HmJDUjfrE.rf0sdM20nHYtHn.q91aznKxqMiXAopNXC0
	yTqlYd4RqGyrBhBtjPcsQq6lwYoJ0JsrTDZv53DwXbzyInC1ZSz1n7z3R1eIgepo2gI0DyCp1ap4
	uaQeYgiga63P8aMSAo4bqSE0GvsMRhh8OFwphIsVMPmMpE_GCQcMSPjbuoWjLmhut6KYosKTVTDS
	EZQX.PJDau6cimJ_9XWR8eIkbjUHXiXUW1a_gXGpzA2ulMCbi13T43kSTG.hBmcDxCGzb4aiMiab
	l5f8oxcFvw5sZZX9VX2B.bXo4Zxfd.92d2jWsJgZ64vHQPzn.NoZLDuDRygFyOjMRoPlpf3iJ5gg
	2N4sF31GASy2f5oqzWR8u5DS0KazCneihjF4ObgHs4xUZ8H.UqOPaTQ2LLHLbzhMzSdXD7bf4m0g
	8gmd3Xjbx0eBNZovB4lijQKctZHYHeBu9L7b00rLTlRI3FPt6KEVqIPTj0tO6_eJxrqjhUx0njG9
	mbsO3URrNO.as7jtwIj4irl9BbqLhlM4LoWpaTXCf9UZnZgqzkw6vLi0h6mY4HXze1etzN8h1p9D
	n5KAN4oiyKw7B359alx2D9XA4uZJSOxptcrKZ9LBge0tFfXqQt4fY2s.ndLWMJ6ejVP9aYlFiLZR
	aKaDhVSRP6m8na3vmRwTBMbMpuOWQwjeCsqWiM08lsIaNZAcIuljMNNtjYtLsHJhPd9SOJsz_Ogo
	QQCwmuc2niGWzLlr48H64UmS4jQEIYgGG0k1nkZkyaj5bvVgKrVxtejwnDI7r48hY.dU0LCyH2OK
	AoJj8HNMqqoZmHyNJTsQ6hhgj.g_.ehZXmHgApNYhfahTWNVI914nmcinBcvMdrKiC6DSX2bBhDa
	yKuCda7xF1LGwUgF00TfUuxR9eKhi1My53fceGO9LeXlcSrBS6M8yzXh6vVdj7TBLGOZYlRNQA3r
	sQX9G.k1gV1Czpo2XPeGd.yYbo.OSCwnmn7YnSLbL7y7DHd3YLuu1XWlrWOmCGmTsA6f2tSbfCZM
	hbUk9ruAuPqAOfXUOF5lQmmNMRSdOkCiponaPe_NViE5Q9Kthi79GD49bHMfD26kPaCc6Y8aL.d5
	GXBhwfjYZYbH9KSoHn2FkSdKUQCpCaHh5fs_FMH7.vYu7pOEXdbHi0XogMpAC2zMPZWF6JOu7tEJ
	dQhWAusjVFbEpg8Ss3Vev6l2JPxLjS52gN_thEaQrU4D_Z_0KXHeSlRg6KsBHbNz1anSJGgT9Cn7
	FoQaHVhRzy5E4CsSN50ufD0IzXBCt4RtgmISyvoQZw5KQS2NY5JA1ZwH9.RFOC1ZSh2c49bPaZM9
	6gVRk9JiHlMYHNqU_ms7xiQErONGQVPUrxTiVA2hUDobpdt4i2IfkGau4ndzD5MuuRiL5SRTpP9T
	kyFxf.4kMs8aeDy8OixroPeVUx8qplKSJNCp3j5tAl.xVuHnXqgSl27RA3zo9i_lR780KLnxht6s
	N_1u4hGmq_Sz4xl7gMiHjwgoNoWL8Hh9751H0u.x8oHwFXNg9tosuvviJObUJkiF8KQSZPpBFnZH
	1R4MMi1KwyWA1XPE48mMjCs2aIm54we64DPb02WQ.tKm.DwZNWTAuma49P9e7X6Y-
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.ne1.yahoo.com with HTTP;
	Mon, 19 Apr 2021 18:40:27 +0000
Received: by kubenode567.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 5176bc7e5e826e28e1e3458e29a8dd30; 
	Mon, 19 Apr 2021 18:40:23 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 14:40:14 -0400
Subject: speech-dispatcher and espeak
Message-Id: <FE0D78A0-1A64-476D-ADEB-B54DED7B74BB@yahoo.com>
To: blinux-list@redhat.com
References: <FE0D78A0-1A64-476D-ADEB-B54DED7B74BB.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGEgZnJlc2ggaW5zdGFsbCBvZiBVYnVudHUgcnVubmluZyBtYXRlLiBJIGFtIHVzaW5n
IG9yY2EgYW5kIGV2ZXJ5dGhpbmcgYXBwZWFycyB0byBiZSB3b3JraW5nLiBXaGF0IGV4YWN0bHkg
aXMgdGhlIHJlYXNvbiB0byBpbnN0YWxsIHNwZWVjaC1kaXNwYXRjaGVyIGFuZCBlc3BlYWsgIHRv
bz8KCgrigJwgTmV2ZXIgYmVuZCB5b3VyIGhlYWQuIEFsd2F5cyBob2xkIGl0IGhpZ2guIExvb2sg
dGhlIHdvcmxkIHN0cmFpZ2h0IGluIHRoZSBleWUu4oCdIAp+IEhlbGVuIEtlbGxlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

