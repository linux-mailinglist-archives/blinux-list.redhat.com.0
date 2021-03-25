Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 09A51349AB9
	for <lists+blinux-list@lfdr.de>; Thu, 25 Mar 2021 20:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616702247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JgHV5NHtFf0n8iO6HbPW8/fb2uf24PnWkJqmvRT7GOg=;
	b=CYBmW8pZuthWWRWJePT2aax8Q2R4p9LYDDnWz2U+7x4d0HVSaw9uSx0CGVr22JCKOdsKNE
	G467bkAMnT2vxSGt5UuP1+gofkoSRSOIuowkDywzGtVfPBdh5iab24xngZUNkzTfLBxJrg
	zTIU66pr5cGiBe8v9yOCmV2+6PKhQ9I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-YySM48c3PeSr0RhZE7TpKA-1; Thu, 25 Mar 2021 15:57:24 -0400
X-MC-Unique: YySM48c3PeSr0RhZE7TpKA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D110107B7C4;
	Thu, 25 Mar 2021 19:57:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8053B19C71;
	Thu, 25 Mar 2021 19:57:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2748E4BB7B;
	Thu, 25 Mar 2021 19:57:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12PJvHDI022060 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Mar 2021 15:57:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B459820E1D80; Thu, 25 Mar 2021 19:57:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEC9720E1D81
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:57:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 167E9805B3B
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:57:15 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-87-kdWFoYROOXmoQZbxAzyfGw-1;
	Thu, 25 Mar 2021 15:57:12 -0400
X-MC-Unique: kdWFoYROOXmoQZbxAzyfGw-1
Received: from darkstar.example.slint (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1A6CDA1CDD
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:57:09 +0100 (CET)
Subject: Re: Slint not speaking in Vmware fusion on the Mac.
To: blinux-list@redhat.com
References: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
Message-ID: <5f021569-c2b8-ab3a-7cb8-5d346d928b95@slint.fr>
Date: Thu, 25 Mar 2021 20:57:04 +0100
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12PJvHDI022060
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

ZnJvbSBEaWRpZXIgYWdhaW46CgpBcmUgeW91IHN1cmUgeW91IGFyZSB1c2luZyB0aGUgZ29vZCBJ
U08/IFRoZSBsYXN0IG9uZSBpcyBoZXJlOgpodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82
NC9zbGludC0xNC4yLjEvaXNvLwoKTGUgMjUvMDMvMjAyMSDDoCAyMDowMSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIQo+IEkgYW0gbm90IHN1cmUg
d2hhdCBpcyBnb2luZyBvbiBoZXJlLgo+IEJ1dCBJIGFtIHRyeWluZyB0byBydW4gc2xpbnQgZnJv
bSBhbiBpc28gdW5kZXIgTWFjLgo+IEkgY2Fu4oCZdCBnZXQgaXQgdG8gc3BlYWsgaW4gVk13YXJl
IGZ1c2lvbiBmb3Igc29tZSByZWFzb24uCj4gTm90IHN1cmUgaWYgdGhlcmUgaXMgc29tZSBzZWN1
cml0eSBzZXR0aW5nIG9uIHRoZSBNYWMgdGhhdCBtaWdodCBibG9jayBzb21ldGhpbmcuCj4gQW55
IHRob3VnaHRzLgo+IC9BCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

