Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0860944066C
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 02:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635554070;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fMbh5n5BOAXjSwvikexSmKo2q7Z0jlSiB2ZkJjVTQCo=;
	b=Hwy18QvvdI842XHZ+2+N8CPDL7SG2h1kIkPKJBAyLLkn5FMF2ah3f8DMhlKiUdcNRzZv7a
	DMnSO2ZgtswsrlWjFzVSx2I5wWRbd+v+CksFpNrJLGtqdJfHUpFCWfBiDuDSfkgilQ6o0E
	NwUO5IH+wOOCeF1w6GCvw8F+6My/KeQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-jx3qQJFOMiu1z9RTb53kuw-1; Fri, 29 Oct 2021 20:34:26 -0400
X-MC-Unique: jx3qQJFOMiu1z9RTb53kuw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CCDBF8018AC;
	Sat, 30 Oct 2021 00:34:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12F8519D9F;
	Sat, 30 Oct 2021 00:34:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4E664A703;
	Sat, 30 Oct 2021 00:34:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19U0YE2v032345 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 20:34:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EAC7D400F3EC; Sat, 30 Oct 2021 00:34:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E70EE40149AF
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 00:34:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEE54866DF1
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 00:34:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-116-fXPLu8hFOoaZVzmS7q0egQ-1; Fri, 29 Oct 2021 20:34:12 -0400
X-MC-Unique: fXPLu8hFOoaZVzmS7q0egQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hh0fW4r2xz4KPT
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 20:34:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hh0fW40XRzcbc; Fri, 29 Oct 2021 20:34:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hh0fW3b0wzcbP
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 20:34:11 -0400 (EDT)
Date: Fri, 29 Oct 2021 20:34:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Coconut speech at startup
In-Reply-To: <CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110292032280.23789@panix1.panix.com>
References: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
	<CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19U0YE2v032345
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

c3VwZXItdCBtYXkgZ2V0IHlvdSBhIHRlcm1pbmFsIHdoaWNoIGdpdmVzIHlvdSBhIGNvbW1hbmQg
bGluZS4gIFlvdSdsbAprbm93IGlmIGEgJCBjb21lcyB1cCBhcyBhICBwcm9tcHQgb3IgYSAjIGNv
bWVzIHVwLiAgRmFpbGluZyB0aGF0IGFsdC0rZjIKdGhlbiB0eXBlIG1hdGUtdGVybWluYWwgb3Ig
Z25vbWUtdGVybWluYWwgYW5kIGhpdCBlbnRlci4KCgpPbiBGcmksIDI5IE9jdCAyMDIxLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBUaGFua3MgYSBtaWxsaW9u
IGZvciB5b3VyIGhlbHAuIEkgdHJpZWQgeW91ciAgc3VnZ2VzdGlvbnMgdG8gbm8gYXZhaWwuIEhv
d2V2ZXIsIHNvbWV0aGluZyBzdHJhbmdlIGhhcHBlbmVkLCB3aGVuIEkgY29ubmVjdGVkIG15IGJy
YWlsbGUgZGlzcGxheSBpdCBjb25uZWN0ZWQgdG8gYWNjZXNzaWJsZSBjb2NvbnV0IHJpZ2h0IGF3
YXkuIEkgd2FzIGFibGUgdG8gYnJvd3NlIHRoZSBtZW51cyBhbmQgY29ubmVjdCB0byB0aGUgaW50
ZXJuZXQuIER1cmluZyBteSBicm93c2luZyB0aGUgc3BlZWNoIGNhbWUgb24uCj4gSSBoYXZlIHR3
byBxdWVzdGlvbnMsIGhvdyBjYW4gSSBnZXQgYSBjb21tYW5kIGxpbmUgcHJvbXB0PyBNeSBzZWNv
bmQgcXVlc3Rpb24gaXMsIHdoYXQgaXMgdGhlIGNvbW1hbmQgdG8gdHVybiBvZmYgdGhlIGNvbXB1
dGVyPyBBbHQgZjQgZGlkIG5vdCB0YWtlIG1lIHRoZXJlLgo+IENoZWVycywKPiBJYnJhaGltCj4K
Pgo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPgo+ID4gT24gT2N0IDI5LCAyMDIxLCBhdCAxOjU2IFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPiA+Cj4gPiDvu79QcmVzcyBhbHQgcGx1cyBGMS4KPiA+IERvIHlvdSBoZWFy
IHNwZWVjaD8KPiA+IElmIG5vdCwgcHJlc3MgZXNjYXBlLgo+ID4gUHJlc3MgYWx0IHBsdXMgRjIK
PiA+IFR5cGUKPiA+IG9yY2EKPiA+IFByZXNzIGVudGVyLgo+ID4gVGhpcyBzaG91bGQgZml4IGl0
Lgo+ID4KPiA+Cj4gPiBTZW50IGZyb20gbXkgaVBob25lCj4gPgo+ID4+IE9uIE9jdCAyOSwgMjAy
MSwgYXQgMToyNSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiDvu79JcyB0aGVyZSBhIHN0ZXAgYnkg
c3RlcCB0dXRvcmlhbCBvbiBob3cgdG8gc3RhcnQ/Cj4gPj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nl
c3NpYmxlIGNvY29udXQgaXNvIGFuZCBwdXQgaXQgb24gYSBib290YWJsZSB1c2IgZHJpdmUuIEkg
d2FzIGFibGUgdG8gYm9vdCB0aGUgbWFjaGluZSBmcm9tIHRoZSB1c2IsIGJ1dCB0aGVyZSB3YXMg
bm8gc3BlZWNoIHRvIGd1aWRlIG1lLiBJIHdhcyBhYmxlIHRvIGNvbmZpcm0gdGhhdCBJIGluZGVl
ZCBib290ZWQgZnJvbSB1c2Igd2l0aCBhY2Nlc3NpYmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBo
b25lIGNhbWVyYS4gSSBoYXZlIG5vIGlkZWEgaG93IHRvIGdldCB0aGUgc3BlZWNoIGdvaW5nLiBT
byBwbGVhc2UgaWYgeW91IGhhdmUgYSB0dXRvcmlhbCwgc2VuZCBpdCBteSB3YXkuCj4gPj4gSWJy
YWhpbQo+ID4+Cj4gPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+ID4+Cj4gPj4+PiBPbiBPY3QgMjks
IDIwMjEsIGF0IDEwOjI5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4KPiA+Pj4g77u/SGVsbG8sCj4gPj4+
IFdoZW4gdXNpbmcgdGhlIGxpdmUgQ0QsIFRoZSBzY3JlZW5yZWFkZXIgc3RhcnRlZCBhdCBib290
Lgo+ID4+PiBCdXQgYSAgYWZ0ZXIgSSBpbnN0YWxsZWQgaXQsIEkgZ2V0IG5vIHNjcmVlbnJlYWRl
ciBhdCBzdGFydHVwLgo+ID4+PiBBbGwgc2V0dGluZ3MgYXMgZmFyIGFzIEkga25vdyBhcmUgY29y
cmVjdC4KPiA+Pj4gVGhlIG9ubHkgd2F5IHRvIGdldCBzcGVlY2ggaXMgdG8gZ28gdG8gdGhlIHJ1
biB3aW5kb3cgd2l0aAo+ID4+PiBBbHQrRjIKPiA+Pj4gVGhlbiB0eXBlCj4gPj4+IG9yY2EKPiA+
Pj4gQW5kIHByZXNzIGVudGVyLgo+ID4+PiBJIHJlaW5zdGFsbGVkIGxpbnV4IGFuZCBnb3QgdGhl
IHNhbWUgcmVzdWx0Lgo+ID4+PiBBcyBJIHdhcyBkb2luZyB0aGUgaW5zdGFsbCwgSSBjaGVja2Vk
IHRoZSBib3ggdG8gZ2V0IHVwZGF0ZXMgZHVyaW5nIHRoZSBpbnN0YWxsLiBDb3VsZCB0aGlzIGJl
IHRoZSBjYXVzZSBvZiBteSB0cm91YmxlPwo+ID4+Pgo+ID4+PiBUaGFua3MsCj4gPj4+IFJvYgo+
ID4+Pgo+ID4+Pgo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+ID4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4KPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gPgo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

