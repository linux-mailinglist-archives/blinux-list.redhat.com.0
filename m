Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF43349AB2
	for <lists+blinux-list@lfdr.de>; Thu, 25 Mar 2021 20:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616702111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oYj7O51F2dpXMknfKqnY/H9mhluRXMTh4Vev4GmENAo=;
	b=JLl4GGI0NRX49YBZG89z864hJ2Wr1/WGy7J+WUa402QRQPL6XWhigI2y0FEptptqKnp0Dv
	c4y/YXOSCZH62076dI9PjZA+QO/MUC0lgw8n44HdmwzUeEyk2lwKnup3dKwcERa7s5et1P
	hepi/zfYeXmfUgcQjtj3CDI8xm6xH1k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-vX8I63BvNc25mB3gMewsXQ-1; Thu, 25 Mar 2021 15:54:57 -0400
X-MC-Unique: vX8I63BvNc25mB3gMewsXQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE9EE87A82A;
	Thu, 25 Mar 2021 19:54:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AB2C5D9D0;
	Thu, 25 Mar 2021 19:54:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D60DC1809C84;
	Thu, 25 Mar 2021 19:54:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12PJsP1p021633 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Mar 2021 15:54:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E926F885D; Thu, 25 Mar 2021 19:54:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87D63F894C
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:54:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F51085A5AA
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:54:23 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-474-YILPxCK5PF6I9p5xP0Ty4Q-1;
	Thu, 25 Mar 2021 15:54:20 -0400
X-MC-Unique: YILPxCK5PF6I9p5xP0Ty4Q-1
Received: from darkstar.example.slint (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1D881A1CDD
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:54:17 +0100 (CET)
Subject: Re: Slint not speaking in Vmware fusion on the Mac.
To: blinux-list@redhat.com
References: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
Message-ID: <17feef2e-37c4-13d1-2797-066f7666b7a3@slint.fr>
Date: Thu, 25 Mar 2021 20:54:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12PJsP1p021633
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

SGksCgpEaWRpZXIgU3BhaWVyLCBTbGludCBtYWludGFpbmVyLCBoZXJlLgoKSSBoYXZlIG5vIGV4
cGVyaWVuY2Ugd2l0aCBWTXdhcmUgZnVzaW9uLCBidXQgUWVtdSBpcyBhdmFpbGFibGUgZm9yIE1h
YzoKCmh0dHBzOi8vd3d3LnFlbXUub3JnL2Rvd25sb2FkLyNtYWNvcwoKRGlkaWVyCgpQUyB3ZSBh
cmUgb24gY2hhbm5lbCAjc2xpbnQgb24gaXJjLmZyZWVub2RlLm5ldAoKTGUgMjUvMDMvMjAyMSDD
oCAyMDowMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+
IEhpIQo+IEkgYW0gbm90IHN1cmUgd2hhdCBpcyBnb2luZyBvbiBoZXJlLgo+IEJ1dCBJIGFtIHRy
eWluZyB0byBydW4gc2xpbnQgZnJvbSBhbiBpc28gdW5kZXIgTWFjLgo+IEkgY2Fu4oCZdCBnZXQg
aXQgdG8gc3BlYWsgaW4gVk13YXJlIGZ1c2lvbiBmb3Igc29tZSByZWFzb24uCj4gTm90IHN1cmUg
aWYgdGhlcmUgaXMgc29tZSBzZWN1cml0eSBzZXR0aW5nIG9uIHRoZSBNYWMgdGhhdCBtaWdodCBi
bG9jayBzb21ldGhpbmcuCj4gQW55IHRob3VnaHRzLgo+IC9BCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

