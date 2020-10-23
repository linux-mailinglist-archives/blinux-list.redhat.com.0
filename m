Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D6B302972D1
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 17:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603468082;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UallUzD5BT95/72IRGwjMeve6c/MNI1vRoIxU+N4l34=;
	b=Hg+x4w53NuSdzu6JVvouzQt+8wplpvPaqqru9G++Aj1zjhz0uEPsf66Sfwwg2q6pLFhf28
	kbMOd9OZws9PeFRPOs67HfBY2GzzMOvo/CzOhKH36VLNjiQu2n4zluyu7JJu614uKRd+tq
	ArdAtdNGdPP6kLOFjbmyK0u7xFvk/cY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-vH1FfbuhMdy4RXTQJdLNow-1; Fri, 23 Oct 2020 11:48:00 -0400
X-MC-Unique: vH1FfbuhMdy4RXTQJdLNow-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8B09804B71;
	Fri, 23 Oct 2020 15:47:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E15C21EFB;
	Fri, 23 Oct 2020 15:47:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D38B69230A;
	Fri, 23 Oct 2020 15:47:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NFliYs017964 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 11:47:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F38982144B30; Fri, 23 Oct 2020 15:47:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF3832144B33
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:47:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2651102F1E3
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:47:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-48-LP7bNxU7NAWKh7hFppcuuA-1; Fri, 23 Oct 2020 11:47:39 -0400
X-MC-Unique: LP7bNxU7NAWKh7hFppcuuA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CHpXC0xBtz16kf
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 11:47:39 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CHpXC0DnJzcbf; Fri, 23 Oct 2020 11:47:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CHpXB6zxNzcbW
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 11:47:38 -0400 (EDT)
Date: Fri, 23 Oct 2020 11:47:38 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <bbc1c7c4-52d7-6cc5-3d67-7d724d6e5eb8@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2010231146140.4709@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<bbc1c7c4-52d7-6cc5-3d67-7d724d6e5eb8@slint.fr>
MIME-Version: 1.0
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NFliYs017964
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIGdvaW5nIHRvIGhhdmUgdG8gcmVjb25maWd1cmUgdG8gZ2V0IHRoZSBzb3VuZCBjYXJkIHdv
cmtpbmcuICBJZiBJCmhhZG4ndCBnb3QgcGNzcGVha2VyIHdvcmtpbmcgSSdkIG5ldmVyIGhhdmUg
a25vd24gaWYgSSBoYWQgYW55dGhpbmcKd29ya2luZyBvbiB0aGUgbWFjaGluZS4KCk9uIEZyaSwg
MjMgT2N0IDIwMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+
IERhdGU6IEZyaSwgMjMgT2N0IDIwMjAgMTA6MTc6NTQKPiBGcm9tOiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+IFRvOiBibGludXgt
bGlzdEByZWRoYXQuY29tCj4gU3ViamVjdDogUmU6IGJ1aWxkaW5nIGtlcm5lbCBmb3IgYWM5NyBz
b3VuZCBjYXJkCj4KPiBIZWxsbywKPgo+IFRvIGNoZWNrIGlmIHRoZSB0aGUgcGNzcGtyIGRyaXZl
ciBpcyBpbmNsdWRlZCBpbiB5b3VyIHJ1bm5pbmcga2VybmVsLCB0eXBlOgo+IHpncmVwIC1pIHBj
c3BrciAvcHJvYy9jb25maWcuZ3oKPgo+IE91dHB1dCBoZXJlIChTbGludDY0LTE0LjIuMS4yKToK
PiBDT05GSUdfSEFWRV9QQ1NQS1JfUExBVEZPUk09eQo+IENPTkZJR19QQ1NQS1JfUExBVEZPUk09
eQo+IENPTkZJR19JTlBVVF9QQ1NQS1I9bQo+Cj4gSWYgaW5zdGVhZCB0aGUgbGFzdCBsaW5lIGlz
Owo+IENPTkZJR19JTlBVVF9QQ1NQS1I9bgo+Cj4geW91IHdpbGwgbmVlZCBhbm90aGVyIGtlcm5l
bCBvciByZWNvbmZpZ3VyZSBpdC4KPiBQQ1NQS1IgaXMgdW5kZXIgZHJpdmVycy9pbnB1dC9taXMg
aW4gdGhlIGtlcm5lbCB0cmVlCj4KPiBFbHNlIHlvdSBqdXN0IG5lZWQgdG8gdHlwZSBhcyByb290
Ogo+IG1vZHByb2JlIHBjc3Brcgo+IGxvIGxvYWQgdGhlIG1vZHVsZS4KPgo+IFRoaXMgaXNzdWUg
aXMgbm90IHJlbGF0ZWQgdG8geW91ciBzb3VuZCBjYXJkIGFuZCBhYzk3LCBhcyB0aGUgYmVlcAo+
IGNvbWVzIGZyb20gdGhlIGludGVybmFsIHNwZWFrZXIgYXR0YWNoZWQgdG8gdGhlIG1vdGhlciBi
b2FyZCwgbm90Cj4gZnJvbSBhIHNvdW5kIGNhcmQuCj4KPiBEaWRpZXIgU3BhaWVyCj4gU2xpbnQg
bWFpbnRhaW5lcgo+Cj4KPiBMZSAyMy8xMC8yMDIwID8gMTU6MTUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+ID4gSSBoYXZlIGFuIGFjOTcgc291bmQgY2Fy
ZCBhbmQgYSBjLW1lZGlhIHVzYiBzb3VuZCBjYXJkIG9uIGEgc3lzdGVtLiAgSQo+ID4gaGF2ZSBv
bmx5IGhhZCBzdWNjZXNzIGFjdGl2YXRpbmcgdGhlIHBjc3BlYWtlciB3aGVuIGJ1aWxkaW5nIGEg
a2VybmVsIGZvcgo+ID4gZ2VudG9vLiAgSSBoYXZlIG5vIGNsdWUgYXMgdG8gd2hhdCB0byBlbmFi
bGUgdG8gZ2V0IHRoaXMgZG9uZS4gIFRoaXMgaXMKPiA+IGV2ZW4gYWZ0ZXIgaGF2aW5nIGdvbmUg
dGhyb3VnaCBsc3BjaSBvdXRwdXQgYW5kIGxzbW9kIG91dHB1dCB3aXRoIHRoZQo+ID4gaW5zdGFs
bC1taW5pbWFsIGR2ZCBydW5uaW5nIHRoZSBvcGVyYXRpbmcgc3lzdGVtICBUaGUgc3BlYWtlci10
ZXN0IHV0aWxpdHkKPiA+IHB1dHMgb3V0IHNvdW5kIGluIHRoZSBjaHJvb3QgZW52aXJvbm1lbnQg
YW5kIGlzIHNpbGVudCBhZnRlciBmaXJzdCBib290Cj4gPiBpbnRvIHRoZSBuZXcgZW52aXJvbm1l
bnQgbWFkZSBieSB0aGUgY29tcGlsZWQga2VybmVsLgo+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

