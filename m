Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5673F24C6F5
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 23:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597957512;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AYCYdT/4quY/eLIiCpwQAhNzi1uC0ZAYpR7O6qRus3Q=;
	b=bQPuQdfttDLW5A/SpSAdvLklmJLe1i1g1pd1r8PBYKfnkRXlAl8y16XyJqmgURZ9DW6k71
	n8YXMspu/s7pmxJ5bYumXVGuUbBenRrrWsqJbMNYtIPiwyVpRhRhoqz7nE0RSX1JdzJoJR
	1qG5CxM2bpFO2qkcegTv2HF0C1QpBgQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-S5nvJTryMM2_yYoAvZxL0w-1; Thu, 20 Aug 2020 17:05:09 -0400
X-MC-Unique: S5nvJTryMM2_yYoAvZxL0w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1F6E393B4;
	Thu, 20 Aug 2020 21:05:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0498510098A5;
	Thu, 20 Aug 2020 21:05:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 142AF183D020;
	Thu, 20 Aug 2020 21:05:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KL4uQY019508 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 17:04:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 97FC82049CD3; Thu, 20 Aug 2020 21:04:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93BE8203B866
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 21:04:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78B9F101AA49
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 21:04:54 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-511-w93lcYeyPViUua-qxRCp7Q-1;
	Thu, 20 Aug 2020 17:04:52 -0400
X-MC-Unique: w93lcYeyPViUua-qxRCp7Q-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D2D1ABE7E3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 22:04:12 +0200 (CEST)
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
Message-ID: <e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
Date: Thu, 20 Aug 2020 23:04:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.23.453.2008201331030.998121@chime>
Content-Language: fr
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07KL4uQY019508
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hpbWUsCgp5b3UgY2FuIGhhdmUgbG9vayBkb3dubG9hZGluZyB0aGUgc291cmNlIFJQTSBo
ZXJlOgpodHRwczovL2Rvd25sb2FkLm9wZW5zdXNlLm9yZy9yZXBvc2l0b3JpZXMvb3BlblNVU0U6
L0ZhY3Rvcnkvc3RhbmRhcmQvc3JjL3NibC0zLjUuMC4yMDEzMDMxNy5naXQ3YTc1YmMyOS02LjEu
c3JjLnJwbQoKSSBkaWQgdGhhdCBhbmQgaGFkIHFpY2sgbG9vayBhdCBzb21lIHNvdXJjZXMgZmls
ZXMgYnV0IGRvbid0IGhhdmUgdGhlIHRpbWUgdG8gaW52ZXN0aWdhdGUgZnV0aGVyIG5vdy4KCkRp
ZGllciBTcGFpZXIKCgpMZSAyMC8wOC8yMDIwIMOgIDIyOjUxLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSB3b3VsZCBsb3ZlIHRvIGtub3cgbW9yZSBh
Ym91dCBzYmwsIGJ1dCBJIGFtIGluIERlYmlhbi4gSSd2ZSBiZWVuIHVzZWluZyBTcGVha3VwIHNp
bmNlIDIwMDMsIEkgbGlrZSB0aGVpciBzY3JlZW4tcmV2aWV3LCB3aGljaCBpcyBzaW1pbGFyIHRv
IE4gViBEIEEgaW4gd2luZG93cy4gQnV0IGNlcnRhaW5seSB5ZWFycyBhZ28gSSBnb3QgcXVpdGUg
ZmFtaWxsaWFyIHdpdGggVm9jYWwtRXllcywgd2hlcmUgYW4gYWx0wqAgdG9nZ2xlcyBpbi1hbmQt
b3V0IG9mIHJldmlldy4gV291bGQgU0JMIHdvcmsgd2l0aCBhIERlY1RhbGs/IFRoYW5rcyBzbyBt
dWNoIGluIGFkdmFuY2UKPiBDaGltZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

