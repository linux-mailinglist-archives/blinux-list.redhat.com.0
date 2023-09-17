Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF087A35E8
	for <lists+blinux-list@lfdr.de>; Sun, 17 Sep 2023 16:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694961629;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4wl1+FUt75hm7aQkB5bi6GlXyN4YNNNUKIQa9HArUng=;
	b=L/U5tDEpN56MVodkla57Epepu4aBoj/WtKKSf7qYj2GYovIhPxAwXZ8CSnYcJvo/r4c6Ce
	Hs4MwTJJNj0PpXmou/0V8vfCOYAB1arplUveGiQO3JKYu4xbI8G3fEBrXFWuDoAxAtDKgs
	LstUULypvfVbDzKJaMzUl/kDDDKBhtc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-451-6VxnVOHHPJmiCr1LQYTBQg-1; Sun, 17 Sep 2023 10:40:25 -0400
X-MC-Unique: 6VxnVOHHPJmiCr1LQYTBQg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BB98101A53B;
	Sun, 17 Sep 2023 14:40:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91BB5170EE;
	Sun, 17 Sep 2023 14:40:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ED3A419465A2;
	Sun, 17 Sep 2023 14:40:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 17 Sep 2023 14:39:49 +0000
To: blinux-list@redhat.com
Subject: Re: UMAI 0.4: Welcome on Ubuntu Mate 23.04
In-Reply-To: <mailman.109.1694957977.855706.blinux-list@redhat.com>
References: <mailman.90.1694915101.855698.blinux-list@redhat.com>
 <mailman.109.1694939370.855701.blinux-list@redhat.com>
 <mailman.109.1694957977.855706.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.128.1694961613.855700.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgp5ZXMsIHBpcHggaXMgdGhlIHdheSByZWNvbW1lbmRlZCBieSBEZWJpYW4gYW5kIGl0
cyBmb3JrcywgaW5jbHVkaW5nIFVNLiAKSG93ZXZlciwgaW4gb3JkZXIgZm9yIGFuIGFwcGxpY2F0
aW9uIHRvIGJlIGluc3RhbGxhYmxlIGJ5IHBpcHgsIGl0IGZpcnN0IApuZWVkcyB0byBiZSBwYWNr
YWdlZCBmb3IgaXQsIHdoYXQncyB1bmZvcnR1bmF0ZWx5IG5vdCB0aGUgY2FzZSB3aXRoIApvY3Jk
ZXNrdG9wLgoKSSB3b25kZXIgd2hldGhlciBpdCBhY3R1YWxseSBjb3VsZCBiZSBkb25lLCBzaW5j
ZSBvY3JkZXNrdG9wIGlzIG5vdCAKcXVpdGUgc3RhbmRhbG9uZSBQeXRob24gYXBwLCBpdCByZXF1
aXJlcyBhIGZldyBkZXBlbmRlbmNpZXMgbGlrZSAKdGVzc2VyYWN0IHRoYXQgbmVlZCB0byBiZSBp
bnN0YWxsZWQgdmlhIHRoZSBkaXN0cmlidXRpb24ncyBwYWNrYWdlIG1hbmFnZXIuCgoKSXQncyBz
b21ldGhpbmcgdGhhdCBjb3VsZCBiZSB3b3J0aCBsb29raW5nIGludG8gaW4gdGhlIGZ1dHVyZSwg
dGhvdWdoLCAKcmlnaHQgbm93IEkndmUgY2hvc2VuIGHCoCBmYXN0ZXIgYW5kIHNpbXBsZXIgYXBw
cm9hY2gsIHdoZXJlIGEgdmVudiAKZW52aXJvbm1lbnQgaXMgY3JlYXRlZCBhbmQgc2ltcGx5IHBy
b3ZpZGVkIGFzIGEgcnVudGltZS4KCkl0J3Mgbm90IHBhcnRpY3VsYXJseSBzbGljaywgYnV0IEkg
ZG91YnQgYSBwaXB4IGluc3RhbGxhdGlvbiB3b3VsZCBiZSAKZWl0aGVyLCB0aGlzIGlzIHRoZSBj
aG9pY2Ugb2YgZGVwZW5kZW5jeSBwcm9ibGVtcyB2cy4gY29udGFpbmVycywgc2l6ZSAKdnMuIG9y
ZGVyLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMTcuIDkuIDIwMjMgbyAxNToz
OSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IHBpcHgg
aXMgYXZhaWxhYmxlIGluIHNvbWUgZGlzdHJvcyBhbmQgb25jZSBwaXB4IGdldHMgaW5zdGFsbGVk
IG9uZSBwYWNrYWdlCj4gaW5zdGFsbGVkIHdpdGggcGlweCBiZWNvbWVzIGF2YWlsYWJsZSBnbG9i
YWxseSB0aGF0IGlzIGpybmwuICBBdCBsZWFzdAo+IHRoYXQncyB3aGF0IGhhcHBlbmVkIG9uIGRl
YmlhbiBib29rd29ybS4KPgo+Cj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4g
IlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6
IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+IG9yZGVy
LiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPgo+IE9uIFN1biwgMTcgU2VwIDIwMjMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gQ291bGQgaXQgd29yayBvbiBv
dGhlciBEZWJpYW4tYmFzZWQgZGlzdHJvcyBsaWtlIExpbnV4IG1pbnQ/Cj4+Cj4+IE9uIDkvMTcv
MjAyMyAyOjQ0IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Pj4gSGVsbG8gZXZlcnlvbmUsCj4+PiBhcyB0aGUgdGl0bGUgc3VnZ2VzdHMsIHRvZGF5IEkgcmVs
ZWFzZWQgYSBuZXcgdmVyc2lvbiBvZiBVTUFJLCB0aGUKPj4+IFVidW50dSBNYXRlIEFjY2Vzc2li
aWxpdHkgSW1wcm92ZXIgdXRpbGl0eS4KPj4+Cj4+PiBJIGZlbHQgdGhpcyBzdGVwIHRvIGJlIGlu
Y3JlYXNpbmdseSBtb3JlIGFuZCBtb3JlIG5lY2Vzc2FyeSwgYXMgdGhlIG9yY2EKPj4+IGFuZCBh
Y2Nlc3NpYmlsaXR5IGRldmVsb3BtZW50IGluIGdlbmVyYWwgaXMgcHJvZ3Jlc3NpbmcgYW5kIGxl
YXZpbmcgdGhlCj4+PiBsYXN0IFVNIExUUyBpbiB0aGUgZHVzdC4gV2F0J3Mgc29tZXRoaW5nIEkg
cmVhbGx5IGxvdmUgdG8gc2VlLCBleGNlcHQKPj4+IFVNQUkgbmVlZGVkIHNvbWUgdXBkYXRlcyB0
b28gYXMgYSBjb25zZXF1ZW5jZS4KPj4+Cj4+PiBFaXRoZXIgd2F5LCAwLjQgaXMgaGVyZSwgYnJp
bmdpbmcgdGhlIHN1cHBvcnQgZm9yIFVidW50dSBNYXRlIDIzLjA0LCBhbmQKPj4+IGFsbCB0aGUg
bmV3IGFjY2Vzc2liaWxpdHkgYmVuZWZpdHMuCj4+Pgo+Pj4gSWYgeW91IGZvciBzb21lIHJlYXNv
biBwcmVmZXIgc3RpY2tpbmcgdG8gTFRTLCB0aGF0J3MgZmluZSB0b28uIDIyLjA0Cj4+PiByZW1h
aW5zIHN1cHBvcnRlZCBsaWtlIGJlZm9yZSwgYW5kIHdpbGwgc3RheSB0aGF0IHdheSBhdCBsZWFz
dCB1bnRpbCAyNC4wNC4KPj4+Cj4+PiBUaGF0J3Mgbm90IHRoZSBvbmx5IGNoYW5nZSwgdGhvdWdo
LiBCZXNpZGVzIGhhdmluZyB0aGUgbGF0ZXN0IGdub21lLTQ1Cj4+PiBPcmNhLCAwLjQgYWxzbyBy
ZW1vdmVzIHRoZSBkZWIgRmlyZWZveCBpbnN0YWxsYXRpb24sIG1lYW5pbmcgc2FmZXIKPj4+IGJy
b3dzaW5nIGFuZCBsZXNzIGFubm95YW5jZSB3aXRoIHJlaW5zdGFsbHMsIHdlaXJkbHkgYmVoYXZp
bmcgaWNvbnMgZXRjLgo+Pj4KPj4+IGFub3RoZXIgaW1wb3J0YW50IGNoYW5nZSBpcyByZWxhdGVk
IHRvIG9jcmRlc2t0b3AuIEFzIHRob3NlIG9mIHlvdQo+Pj4gcnVubmluZyB0aGUgcmVjZW50IHZl
cnNpb25zIG9mIFVidW50dSAvIERlYmlhbiBoYXZlIGxpa2VseSBub3RpY2VkLAo+Pj4gdGhlcmUg
aXMgYSBuZXcgcG9saWN5IGJlaW5nIGVuZm9yY2VkIGluIHJlZ2FyZHMgdG8gd29ya2luZyB3aXRo
IFB5dGhvbgo+Pj4gcGFja2FnZXMuIEl0J3Mgbm8gbG9uZ2VyIHBvc3NpYmxlIHRvIGluc3RhbGwg
Z2xvYmFsIHBhY2thZ2VzIC8KPj4+IGRlcGVuZGVuY2llcyBsaWtlIGJlZm9yZSwgZXZlcnkgUHl0
aG9uIGFwcCBuZWVkcyB0byBoYXZlIGl0cyBvd24gdmlydHVhbAo+Pj4gZW52aXJvbm1lbnQsIHdo
ZXJlIGl0J3MgcmVzcG9uc2libGUgZm9yIGhhbmRsaW5nIGl0cyBkZXBlbmRlbmNpZXMuCj4+Pgo+
Pj4gSW4gb3RoZXIgd29yZHMsIHdlJ3JlIG5vdyBmb3JjZWQgdG8gZG8gdGhpbmdzIHByb3Blcmx5
LCB3aGF0J3MgcXVpdGUgYSBtZXNzLgo+Pj4KPj4+IEZvcnR1bmF0ZWx5LCBpZiB5b3UgZG9uJ3Qg
d2FudCB0byBmaWRkbGUgd2l0aCBlbnZpcm9ubWVudHMsIHBhY2thZ2VzIGFuZAo+Pj4gZGVwZW5k
ZW5jaWVzLCBVTUFJIHdpbGwgbm93IGRvIHRoaXMgZm9yIHlvdSwgb24gYWxsIHN1cHBvcnRlZCBz
eXN0ZW1zLgo+Pj4KPj4+IEknbSByZWFsbHksIHJlYWxseSBnbGFkIEkgY2FuIHByb3ZpZGUgdGhp
cyBmdW5jdGlvbmFsaXR5LCBvY3JkZXNrdG9wIGlzCj4+PiBhIGNyaXRpY2FsbHkgZXNzZW50aWFs
IGFjY2Vzc2liaWxpdHkgdG9vbCwgYW5kIEkgcmVhbGx5IGNhbid0IGltYWdpbmUKPj4+IGFueSBu
ZXdjb21lciB0byBMaW51eCB3aG8gbWF5IGhhdmUgbm8gdGVjaG5pY2FsIGtub3dsZWRnZSAvIHNr
aWxscyBhdAo+Pj4gYWxsIGRlYWxpbmcgd2l0aCB0aGlzLgo+Pj4KPj4+IFNlZToKPj4+IGh0dHBz
Oi8vZ2l0aHViLmNvbS9SYXN0aXNsYXZLaXNoL3VtYWkKPj4+Cj4+PiBmb3IgbW9yZSBpbmZvcm1h
dGlvbi4KPj4+Cj4+PiBIYXZlIGZ1bgo+Pj4KPj4+IEJlc3QgcmVnYXJkcwo+Pj4KPj4+IFJhc3Rp
c2xhdgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4+Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

