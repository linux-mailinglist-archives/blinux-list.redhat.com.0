Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DD8CD25ACAC
	for <lists+blinux-list@lfdr.de>; Wed,  2 Sep 2020 16:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1599056213;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O2Avv7tQYd81BhToa07lAc/Z3QBKCx7yKo7SdvarlDo=;
	b=bZ0bQl8keEntHXqL8U2sR6/j3tmm9MiV7g4SlC6db0MVmH65WF0AE3tX4GuMJFjF7JoGnn
	6b5+Cyw6AKWJYUkAq36Gpx182gBuE1v/sb7shIG/f0JUAtyjiWfd+o3TEztJcn/vt7KL2x
	eW2egBRdWoHFRc2ngI3YCqz0DLRn1L8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-Vp0bs58wNYy_Z1R_DKL2ow-1; Wed, 02 Sep 2020 10:16:51 -0400
X-MC-Unique: Vp0bs58wNYy_Z1R_DKL2ow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 652CA18B9EC4;
	Wed,  2 Sep 2020 14:16:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F3C11002391;
	Wed,  2 Sep 2020 14:16:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C7C479DA0;
	Wed,  2 Sep 2020 14:16:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 082EGBOj020497 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Sep 2020 10:16:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CBE762166BA3; Wed,  2 Sep 2020 14:16:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5B432166BA2
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 14:16:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C84C811D00
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 14:16:09 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-547--jfuJ7q7NuqpwSHuw5RXfw-1; Wed, 02 Sep 2020 10:16:06 -0400
X-MC-Unique: -jfuJ7q7NuqpwSHuw5RXfw-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id D995B1418B2E
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 07:16:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: FYI: PinePhone community edition for Manjaro
Date: Wed, 2 Sep 2020 07:16:04 -0700
References: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
	<6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
	<BE741911-CF77-4532-9486-242ED63B578D@cfcl.com>
	<5ef5c3c0-17a7-11c2-4800-0179dadbbfde@gmail.com>
	<33F31867-31AB-4E73-996F-9A7706E50353@cfcl.com>
	<6CE3F314-3747-41DB-AC47-4D9FD0FC99C7@pipkrokodil.se>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <6CE3F314-3747-41DB-AC47-4D9FD0FC99C7@pipkrokodil.se>
Message-Id: <BD5FA2E4-E2C3-4F29-9EA2-0F96269F755E@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 082EGBOj020497
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
X-Mimecast-Spam-Score: 0.503
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBXaGF0IGlzIHRoZSBtb2RlbCBvZiB0aGUgcGhvbmUgeW91IGJvdWdodD8KPiBUaGFua3MgaW4g
YWR2YW5jZS4KPiAvQQoKQXQgdGhlIHRpbWUgdGhhdCBJIG9yZGVyZWQgbXkgcGhvbmUgKGJhY2sg
aW4gSnVseSksIHRoZXJlIHdlcmUgdHdvIG1vZGVscyBhdmFpbGFibGU6CgpQSU5FUEhPTkUg4oCT
IOKAnENvbW11bml0eSBFZGl0aW9uOiBQb3N0bWFya2V0T1PigJ0gKCQxNTApCmh0dHBzOi8vc3Rv
cmUucGluZTY0Lm9yZy9wcm9kdWN0L3BpbmVwaG9uZS1jb21tdW5pdHktZWRpdGlvbi1wb3N0bWFy
a2V0b3MtbGltaXRlZC1lZGl0aW9uLWxpbnV4LXNtYXJ0cGhvbmUvCgpQSU5FUEhPTkUg4oCTIOKA
nENvbW11bml0eSBFZGl0aW9uOiBQb3N0bWFya2V0T1MgV2l0aCBDb252ZXJnZW5jZSBQYWNrYWdl
4oCdICgkMjAwKQpodHRwczovL3N0b3JlLnBpbmU2NC5vcmcvcHJvZHVjdC9waW5lcGhvbmUtY29t
bXVuaXR5LWVkaXRpb24tcG9zdG1hcmtldG9zLXdpdGgtY29udmVyZ2VuY2UtcGFja2FnZS1saW1p
dGVkLWVkaXRpb24tbGludXgtc21hcnRwaG9uZS8KClRoZSBDb252ZXJnZW5jZSBQYWNrYWdlIHBy
b3ZpZGVzIGEgIlVTQi1DIERvY2tpbmcgQmFyIOKAkyAyeCBVU0IgVHlwZS1BIGhvc3QgcG9ydHMs
IGRpZ2l0YWwgdmlkZW8gcG9ydCwgYW5kIDEwLzEwME1icHMgRXRoZXJuZXQgcG9ydCIuICBJdCBh
bHNvIGhhcyAzIEdCIG9mIFJBTSAocmF0aGVyIHRoYW4gMikgYW5kIDMyIEdCIG9mIGVNTUMgc3Rv
cmFnZSAocmF0aGVyIHRoYW4gMTYpLiAgVGhpcyBtYWtlcyBhIGxvdCBvZiBzZW5zZSBmb3IgYSBk
ZXZlbG9wbWVudCBtYWNoaW5lLCBzbyBJIGJvdWdodCB0aGlzIHZlcnNpb24uCgpIYXZpbmcgc2Fp
ZCBhbGwgdGhpcywgYm90aCBvZiB0aGVzZSBtb2RlbHMgYXJlIGN1cnJlbnRseSAib3V0IG9mIHN0
b2NrIiwgYmVjYXVzZSBQaW5lNjQgdG9vayB0aGUgcHJlLW9yZGVycywgaGFkIHRoZSBwcm9kdWN0
aW9uIGRvbmUsIGFuZCBpcyBub3cgc2hpcHBpbmcgcHJvZHVjdCAoeWF5ISkuICBIb3dldmVyLCB0
aGV5IGhhdmUgYW5ub3VuY2VkIHRoYXQgTWFuamFybyB2ZXJzaW9ucyB3aWxsIGJlIGF2YWlsYWJs
ZSBmb3IgcHJlLW9yZGVyIGluIG1pZC1TZXB0ZW1iZXIuICBUaGlzIHdpbGwgb25seSBkaWZmZXIg
ZnJvbSBteSBwaG9uZSBpbiB0d28gd2F5czogdGhlIGNvbnRlbnRzIG9mIHRoZSBwcmUtbG9hZGVk
IE9TIGFuZCB0aGUgbG9nbyBwcmludGVkIG9uIHRoZSBiYWNrIG9mIHRoZSBkZXZpY2UuCgpJZiB5
b3UgYXJlIGludGVyZXN0ZWQgaW4gZ2V0dGluZyBhIFBpbmVQaG9uZSwgSSdkIHN1Z2dlc3QgZ2V0
dGluZyBvbiBvbmUgb2YgdGhlaXIgYW5ub3VuY2VtZW50IGNoYW5uZWxzOgoKPiBQcmUtb3JkZXJz
IGZvciB0aGUgTWFuamFybyBDb21tdW5pdHkgRWRpdGlvbiBQaW5lUGhvbmUgb3BlbiBtaWQtU2Vw
dGVtYmVyLiBUbyBiZSBub3RpZmllZCB3aGVuIHByZS1vcmRlcnMgZ28gbGl2ZSBtYWtlIHN1cmUg
dG8gc3Vic2NyaWJlIHRvIHRoaXMgYmxvZywgdGhlIFRlbGVncmFtIFBJTkU2NCBOZXdzIENoYW5u
ZWwgKG5vdCBjaGF0KSBhbmQgZm9sbG93IHVzIG9uIFR3aXR0ZXIgYW5kIE1hc3RvZG9uLgotLSBo
dHRwczovL3d3dy5waW5lNjQub3JnLzIwMjAvMDgvMzEvcGluZXBob25lLW1hbmphcm8tY29tbXVu
aXR5LWVkaXRpb24vCgpJJ2xsIGNsb3NlIHdpdGggYSBjYXZlYXQ6IEJvdGggdGhlIFBpbmVQaG9u
ZSBhbmQgdGhlIExpbnV4IHZhcmlhbnRzIGl0IHJ1bnMgYXJlIFdvcmtzIEluIFByb2dyZXNzLiAg
U28sIHNvbWUgdGhpbmdzIG1heSByZXF1aXJlIGZpZGRsaW5nLCBtYXkgbm90IHdvcmsgeWV0LCBl
dGMuICBFdmVyeW9uZSBpbnZvbHZlZCBpcyBiZWluZyBxdWl0ZSB1cGZyb250IGFib3V0IHRoZSBm
YWN0IHRoYXQgdGhpcyBpcyBzdGlsbCBhIGdhbWUgZm9yIGRldmVsb3BlcnMsIHJhdGhlciB0aGFu
IGVuZCB1c2Vycy4gIFNvLCBZTU1WIQoKUmljaCBNb3JpbiwgcmRtQGNmY2wuY29tCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

