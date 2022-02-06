Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E17964AB109
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 18:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644169440;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=yUKttFdWiOZdLYgTLvcxRHbB1KHR/WqpdEvVi7lGBwo=;
	b=fdv4d3mY3857xBH4m0m2siGI0YK7VR9MbdTIRcNIzh8W3dG6E/R+UPNBc/jncKbzW3a0xs
	SuKrVmi0cBx2XBDsnOWDNDJQwMJzvaLTHjg9S2OlFU8pTUWhy36zNiOVjolcUzdQiQB40S
	39FnQ8xr8TXFAO2MAxYxvyC0Iy9dGyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-141-YzhkXq_TO4mG6D2b1rlmJg-1; Sun, 06 Feb 2022 12:43:57 -0500
X-MC-Unique: YzhkXq_TO4mG6D2b1rlmJg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C36DE802924;
	Sun,  6 Feb 2022 17:43:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 413707745F;
	Sun,  6 Feb 2022 17:43:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63FB34CA93;
	Sun,  6 Feb 2022 17:43:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216HhUcZ024661 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 12:43:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A05E21454536; Sun,  6 Feb 2022 17:43:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C9601454535
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 17:43:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EED91C0514F
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 17:43:30 +0000 (UTC)
Received: from sonic307-2.consmr.mail.bf2.yahoo.com
	(sonic307-2.consmr.mail.bf2.yahoo.com [74.6.134.41]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-544-ZYLfjjurPt-_2XBufXwgqA-1; Sun, 06 Feb 2022 12:43:28 -0500
X-MC-Unique: ZYLfjjurPt-_2XBufXwgqA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1644169408; bh=uZdI0l2sGeLasi/jfuypeRnMiSYWjTBIqw/rMDZ6G5O=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=UDRUo9xZe41mewOT6oWYd/bXYWI44jG2+0E7nj2zRcKD/tHJ4l7yeMPBhZ2F7zsAP0IUJRnmprfgiolamg3z7t3zrMyJKQvOYzFzfYD3nkCiGiXMDOYi1yCiB3daWFJjj2XTrK/S8QpALh3YP2O8po9aKjD1S4etgWXc1o58i2s/xN+LxMYPlfVEbqt5qGtNWssd0/CuVj2trct5IPX4YNcExlbCTkVtv3HeCiZlzEnQCYlmRirPIlYnw9RRp3e5qn43FLvR0qEhQ0mwyJ8X5O/nb0I6klxEqHReOPi6ThVKrgFEJ4ylSX3tpfGMZio08lc1J544XCVv1qIRF7QKtg==
X-YMail-OSG: bF8gwUQVM1kuru7IrVqqjNK.YnG_JVV9ki_AAHArKRpHomRstiDz64rUCsEJjIm
	XAbXKZu8dI4dbfjsXGvBLU3n8B99H3epaY_7iUHt4rB3kfwQybGCBov0azMIaENp1Pa7G3h0JhZz
	BcamkTGw6fF.dtZ2csxh2hAsCFFdlYIGiTb7pxUVP9IPk9aqg9E.0SgLL6UX_jSB.gpxDHjW3_b5
	5v9fA6.2yu0.80ZGg92JpeMDflRUYMDnbRIu1FfopxupAwd.uoReB7KDIBx9o1HBvyVTvfC5W9dr
	THdPxIPKszbZb1b5.4mUokpODhCvIn9qrNGDQjLDBADOs5UpjaMTKGOP8WYJUre0C3plSaEhWfEK
	IoyU7yukVjGwwaO3KdcdW1BKtO1l7Tca4FRV3r4n_qsD93kOss.BeuTpc7wb69.5QykoBrI5Iaoc
	alsAJ1Lo4S36AN9NWLMo73Bkxx4aKbbYumcfgDvDuFlJmJzvh47OXyRELsbb4HRwdANK_ytzHo14
	dKrcNtFkWJx3I7HGVlqmloGocBuRJAj6hxL55sBujvjBOjvQ6M.x.iJ7pn5cBDmk56yEAT.QcFvO
	.tZiiKC3rAxo_QuMEDMAtQ3gn.AJjnZfG5EmQF4p4dO_AGyQMfRR_tN2FU4DaoihTSzY0ShAT41I
	qlSsd1SAM7ltNo_W6N_Nu8CuQOlhe2UXj48wSV9rXPUo0nSeo8MgXqzpWUopcQatssA4XDfI2mvm
	RVi1sD4Z_k4M6RbRslCSMBwrl4WImKH0Z24taiREvGjanCmxCtWJVvj_1xNvK6g0x_.AxV7KrAkG
	mOoLmm8j.jHj9hlk_ahm9.0gsYlX_xTof9Gf4f4HvFjaXAc2D3DnnkNX1AuDCH6P8zIWH3suqe8j
	Tlpi_BGtomsA8M3wOgx6yuX5zm2MOiwDG3oY90TtY53a0OTfqC7ZfFE9SnpVP.zhKesuDOXvRw_g
	vdAzNnOyuvGfGfJyEEQvBBha.9W7D5BioxgNc2IzzFZ9qaR3SKhSbixz6rVB42xYqumreB4FaJwh
	r.0HeDIaaaX7_FmZKO.pSos2Z_Nlzu7GP2siXvRlG4Qm2LJP0dZ3GW7SBIki8mcVs64att6H6Guf
	s8RDRjHX_MsqeD_jdPNEMEJ54GfpZJuucM8eXfsAXQPCC8LAnrzwQbP4ksyiNqcvva8RAfB9FcVJ
	FV2JoRiQ1uwkbPkRkpkWG1UCSAii8r1VG3lDrdUb9kgSuBt0YGHimgHokzeo_OHF9gAyGgAUtyiT
	ODpw55NY_PUdgrVLSEVJMScSbzqjsEGr.vzhknwo0a7PBn9h1gx74O_NVUqqgEIq.Uqe7qxXHyvl
	sWrpwKu5euCR2DR5ECEFZY2RIdizdpbhHOXvy4dm9ekE56hfF0KT.UcMqi8qU7.xZ6zYZixKfw6w
	mtTrupcBRapY0WiLOrzI1vq9EeIdwfJ2Sop.yW5LEBAMgXHPwdlnoPRgLtukQi53JFvBvAKEgYKO
	Oh0Jijio4VxPeHQ6A97X5ZAjYv9OGErXPy.72_TckOq0pk6.UvpXUkKP2Afsds7VYsZ6m9ELZZTy
	J2CrHLfnXgDsX0DwmE62M8wU7SrL9pFLrViBSqOQVmfzxajIxGOiMRn6s2FyMtZAi7ZJcWf0IS8L
	VL8AnGVaQVkZD7tMyPzlJiYKzC893shHziJktEsWAeUFEkdrfJLu79evRott6BJZ87w7AxblHRZ9
	OD0cSLv5riM0_V99W_becKxJDRJYB9jBz2zL8peZMFivJfkBF7im_ZLz2M8ArLqPzoNdTUierHB7
	giNyTb_0AaFzFkZGBzxjRNdnNhvgGno2pmt9v99feGsngMnSj7tKfH3iVYyUXdJDmIURu11XyCbq
	Iievu5k_PGCugRI_6fKgPuKropUfngL.yJcji9._JqOQdctOQTMn55RPG5FcbEVHGhqmCvqDfDgc
	ryc4FlXHpmTXMJhCI3Wnc7p1VccUS_RgRQQCeL2r1kDeCg8FTKgpMemEbRcc1UXADsDk52V_.5zr
	Mxlq4WMh4tlmQtTsanQpYY4N3NzkuGDlB9CcG9DgSHnKGrnlN9PfdiPHPlC5YLS_kHJsb3IrEcr4
	p9.IwNB.jyh0e40ar525cdZb7ryNHnXJP56lYN_fgmVT5P91H7LoIWshMd7Qryo7Qy3vpFmtaFkk
	t0vmLuJjQv85AeqHanGPL7OUipttE44Vwt9C22bf8BoI.4G9bm4omxIF8dav_ON9sGJDQDGeZZ5i
	W6HVqn7CN0qok60xf0BcnYAE6qZ3G5_W1lwfh3xQ3ZL8EcCzZYg--
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 6 Feb 2022 17:43:28 +0000
Received: by kubenode516.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 1a0a7ac2d663d4bd9b09f5fbb3ca7e29; 
	Sun, 06 Feb 2022 17:43:24 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Sun, 6 Feb 2022 12:43:23 -0500
Subject: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
Message-Id: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 216HhUcZ024661
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZ3V5cywKU3ViamVjdCBwcmV0dHkgbXVjaCBzYXlzIGl0IGFsbC4gSSB3YXMgIHdvbmRlcmlu
ZyBpZiBhbnlvbmUga25vd3MgaG93IHRvIHN3aXRjaCBhICBIdW1hbndhcmUgQnJhaWxsaWFudCBi
IDgwIHRvIGNvbnRyYWN0ZWQgIGJyYWlsbGUgb24gdGhlIExpbnV4IHRlcm1pbmFsPyBJIGtub3cg
d2l0aCB0aGUgIGNvbW1hbmQga2V5cyB5b3UgY2FuIGRvIGEgbGV0dGVyIEcgd2hpY2ggIHdpbGwg
dG9nZ2xlIGl0IGludG8gZ3JhZGUgMi4gSeKAmW0ganVzdCBub3Qgc3VyZSAgaG93IHRvIGtlZXAg
aXQgc2V0IHRoYXQgd2F5LgpBbnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgpU
aGFuayB5b3UsCgpBc2hsZXkgQnJlZ2VyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

