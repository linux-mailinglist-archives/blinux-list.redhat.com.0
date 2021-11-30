Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8CE462E54
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 09:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638260153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QScoUXO4LxOTS0O/6J3jHUXWsnAgPwL7Ys53ESy8cTw=;
	b=fGacccoMYzNTOiw5GSHeU5XYJp0Q0nRFxnb3VihHP/qB0ySUuP8oAWYD3pCAzZHDv63L+c
	lM0jwHvrMh3pKCoyfk8EjnHVIYesI8KA2VxvIJbkFrAzAjBjbGeQBKehc6BpxtWdVzp7Xs
	/LsMvRxWgAP3a5iPyO+mpnm/uph6TGs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-461-Dgbx2WZ3PcWGKKUCApYdLA-1; Tue, 30 Nov 2021 03:15:50 -0500
X-MC-Unique: Dgbx2WZ3PcWGKKUCApYdLA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8919C18C8C04;
	Tue, 30 Nov 2021 08:15:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC4DD7621D;
	Tue, 30 Nov 2021 08:15:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C14BA4BB7B;
	Tue, 30 Nov 2021 08:15:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU8FSqx023320 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 03:15:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8BFAB492C3B; Tue, 30 Nov 2021 08:15:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 876EE492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 08:15:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2288480122B
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 08:15:28 +0000 (UTC)
Received: from sonic316-13.consmr.mail.bf2.yahoo.com
	(sonic316-13.consmr.mail.bf2.yahoo.com [74.6.130.123]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-170-LDRdENf0ONu7-Q1b3uNa0g-1; Tue, 30 Nov 2021 03:15:26 -0500
X-MC-Unique: LDRdENf0ONu7-Q1b3uNa0g-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1638260125; bh=KhOnLeD2tW9iObZbpqT1mXXpJqamWn9YRql/s7mxz3Q=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=m1H8scuIBbS2jnZVyHw6rWt/yeS1YyXwSqB5WAejnAtpHX7o8uKgTWwqtNqXihwn+kBVc9AstNlKIqQK//ex5+2TSK9as7wcVjwVt3C2IbCxEg20fmfVVpLz8YOJ4ULYqj6LhfiLgNC43rN/KSdKLZXNm+orq8oO6dbN8aobj0JRM8CkXMg6Wtxrq31tq4t57bzrCbaiJfAdFqUCstn6FHIxUO+l7pXdbzFfLBEk1XRRVX3MUh+aekwT2c8kn5ZLMQdyBfKFGm1iHkM7IpwVa6DCX2omcdjPIwNrK1af8vzGAKL+LzmPe+PacnjnjHslPWhv89t74PzFOvTwOosO/Q==
X-YMail-OSG: Ls5TIsEVM1kHymauoh7NlJhj_GmRPh1ysljrj3fW917SWOxbEMlTnXqwGfLbsoh
	FfCqFan35G8ymuFpobkHcXnkkjX0cZUuuIbzlOv3wCjL1EDShNaJj5N3Sbz24cyn6iNvClfSevI2
	PDIufgDrF.8fucGtCB62OIAoZ.bL0rqWam8d7XoP2XGXArPi0J0.qPTBXRax0cLbBtmCzkFrmfud
	g22Hg4TYNqPtHebjZ.oyDPhgCQ5XyQyOrd5WtkSpyaoaY8unlf1QfZGDJJv.0Ng0z9sCMZtoQRTQ
	j0m_SBUFcyARDhcW630iPErMbVkscDKqnDR3vBo9_EY4txT6rxAS8oHYYwXKbwAwv9ghIapFVuW7
	omzle_4N_1UHY7m5y9nEHblhr2FI616QYJ0p9vNf2Gd3TjBXAF7e7OKNJKh.fAGPglCefhsVyRvh
	kkD7Pek6rYU017kccxDQABrz5A7BkA_8S2bRLVNVmh_c.g8Px_lZPMx_RAenxaskf9dlSS9_T.Z.
	3i1fgqIYJoBtYg3yoQiE._9FPQEsf7ap2s5B83geqjOP9A8sC_2rn.G6Sj4vTH9lxh8BMMFtz_GP
	DaI2Cuctvm9qBFpclWV0meX6xYLjwWBW.g8EhiA5Qo7mOgsXgpEQcYU07GAO4kYG6mPRuOVt58Kq
	X_c9weyNjfjYKq8VUNT7oHMYJjpDRyeAR8D24a7K.ESpK.D4YiXGdo84Pis1aKHYrKGUMpt1WLcS
	pE2sUIhUAGjD3gqgKkpJrB2qVqxrQQV7.UeOjMmQu3oWzU5ShukDJelfVJ0uWTtnrhzSuYxw.F59
	W4nGg7qaTBQe3RGKoI3V_yeOO7Zlk5mbjpACYCKCAr._iR6fSS2Zz4qlZGrlemRG4gYlYgz7qK08
	o1CbDlymRPi83EII8hQLHb3rkI5PDmtZKVuWN3XjQzdwljQE4qwpDiNTDbMMlu5UD0nMcKbLHpcf
	BOek7T_BzMxJHi152Bzu7Y4tACFCNL.lhh9RDkCOEKQPzo6.BfXI2Qb1Iy1zio7ls.cpaqzp8PHq
	LnXD09SbEiaQ3dwqnY9sb.PD9gtg9WjWXR6E6EYgl3j69CBkt78bYaIeM_uuE1a.P_hHyWqILWKM
	y4qxFyqLwBSL11QxNQkiCpi6.CN9ICuV3kCM9W6Z54xYtKZVHB1lXICkepNnDns7zcWGsThlWFF5
	aVjhy8IYsDH65ahMPDRnLaODF.mCRqmFMcHZM2K54Zxm4orRg17irvHEwcDOJczpXYffgR2DwnV8
	lCd9mTRq2N7CZ7o8QQP_o4Hspp0PVdyvjvogEWtS53VUPlQwquaqODmpPmnYCFuaoTLTjo6KvtTW
	wge3Xr7ahf.JskIDyQjPX.gCE0CmjtchuP3sQGRbh2WyUUFYNFUxoERTHSC31ItfBzjdJ4oQejEn
	bMgnvXTZh8wAZaAwAAX5..xJUDM1zX559_jmO54p3tRggvI3AzpqZCRGg.lBHO93j3YsMdwZ3m3D
	FPGxNbRp6j5Z8TUmZ2pf7XfYDOPoEEozG1v6n_vxSNq9Z1jnvugQ36BgIMTWLyM0R3eedii6D7iK
	wooMeF.nBPZQaDVjLFfBV86ES_8kMBQKuatsshzZkivBn_szZBSDjYmJ.Q5WCexsUh3FAcySgqEr
	FaQh0RqGdbDqYWl1ffs4rFwvzs14mNeyvkHjOcrk8VOynTOlGUrRT4lBTRaPXuBf0HCZS9au4n3F
	HjZ5oasHNUwmTzKjIUYy0EsTlKTFTpzWWhyUEmSI7Lo67yOSB_eMHNIgqp3TJMWV5hYMGTkciBI1
	DWyE6qtjrvZ0EKlCCIOBqMnYm9nq00uq72PV..ZsJfIKf_X31eo9ZMjAiXqpFfZtl6lOUhH3toiU
	VmpVsfhXOw52Oi1kNqdn9XFu6qs1p.xu30A49xRp0hxsDVUyztQFvaNpSVCycNYDjmqsXav2U9kl
	3TNFHCdpMGRxhw7Jt7Ua4y2IBk65Zhrr.ABTKpel.ImDadBjD3lMiyEA0hZLdtfySJnLWFDkm0LI
	d2bkqv.DwKThVXOZpPtRBz9EZwERMoRSivEY3qJYIbEJaRajEr_vud3f1KA4OPsQwWxUjOOfKOe.
	AM38_pQPBjwY1ptGCAqTmgAL7Bya8JTP0EE4htwgevoeaVYYvlqYr3_bH4rYSxg--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 30 Nov 2021 08:15:25 +0000
Received: by kubenode523.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 5f2b233d602fc1c1cec0c4fa246819b1; 
	Tue, 30 Nov 2021 08:15:23 +0000 (UTC)
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
User-agent: mu4e 1.0; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?
In-reply-to: <7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
Date: Tue, 30 Nov 2021 10:14:00 +0200
Message-ID: <87bl22kqlz.fsf@brainpower.wer>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AU8FSqx023320
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

ClRoYW5rcyBEaWRpZXIgZm9yIEZsYXRwYWsgYWRkaXRpb24gdG8gc2xpbnQuIEFmdGVyIHJlYWRp
bmcgdGhlIAphcnRpY2xlCnlvdSByZWZlcnJlZCB0bywgbXkgb3BpbmlvbiBvZiBGbGF0cGFrIGRp
ZCBub3QgY2hhbmdlOiB3aGlsZSB0aGUgCmF1dGhvcgpjb21wbGFpbnMgYWJvdXQgZGlzayBzcGFj
ZSBldGMsIEkgdGhpbmsgZXZlcnkgcGFja2FnZSBtYW5hZ2VtZW50CnN5c3RlbS0td2hldGhlciBv
biBMaW51eCBvciB3aGljaGV2ZXIgT1MtLWhhcyBpdHMgb3duIHNldGFiYWNrcyAKanVzdCBhcwpp
dHMgb3duIHN0cmVuZ3Rocy4gVGhlIGFwcGVhbCBvZiBGbGF0cGFrIGZvciBtZSBpcyB0aGUgYWJp
bGl0eSB0byAKcnVuCnVwZGF0ZXMgaWYgeW91ciBkaXN0cm8gaGFzIG5vdCB5ZXQgdXBkYXRlZC4g
QXMgZm9yIG1lLCBTbGludCBpcyBteSAKZXZlcnkKZGF5IHBsYXRmb3JtIGF0IGhvbWUgb3Igd29y
aywgYnV0IHRoZXJlIGFyZSBzb21lIGFwcGxpY2F0aW9ucyB0aGF0IApJCmhhdmUgZmFpbGVkIHRv
IHJ1biBiZWNhdXNlIGRyaXZlcnMgZm9yIFNsYWNrd2FyZSBhcmUgZWl0aGVyIApvdXRkYXRlZCBv
cgpub3QgZm91bmQuIFNvIEZsYXRwYWsgSGFzIG1hbmFnZWQgdG8gcmVzb2x2ZSBzb21lIG9mIG15
IHBlcnNvbmFsIAp3b3JyaWVzCmZvciB0aGUgcGFzdCBzZXZlbiBtb250aHMgb3Igc28uIEkganVz
dCBiZWxpZXZlIHRoYXQgc29tZW9uZSdzIApwb2lzb24KbWlnaHQgYmUgbXkgb3duIHJlbWVkeTog
aXRzIGEgY29sb3VyZnVsIHdvcmxkIGFueXdheSBhcyBteSBuZXh0IApwb2ludAp3aWxsIGRlbW9u
c3RyYXRlLgoKU28sIGJhY2sgdG8gdGhlIGlzc3VlIG9mIHRleHQgZWRpdG9yczogdGhhbmtzIFRp
bSBmb3IgcG9pbnRpbmcgdGhlCnByb3MgYW5kIGNvbnMgb2YgZGlmZmVyZW50IGVkaXRvcnMuIEZv
ciBpbnN0YW5jZSwgd2hpbGUgS3lsZSBtaWdodCAKaGF2ZQppc3N1ZXMgd2l0aCBFbWFjcywgSSBy
ZXNwZWN0IGhpcyBvd24gb3BpbmlvbnMgYW5kIHNvbWUgc3Ryb25nIAp2aWV3cwphYm91dCBpdC4K
CkhlcmUgSSB1c2UgaXQgYXMgbXkgcHJpbWFyeSBlZGl0b3IuIFRoYXQgZXh0ZW5zaWJpbGl0eSB0
aHJvdWdoIApFbGlzcCAKd2hpY2ggc29tZSAgZmluZCBwcm9ibGVtYXRpYyBhcyBhbiBlZGl0b3Ig
dHJ5aW5nIHRvIGJlIGV2ZXJ5dGhpbmcgCmZvcgpldmVyeW9uZSwgaXMgd2hhdCBhcHBlYWxzIHRv
IG1lLCBwYXJ0aWN1bGFybHkgZmFjdG9yaW5nIGl0cwphY2Nlc3NpYmlsaXR5LgoKQSBjYXNlIGlu
IHBvaW50IHdoZXJlIEkgZmluZCBFbWFjcwpwb3dlcmZ1bCBpcyB0aGF0IGF0IG15IHdvcmsgSSBv
ZnRlbiBkbyBkYXRhIGFuYWx5c2lzLiBJIG5lZWQgYSAKZ29vZApzdGF0aXN0aWNhbCBwYWNrYWdl
LCBzbyBJIHVzZSBSLiBJIGNvdWxkIG9mIGNvdXJzZSB1c2UgaXQgb24gdGhlIApjb21tYW5kCmxp
bmUsIGJ1dCBJIHByZWZlciB3b3JraW5nIGluIGEgd2luZG93IHdoZXJlIEkgY2FuIGVhc2lseSBy
ZXZpZXcgCm15CmlucHV0cyBhbmQgb3V0cHV0cyBpbiByZWFsLXRpbWUuIFNvIHVzaW5nIHRoZSBF
U1MgcGFja2FnZSBtYW5hZ2VyLCAKSSBkbwpub3QgaGF2ZSBwcm9ibGVtcyB3aXRoIGFjY2Vzc2li
aWxpdHkuIEkgY2FuIGNvcHkgcmVzdWx0cyBhcyBwbGFpbiAKdGV4dCwKcHJpbnQgcmVwb3J0cywg
bG9hZCBkYXRhc2V0cyBmcm9tIG90aGVyIHN0YXRpc3RpY3MgcGFja2FnZXMgcGx1cyAKbWFueQpv
dGhlciB0YXNrcyB3aXRob3V0IGNvbnN1bHRpbmcgYSBwYWlyIG9mIGV5ZXMuCgpMaWtlIHdoYXQg
SSBzYWlkLCBJIGRvIG5vdCBoYXZlIGEgY29tcHV0ZXIgc2NpZW5jZSBkZWdyZWUuIEVtYWNzLCAK
anVzdApsaWtlIHZpbSwgYm90aCBjb21lIHdpdGggYSBkZXRhaWxlZCBkb2N1bWVudGF0aW9uLCBz
byBmb3IgbWUgYW55CnByb2dyYW1tZSB3aXRoIGdvb2QgZG9jdW1lbnRhdGlvbiBpcyBhIHdpbm5l
ci4gSSBtYXkgcmVhZCBzdWNoCmRvY3VtZW50YXRpb24gYXMgYSBib29rIG9yIHJlZmVyIHRvIGl0
IGFueSB0aW1lIEkgcnVuIGludG8gYSAKcHJvYmxlbSwKYW5kIHdpbGwgb25seSBhc2sgb24gYSBt
YWlsaW5nIGxpc3Qgd2hlbiBJIHJ1biBvdXQgb2YgaWRlYXMgYW5kIAp0aGUKZG9jdW1lbnRhdGlv
biBpcyBvZiBubyBoZWxwLgoKQXQgdGhlIHNhbWUgdGltZSwgSQp1bmRlcnN0YW5kIGFueW9uZSB3
aG8gbWlnaHQgbm90IGJlIGNvbWZvcnRhYmxlIHdpdGggRW1hY3MnIAprZXlzdHJva2VzCmFuZCBp
bnRlcmZhY2U6IHRoaXMgaXMgdGhlIGJlYXV0eSBvZiBkaXZlcnNpdHkuIEEgY2xvc2UgZnJpZW5k
IG9mIAptaW5lCmhhdGVzIGVtYWNzIHRvIHRoZSBjb3JlLCBidXQgcGVyc29uYWxseSBJIGZpbmQg
aXQgbHVkaWNyb3VzIHRvIGJlCmVtb3Rpb25hbCBhYm91dCB0ZXh0IGVkaXRvcnMuIFRoZXkgYXJl
IGp1c3QgaGVyZSB0byBoZWxwIHVzIGRvIAp0aGluZ3Mgd2UKY2FyZSBhYm91dDoganVzdCB0byBi
ZSBwcm9kdWN0aXZlIGF0IG91ciB3b3JrcGxhY2VzIGF0IGxlYXJuaW5nCmluc3RpdHV0aW9ucy4g
CgpXYXJtIHJlZ2FyZHMsCgpJc2hlCgoKT24gVHVlLCBOb3YgMzAsIDIwMjEgYXQgMDI6MjIgIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gCjxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPiBIaSBJYnJhaGltIGFuZCBBbGwsCj4KPiBubyBNaWNybyBpcyBub3QgcHJvdmlk
ZWQgYnkgU2xpbnQgKHlldCkuIEkgbGVhcm5lZCBpdHMgZXhpc3RlbmNlIAo+IHRvZGF5Cj4gPHNt
aWxlPi4KPgo+IEkgaGF2ZSBidWlsdCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBhbmQgYWxzbyBp
dHMgR1VJIAo+IGd0ay1waXBlLXZpZXdlcgo+IChub3QgZnVsbHkKPiBhY2Nlc3NpYmxlLCBidXQg
bmljZSkuCj4KPiBJdCB0b29rIG1lIG1vcmUgdGltZSB0aGFuIGFudGljaXBhdGVkLCBidXQgZXhw
ZWN0IGEgYmlnIGJhdGNoIG9mIAo+IHVwZGF0ZXMgZm9yCj4gU2xpbnQgdG9tb3Jyb3cgKDM3IHBh
Y2thZ2VzLCBpbmNsdWRpbmcgdGhlIG1hbnkgZGVwZW5kZW5jaWVzIG9mIAo+IGZpbGUKPiB2aWV3
ZXIpLgo+Cj4gSSBkaWQgc29tZSByZWFkaW5nIGFuZCB0ZXN0cyB3aXRoIGZsYXRwYWssIGFuZCB3
b3VsZG4ndCAKPiByZWNvbW1lbmQgdG8gdXNlCj4gdGhhdCwKPiBlc3BlY2lhbGx5IGlmIHNwYWNl
IG9uIGRpc2sgaXMgYSBjb25jZXJuLgo+IFdvcnRoIHJlYWRpbmcgYWJvdXQgdGhhdDoKPiBodHRw
czovL2x1ZG9jb2RlLmNvbS9ibG9nL2ZsYXRwYWstaXMtbm90LXRoZS1mdXR1cmUKPiBIb3dldmVy
LCAiY2hvc2UgcHJvbWlzZSwgY2hvc2UgZHVlIiBhcyB3ZSBzYXkgaGVyZSwgYSBmbGF0cGFrIAo+
IHBhY2thZ2UKPiB3aWxsIGJlCj4gYXZhaWxhYmxlIGZvciBTbGludCB1c2VycyB0b21vcnJvdy4K
Pgo+IENoZWVycywKPgo+IERpZGllcgo+Cj4gTGUgMzAvMTEvMjAyMSDDoCAwMDozMCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIAo+IMOpY3JpdDoKPj4gVGhhbmtzIGEgYnVu
ZGxlIGZvciBhbGwgb2YgeW91IGZvbGtzLiBJIGRpZCBub3Qga25vdyBob3cgbXVjaCAKPj4gb2Yg
YQo+PiBkaXNjdXNzaW9uIG15IGlubm9jZW50IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5l
cmF0ZS4gSSAKPj4gbGVhcm5lZCBhCj4+IGxvdCBmcm9tIHlvdXIgYW5zd2Vycy4gQWx0aG91Z2gg
SSBoYXZlIG5ldmVyIG1lc3NlZCB3aXRoIAo+PiBjb25maWd1cmF0aW9uCj4+IGZpbGVzIHNpbmNl
IHRoZSBkYXlzIG9mIHRoZSBhdXRvZXhlYy5iYXQgaW4gdGhlIGRheXMgb2YgZG9zLCBJIAo+PiB0
aGluayBJCj4+IGhhdmUgZW5vdWdoIGNvdXJhZ2UgdG8gcGxheSB3aXRoIGNoYW5naW5nIHNvbWUg
Y29uZmlndXJhdGlvbiAKPj4gc2V0dGluZ3MKPj4gdXNpbmcgc29tZSBvZiB0aGUgZWRpdG9ycyB5
b3Ugc3VnZ2VzdGVkLgo+Pgo+PiBJIGxhdW5jaGVkIGZldyBvZiB0aGVtIGJvdGggaW4gdGhlIGRl
c2t0b3AgYW5kIGluIHRoZSB0ZXJtaW5hbCAKPj4gYW5kIEkKPj4gZm91bmQgZ2VhbnkgYW5kIG5h
bm8gdG8gYmUgZWFzeS4gSSBkaWQgbm90IGZpbmQgTWljcm8sIEkgZ3Vlc3MgCj4+IGl0IGlzIG5v
dAo+PiBwcmVpbnN0YWxsZWQgb24gc2xpbnQuCj4+Cj4+IEkga25vdyB0aGF0IG15IGVkaXRpbmcg
bmVlZHMgd291bGQgYmUgdmVyeSBiYXNpYy4KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgotLQpJc2hl
CgogICAg4oCcVGFrZSB0aGUgZmlyc3Qgc3RlcCBpbiBmYWl0aC4gWW91IGRvbuKAmXQgaGF2ZSB0
byBzZWUgdGhlIHdob2xlIAogICAgc3RhaXJjYXNlLCBqdXN0IHRha2UgdGhlIGZpcnN0IHN0ZXAu
4oCdCiAgICBEci4gTWFydGluIEx1dGhlciBLaW5nIEpyLgoKCgpTZW50IGZyb20gbXkgU2xpbnQg
MTQuMi4xIGJveCB1c2luZyBFbWFjcyAyNy4yIE11NGUgIG1haWwgY2xpZW50LgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

