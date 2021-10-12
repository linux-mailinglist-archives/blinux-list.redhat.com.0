Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2F642AFB3
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 00:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634078213;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qBmueMrLXF+E3xX+302FSZGScHjclSywwNeDAiFqE9g=;
	b=Ovtv/poCO6yXLH+BrJB+u/fSEOeL2+VcJEVeL+1/Vkq0Ypw7axPkoHUZ0h/CeUpbEIqn73
	RH/JgwGBIKKs6zrEdmDl1i0+l1jHV5A5tcAplD7GzGWemlwsekpFn841dUD+Y8JYx858Xn
	9tN6Tb+r7SfV8/yhztWtOAr5GbSQqfM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-FNdoxlbgNluGMWraAa0x6A-1; Tue, 12 Oct 2021 18:36:49 -0400
X-MC-Unique: FNdoxlbgNluGMWraAa0x6A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8415D1006AA5;
	Tue, 12 Oct 2021 22:36:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63A7360C82;
	Tue, 12 Oct 2021 22:36:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DAEC61809C81;
	Tue, 12 Oct 2021 22:36:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CMaWMt024849 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 18:36:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E2AB5111CB9E; Tue, 12 Oct 2021 22:36:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDAC2111CB9C
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:36:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24D0E8007B1
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:36:29 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-254-prK4_A9uMc6WjLI1Sp2L-A-1; Tue, 12 Oct 2021 18:36:27 -0400
X-MC-Unique: prK4_A9uMc6WjLI1Sp2L-A-1
Received: by mail-yb1-f170.google.com with SMTP id w10so1877547ybt.4
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 15:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Rok5J9hRNoqa9ZslJWYRepKrcpgIRjqLIsVHhOECf7g=;
	b=HYaobsxOvHcJpyXCZ0GP3zfDfhycXWOSyIwqEqq/0t4f/f09Q1TKnPrb7VWxXU1WDe
	DkCBKSeh2Rw88x/ebocryhSOkT9S0HWw2ud1Pk3jIhd8Z9V4knrYssipmQAE5ZRIYGOc
	hWjbtpY2GW1v/P4qRqgUWPGJ1liQd50brdIka5uII4JI+fxvoKI9uWcgps+L2bzedqmJ
	6vuB2iPwsEBPBFxbA3Z9/DNdj5ANPvwJDl6uZxnJToOO9mApNYlhV23B4NKiWIrSER9N
	l1h5rsxgBs9QFxI5hXv+iBHLXMXgfMOOVH4k/dOQ+StrNh1ekPryDOgbgDvflUk9VBn3
	3mpQ==
X-Gm-Message-State: AOAM53327CZNvRkVBSbRW0666Mq8bgMyQP/Za96WCmdvjQ6oHFmQeP0d
	ZiU436xyyzi8SIuszHk7mVTwPEijIMi6GGQDetXcqEWJMCc=
X-Google-Smtp-Source: ABdhPJza81WhMcnwR86ds5O2VKV1jwX+iF1nZlblf9Kd17IW+xUwoV0zL2PZZ4O4WpSXrAcrT6tgXKrXLz5lrfYFvfI=
X-Received: by 2002:a5b:145:: with SMTP id c5mr31642708ybp.60.1634078186350;
	Tue, 12 Oct 2021 15:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
In-Reply-To: <B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
Date: Tue, 12 Oct 2021 17:36:15 -0500
Message-ID: <CAGJxbF7TG=nP3C4bZ=BqkgExmjv+FZq1zz6XYsc61MFPSX8h2Q@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWgsIG9rYXkuIFdoZW4geW91IGxvZyBpbiwgdHJ5IHByZXNzaW5nIEFsdCArIEYyLCB0eXBpbmcg
b3JjYSwgYW5kIHByZXNzaW5nCkVudGVyLiBUaGVuIGdvIGludG8gdGhlIG1lbnVzIHdpdGggQWx0
ICsgRjEsIGxlZnQgYXJyb3cgdG8gYWRtaW5pc3RyYXRpb24gSQp0aGluaywgYXJyb3cgdG8gcGVy
c29uYWxpemF0aW9uLCByaWdodCBhcnJvdywgZG93biBhcnJvdyB0byAiYXNzaXN0aXZlCnRlY2hu
b2xvZ2llcyIsIHByZXNzIEVudGVyLCBjaGVjayB0aGF0IGJveCwgYW5kIHNvbWV3aGVyZSBpbiB0
aGF0IHN5c3RlbSBvZgpkaWFsb2dzIGlzIGEgd2F5IHRvIGhhdmUgaXQgdHVybiBvbiBhdCBzdGFy
dHVwLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQpnZW1pbmk6Ly90aWxkZS5w
aW5rL35kZXZpbnByYXRlci8KCgoKT24gVHVlLCBPY3QgMTIsIDIwMjEgYXQgNTozMCBQTSBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cgo+IFRoaXMgd2FzIGZlZG9yYSAzNCBtYXRlLgo+Cj4gPiBPbiBPY3QgMTIsIDIwMjEs
IGF0IDU6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IFdoYXQgZGlzdHJpYnV0aW9uIGlzIHRo
aXMgb24/Cj4gPiBEZXZpbiBQcmF0ZXIKPiA+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPiA+IGdl
bWluaTovL3RpbGRlLnBpbmsvfmRldmlucHJhdGVyLwo+ID4KPiA+Cj4gPgo+ID4gT24gVHVlLCBP
Y3QgMTIsIDIwMjEgYXQgNDoxNiBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDwKPiA+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+PiBBZnRlciBpbnN0
YWxsaW5nLCBJIGhlYXJkIOKAmXNjcmVlbi1yZWFkZXIgb2Zm4oCZLCBzbyBJIHR1cm5lZCBvcmNh
IG9uLgo+ID4+IFRoZW4gSSB3YXMgdG9sZCB0byByZWJvb3QuCj4gPj4gQWZ0ZXIgcmVib290aW5n
LCBJIHR1cm5lZCBvcmNhIG9uLCB0aGVuIGxvZ2dlZCBpbi4KPiA+PiBUaGVuLCBubyBzcGVlY2gu
Cj4gPj4gQ291bGQgbm90IGdldCBvcmNhIHdvcmtpbmcuCj4gPj4KPiA+Pj4gT24gT2N0IDEyLCAy
MDIxLCBhdCA3OjEyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiA+
PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4KPiA+Pj4gQSBodWdlICsxIGZv
ciBGZWRvcmEgTUFURS4gSSBoYXZlIGl0IHJ1bm5pbmcgb24gdHdvIGNvbXB1dGVycyBoZXJlLCBv
bmUKPiA+PiBpcyBub3QgbWluZSwgYW5kIGl0IHdvcmtzIGdyZWF0LiBPcmNhIGNvbWVzIHdpdGgg
aXQsIGFuZCB5b3UgY2FuIHJ1biBhCj4gZnVsbAo+ID4+IGluc3RhbGwgYWZ0ZXIgcHJlc3Npbmcg
YWx0K2YyIHRvIG9wZW4gdGhlIHJ1biB3aW5kb3cgYW5kIHRoZW4gZW50ZXJpbmcKPiB0aGUKPiA+
PiB3b3JkIG9yY2EuIFdpZmkgZ2VuZXJhbGx5IHdvcmtzIG91dCBvZiB0aGUgYm94LCB0aG91Z2gg
dGhlCj4gTmV0d29ya01hbmFnZXIKPiA+PiBhcHBsZXQgdGhhdCBjb250cm9scyBpdCBkb2Vzbid0
IHRlbGwgeW91IHdoYXQgaXQgaXMuIFN0aWxsLCB5b3UgY2FuIGp1c3QKPiA+PiBob2xkIHRoZSBh
bHQgYW5kIGNvbnRyb2wga2V5cyBhbmQgZG91YmxlIHRhcCB0aGUgdGFiIGtleSB0byBnZXQgdG8g
dGhlCj4gdG9wCj4gPj4gcGFuZWwsIHRoZW4gc2hpZnQgdGFiIHBhc3QgdGhlIHRvZ2dsZSBidXR0
b24gYW5kIHByZXNzIHRoZSBlbnRlciBrZXkgdG8KPiA+PiBicmluZyB1cCB0aGUgbWVudSB0aGF0
IGhhcyB5b3VyIHdpZmkgY29ubmVjdGlvbnMuIFRoZXJlJ3Mgbm90IG11Y2ggbW9yZQo+IHRvCj4g
Pj4gdGVsbCBvdGhlciB0aGFuIGl0J3MgYSBncmVhdCBPUywgbm90IGp1c3QgZm9yIGxlYXJuaW5n
LCBidXQgZm9yIGRhaWx5Cj4gdXNlLAo+ID4+IGFuZCBvbmUgb2YgdGhlIGNvbXB1dGVycyBpbiB0
aGUgaG91c2UgdGhhdCBpcyBydW5uaW5nIGl0IGlzIGV2ZW4gYmVpbmcKPiB1c2VkCj4gPj4gZm9y
IGdhbWluZyBhbmQgbGl2ZSBzdHJlYW1pbmcuIElmIHlvdSBuZWVkIHRvIGRpZyBkZWVwZXIgaW50
byB0aGUgZ3V0cwo+IG9mCj4gPj4gdGhlIHN5c3RlbSwgaXQgYWxsb3dzIGZvciB0aGF0IGFzIHdl
bGwuIEkgZm9yIG9uZSBoaWdobHkgcmVjb21tZW5kIHRoZQo+ID4+IEZlZG9yYSBNQVRFIHNwaW4u
Cj4gPj4+Cj4gPj4+IH5LeWxlCj4gPj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pgo+ID4+Cj4gPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

