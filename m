Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC5C42AF99
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 00:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634077235;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FaDlNfcIqUw8PpyIM1+BbNoOaMMj7DRbDEj36CMW6q8=;
	b=De0C5ogkxSNBfurok/qRe3yUvHcqARO+Csd+Nlfb7NCeHG6StkhmgxVfKi8X01YPy1Vvyk
	kbxbfFWqPVdUF7Qp9LFKRyvbrxDwUds8bXz1Xww/u98FTan25xRrX4dgYrLWnCGwoK3yE9
	gqOmOZNzAImTsX6w8TyR4l0rFmNu1y0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-lFXLhc7xOauZrIVbdIJS9w-1; Tue, 12 Oct 2021 18:20:31 -0400
X-MC-Unique: lFXLhc7xOauZrIVbdIJS9w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D73F1966326;
	Tue, 12 Oct 2021 22:20:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 480965C25D;
	Tue, 12 Oct 2021 22:20:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E4CB180598A;
	Tue, 12 Oct 2021 22:20:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CMK8he024015 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 18:20:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 501852166B2D; Tue, 12 Oct 2021 22:20:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47D322166B3F
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:20:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FA7C811E78
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:20:02 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
	[209.85.219.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-183-3bfsF96tOoG-_fiw9tORLg-1; Tue, 12 Oct 2021 18:20:00 -0400
X-MC-Unique: 3bfsF96tOoG-_fiw9tORLg-1
Received: by mail-yb1-f169.google.com with SMTP id g6so1816481ybb.3
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 15:20:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=5DzlFQi11tSwnHWfv4ye51S2YXOD29GY1F9k/k5kbvw=;
	b=ona2TUEBJBnPUDbxfN63cpWpaL5kYkF8RYv6fGWDJZdD26KhOAF9/SyjeoE63Bkl63
	xcNyieuCLp1mMU7ycTXrngx4+25Dq0hyWKyFI0epjS/JmOqtfzPgcuv/dDTVTC47NgAD
	Ad0m3VQZXSGgnMUegAFPpqhjrrJ1hHPDmq3OD+REXEQE9eh/BhAufydSfMSzo8FP9M2j
	BXwEPfDPjBgm3DxXvIJAvGLaG1KljOTlTsXuyunGkr1YI1ymrS+BUr9K889rdEaacQwB
	jBIv7vUixJEvq7r+GT2APblVVEM2xPjq/+vQDDz5e+OEjqphwJPALHvmYx4o0dQ7XdYj
	tsUA==
X-Gm-Message-State: AOAM530DhAmsMFGtGvT5PFH6qgbA7wEROayGglpKWvBPv1Wi3e5JoRuR
	nPXJ2syzorbqzu8oJ2uaM+zJAjsNKMKtSgy4tLyvPZhrZeE=
X-Google-Smtp-Source: ABdhPJz37haPlDBHXZbRCXCUm9Qu3Tuls0ry59VpbBMyyuhyyBvX74WExpPjuihDSsd4Ba+W1eyyX4KcoslMkObCAoI=
X-Received: by 2002:a25:3817:: with SMTP id f23mr30810679yba.436.1634077199670;
	Tue, 12 Oct 2021 15:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
In-Reply-To: <6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
Date: Tue, 12 Oct 2021 17:19:48 -0500
Message-ID: <CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBkaXN0cmlidXRpb24gaXMgdGhpcyBvbj8KRGV2aW4gUHJhdGVyCnIuZC50LnByYXRlckBn
bWFpbC5jb20KZ2VtaW5pOi8vdGlsZGUucGluay9+ZGV2aW5wcmF0ZXIvCgoKCk9uIFR1ZSwgT2N0
IDEyLCAyMDIxIGF0IDQ6MTYgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBBZnRlciBpbnN0YWxsaW5nLCBJIGhl
YXJkIOKAmXNjcmVlbi1yZWFkZXIgb2Zm4oCZLCBzbyBJIHR1cm5lZCBvcmNhIG9uLgo+IFRoZW4g
SSB3YXMgdG9sZCB0byByZWJvb3QuCj4gQWZ0ZXIgcmVib290aW5nLCBJIHR1cm5lZCBvcmNhIG9u
LCB0aGVuIGxvZ2dlZCBpbi4KPiBUaGVuLCBubyBzcGVlY2guCj4gQ291bGQgbm90IGdldCBvcmNh
IHdvcmtpbmcuCj4KPiA+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNzoxMiBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gPgo+ID4gQSBodWdlICsxIGZvciBGZWRvcmEgTUFURS4gSSBoYXZlIGl0IHJ1bm5pbmcgb24g
dHdvIGNvbXB1dGVycyBoZXJlLCBvbmUKPiBpcyBub3QgbWluZSwgYW5kIGl0IHdvcmtzIGdyZWF0
LiBPcmNhIGNvbWVzIHdpdGggaXQsIGFuZCB5b3UgY2FuIHJ1biBhIGZ1bGwKPiBpbnN0YWxsIGFm
dGVyIHByZXNzaW5nIGFsdCtmMiB0byBvcGVuIHRoZSBydW4gd2luZG93IGFuZCB0aGVuIGVudGVy
aW5nIHRoZQo+IHdvcmQgb3JjYS4gV2lmaSBnZW5lcmFsbHkgd29ya3Mgb3V0IG9mIHRoZSBib3gs
IHRob3VnaCB0aGUgTmV0d29ya01hbmFnZXIKPiBhcHBsZXQgdGhhdCBjb250cm9scyBpdCBkb2Vz
bid0IHRlbGwgeW91IHdoYXQgaXQgaXMuIFN0aWxsLCB5b3UgY2FuIGp1c3QKPiBob2xkIHRoZSBh
bHQgYW5kIGNvbnRyb2wga2V5cyBhbmQgZG91YmxlIHRhcCB0aGUgdGFiIGtleSB0byBnZXQgdG8g
dGhlIHRvcAo+IHBhbmVsLCB0aGVuIHNoaWZ0IHRhYiBwYXN0IHRoZSB0b2dnbGUgYnV0dG9uIGFu
ZCBwcmVzcyB0aGUgZW50ZXIga2V5IHRvCj4gYnJpbmcgdXAgdGhlIG1lbnUgdGhhdCBoYXMgeW91
ciB3aWZpIGNvbm5lY3Rpb25zLiBUaGVyZSdzIG5vdCBtdWNoIG1vcmUgdG8KPiB0ZWxsIG90aGVy
IHRoYW4gaXQncyBhIGdyZWF0IE9TLCBub3QganVzdCBmb3IgbGVhcm5pbmcsIGJ1dCBmb3IgZGFp
bHkgdXNlLAo+IGFuZCBvbmUgb2YgdGhlIGNvbXB1dGVycyBpbiB0aGUgaG91c2UgdGhhdCBpcyBy
dW5uaW5nIGl0IGlzIGV2ZW4gYmVpbmcgdXNlZAo+IGZvciBnYW1pbmcgYW5kIGxpdmUgc3RyZWFt
aW5nLiBJZiB5b3UgbmVlZCB0byBkaWcgZGVlcGVyIGludG8gdGhlIGd1dHMgb2YKPiB0aGUgc3lz
dGVtLCBpdCBhbGxvd3MgZm9yIHRoYXQgYXMgd2VsbC4gSSBmb3Igb25lIGhpZ2hseSByZWNvbW1l
bmQgdGhlCj4gRmVkb3JhIE1BVEUgc3Bpbi4KPiA+Cj4gPiB+S3lsZQo+ID4KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

