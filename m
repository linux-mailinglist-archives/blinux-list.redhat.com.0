Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 76003474DE6
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 23:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639520870;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2n7zivl15wgIzT2uWYsabN8PJxU0SPK+kf8lNoqrKcA=;
	b=NEFiZLXALCi95CviJGoNmXeOCoTmfXvKeYrrrWis6ouCvgJl4CR8EaOwTBYF0uj4jblsZV
	aQJv/hsDpCa2khKdsnZ+7IVdAMivhjahm4/kP1pak+z2JG8qs3o9I98dMQg6V7wo7hJzjl
	6Bot5JuDnIVXCJpU0FIIwzccPE9EReg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-601-jVL5B9bAMfuad_duRGU9mQ-1; Tue, 14 Dec 2021 17:27:48 -0500
X-MC-Unique: jVL5B9bAMfuad_duRGU9mQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C20D1823E37;
	Tue, 14 Dec 2021 22:27:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9A5B56324;
	Tue, 14 Dec 2021 22:27:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9B034CA93;
	Tue, 14 Dec 2021 22:27:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEMRc3A021974 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 17:27:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B63051427AE4; Tue, 14 Dec 2021 22:27:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1BE41402403
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:27:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32F13811E78
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:27:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-600-T14t8qAOO5uC4nIVXgDD1A-1; Tue, 14 Dec 2021 17:27:36 -0500
X-MC-Unique: T14t8qAOO5uC4nIVXgDD1A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JDCgD2Yv1z3nBT;
	Tue, 14 Dec 2021 17:27:36 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JDCgD1myVzcbc; Tue, 14 Dec 2021 17:27:36 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JDCgD1R9KzcbC;
	Tue, 14 Dec 2021 17:27:36 -0500 (EST)
Date: Tue, 14 Dec 2021 17:27:36 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <4ebfc7c4-8cdf-230d-c108-a1ac4838a410@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112141726360.9754@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<4ebfc7c4-8cdf-230d-c108-a1ac4838a410@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BEMRc3A021974
X-loop: blinux-list@redhat.com
Cc: Daniel Nash <dnl.nash@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCdzIGVudGlyZWx5IHBvc3NpYmxlISAgT25lIG9yIG1vcmUgcGFja2FnZXMgbWF5IG5vdCBo
YXZlIGJlZW4KcmUtYnVpbHQuCgoKT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSnVzdCBhIHRob3VnaHQsIGJ1dCBJIHdvbmRl
ciBpZiBweXRob24gMy4xMCBpcyB0aGUgcHJvYmxlbSBhcyB5ZXN0ZXJkYXkgSSBoYWQKPiBhIGpl
bnV4eCBzeXN0ZW0gd2hpY2ggZ290IHRoZSBweXRob24gcGFja2FnZXMgdXBkYXRlcyBhbmQgYWZ0
ZXIgcmVib290aW5nLCBJCj4gaGFkIG5vIHNwZWVjaCBzbyBwZXJoYXBzIHRoZXJlIGlzIGEgcGFj
a2FnZSBpbiBqZW51eCB3aGljaCBpcyBub3QgeWV0Cj4gY29tcGF0aWJsZS4KPgo+Cj4gTWF0dGhl
dwo+Cj4KPgo+IE9uIDEyLzE0LzIwMjEgNzo0NiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+Cj4gPiBJIGRpZCB1c2UgdGhlIGxhdGVz
dCBhcyBvZiBhYm91dCAxNSBob3VycyBhZ28uIEkgZGlkIGFsc28gdmVyaWZ5IHRoZSBpc28uCj4g
Pgo+ID4KPiA+IFRoZSBpc3N1ZSB0aGlzIHRpbWUgaXMgdGhhdCBhZnRlciBydW5uaW5nIHRoZSBp
bnN0YWxsZXIgYW5kIHJlYm9vdGluZywKPiA+IG5vdGhpbmcgc3Bva2UuIHRoZSBzZWVpbmdBSSBv
biB0aGUgaXBob25lIGNvdWxkIHJlYWQgdGhlIHNjcmVlbiBqdXN0IGZpbmUsCj4gPiBidXQgSSBj
b3VsZG4ndAo+ID4KPiA+Cj4gPiBMYXN0IHRpbWUgaXQgd2FzIG9yY2EgaW4gTWF0ZSB0aGF0IGRp
ZG4ndCB3YW50IHRvIGNvbWUgb24sIG5vIG1hdHRlciB3aGF0IEkKPiA+IGRvLgo+ID4KPiA+Cj4g
PiBJIGZvdW5kIHRoYXQgd2l0aCBKZW51eCwgbmV2ZXIgZXhwZWN0IHRoZSBzYW1lIHRoaW5nIHRv
IGdvIHdyb25nIHR3aWNlLAo+ID4gaG93ZXZlciBzb21ldGhpbmcgd2lsbCBicmVhay4KPiA+Cj4g
Pgo+ID4gV2FybSByZWdhcmRzLAo+ID4KPiA+Cj4gPiBCcmFuZHQKPiA+Cj4gPiBPbiAyMDIxLzEy
LzE0IDE0OjMxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+
IEplbnV4IGdldHMgcmVndWxhciB1cGRhdGVzIGxhdGVzdCBpcyAyMDIxLjExLjE3IHVubGVzcyB0
aGF0IGNoYW5nZWQgdG9kYXkuCj4gPj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/
wqAgSWYgSSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIGZvciBhbgo+ID4+IGlzbywgSSB3b24n
dCBpbnN0YWxsIHRoZSBpc28gd2l0aG91dCBmaXJzdCB2ZXJpZnlpbmcgaXQgd2l0aCB0aGUgLnNo
YTUxMgo+ID4+IGZpbGUuwqAgU28gdHdvIHBvdGVudGlhbCBwcm9ibGVtcyBub3QgdXNpbmcgY3Vy
cmVudCBKZW51eCBpbnN0YWxsIGlzbyBvcgo+ID4+IGZhaWxlZCB0byB2ZXJpZnkgaXNvLsKgIElm
IHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBwcm9ibGVtcywgcGxlYXNlIHdyaXRlCj4gPj4gZG5s
Lm5hc2hAZ21haWwuY29tIGFuZCBsZXQgaGltIGtub3cgdGhlIHByb2JsZW0geW91IGVuY291bnRl
cmVkIG9uIHlvdXIKPiA+PiBpbnN0YWxsIGZhaWwuwqAgVGhhdCBvbmUgaXMgdGhlIGRldmVsb3Bl
ci4KPiA+Pgo+ID4+Cj4gPj4gT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pgo+ID4+PiBIaSwKPiA+Pj4KPiA+Pj4KPiA+Pj4g
SmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQgYSBza2lwIGZv
ciBub3csIHRoYXQgaXMKPiA+Pj4gdW5sZXNzCj4gPj4+IHRoZSBkZXYgYWN0dWFsbHkgZml4ZXMg
dGhlIHRoaW5nLgo+ID4+Pgo+ID4+Pgo+ID4+PiBJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywgYmVj
YXVzZSBpdCB3YXMgdGhlIG5lYXJlc3QgVXNiIHN0aWNrIEkgY291bGQgZ3JhYgo+ID4+PiBxdWlj
a2x5Lgo+ID4+Pgo+ID4+Pgo+ID4+PiBJIG1pZ2h0IGp1c3QgZ2l2ZSB0aGUgdmFuaWxsYSBBcmNo
IElTTyBhbm90aGVyIGdvLiBXaHkgbm90Pwo+ID4+Pgo+ID4+PiBPbiAyMDIxLzEyLzE0IDEzOjA1
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4gwqDCoG9y
IE1hbmphcm8gQXJjaGl0ZWN0Lgo+ID4+Pj4KPiA+Pj4+IFBlcnNvbmFsbHkuIEkndmUgaGFkIHN1
Y2Nlc3Mgd2l0aCB0aGUgdmFuaWxsYSBBcmNoIElTTyBhbmQgdGhlIGd1aWRlZAo+ID4+Pj4gaW5z
dGFsbGVyICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIHRh
bGtpbmcsIHdlbnQKPiA+Pj4+IHRocm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRpbHMvZXNw
ZWFrdXAgYW5kIHRoZW4gcHV0Cj4gPj4+PiBzcGVlY2gtZGlzcGF0Y2hlci9PcmNhL3ZvaWNlcyBh
bmQgYSB3aW5kb3cgbWFuYWdlciBvbiBvbmNlIHRoZSBzeXN0ZW0gd2FzCj4gPj4+PiBpbnN0YWxs
ZWQuCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IEplbnV4IGhhcyBuZXZlciByZWFsbHkgd29ya2VkIGZv
ciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQgYWxsLAo+ID4+Pj4gd2hlcmVhcwo+ID4+Pj4g
dGhlIG9mZmljaWFsIGFyY2ggSVNPIGlzIHdvcmtpbmcgcmF0aGVyIHdlbGwsIGFuZCBJIGR1bm5v
IGlmIHRoZQo+ID4+Pj4gQXJjaGl0ZWN0Cj4gPj4+PiBlZGl0aW9uIGlzIDM2LzY0IGJpdCBvciAz
MmJpdCBvbmx5IG9yIDY0Yml0IG9ubHkuIEFkbWl0dGVkbHksIEkndmUgZ290IGEKPiA+Pj4+IDY0
Yml0IFVFRkkgc3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3MgZmxhd2xlc3NseSBvbiBp
dCBob3dldmVyLCBidXQKPiA+Pj4+IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJvYmFi
bHkgZG9uJ3Qgd2FudCB0byBoZWFyIGl0IGlmIHlvdSBhcmUKPiA+Pj4+IHNldAo+ID4+Pj4gb24g
dXNpbmcgSmVudXggaG93ZXZlci4KPiA+Pj4+Cj4gPj4+PiBPbiAxMi8xNC8yMSAwOToxOCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+PiBIaSBhbGwsCj4g
Pj4+Pj4KPiA+Pj4+PiBJIGRlY2lkZWQgdG8gZ2l2ZSBKZW51eCBhbm90aGVyIGdvLCBsYXN0IHRp
bWUsIG5vIG1hdHRlciB3aGF0IEkgdHJpZWQsIEkKPiA+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0
byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcgaW4gdG8gdGhlIHN5c3RlbS4KPiA+Pj4+Pgo+ID4+Pj4+
IERvZXMgYW55b25lIGhhdmUgYW55IGFkdmljZT8KPiA+Pj4+Pgo+ID4+Pj4+IEFsc28sIGlmIHRo
aXMgZG9lc24ndCB3b3JrIG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSBNYW5qYXJv
Cj4gPj4+Pj4gYXJjaGl0ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVk
IGEgbGl0dGxlIHdoaWxlIGFnbywgYW5kCj4gPj4+Pj4gaWYsIGFzIEkgc2FpZCwgSmVudXggZG9l
c24ndCB3b3JrIG91dCwgSSdkIGxpa2UgdG8gZ2l2ZSB0aGF0IG9uZSBhIGdvLgo+ID4+Pj4+Cj4g
Pj4+Pj4gVGhhbmtzIHNvIGxvbmcuCj4gPj4+Pj4KPiA+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4gPj4+
Pj4KPiA+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4gPj4+Pj4KPiA+Pj4+PiBTZW50IGZyb20gbXkg
TWFjQm9vayBBaXIKPiA+Pj4+Pgo+ID4+Pj4+IENvbnRhY3Q6Cj4gPj4+Pj4KPiA+Pj4+PiBQaG9u
ZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+Cj4gPj4+Pj4KPiA+Pj4+
PiBFbWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1haWx0bzpicmFuZHQuc3RlZW5r
YW1wQGdtYWlsLmNvbT4KPiA+Pj4+Pgo+ID4+Pj4+IFR3aXR0ZXI6IEBicmFuZHRzdGVlbmthbXAg
PGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1wPgo+ID4+Pj4+Cj4gPj4+Pj4K
PiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Cj4gPj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4K
PiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

