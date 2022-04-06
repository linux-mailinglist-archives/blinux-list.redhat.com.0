Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567B4F69A3
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 21:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649272472;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HBXBl/5qJCcsZTKRLQmZpldFaRIkAWcE91c/KvxJNEY=;
	b=RBAj9wnRZqTF9aO+1IMM89y/WgL6OiOVad7nIKIh+nD9shlpvhlwwRKZzva1dbcHoFM3cs
	VntI+RHrk8yU0HBbut8lGZlZyXW2lk2YP71x6gCtOKPtQ6mViZ/y45IHDWIG4xyNWbGZdv
	35BD1cwULMIzRZrgbSeqbONre7n4LTo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-654-uoj750SUNsG31LWkOHhIlQ-1; Wed, 06 Apr 2022 15:14:29 -0400
X-MC-Unique: uoj750SUNsG31LWkOHhIlQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 584901C01515;
	Wed,  6 Apr 2022 19:14:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E16DF40CF918;
	Wed,  6 Apr 2022 19:14:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 807D9194036B;
	Wed,  6 Apr 2022 19:14:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 15:14:06 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fwd: [systemd-devel] Dropping split-usr/unmerged-usr support
In-Reply-To: <mailman.6644.1649260179.111205.blinux-list@redhat.com>
References: <05cf10d04274dcbff07fed88e98dca2eebb24b7d.camel@gmail.com>
 <mailman.6716.1649249882.111207.blinux-list@redhat.com>
 <mailman.6644.1649260179.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.6851.1649272455.111207.blinux-list@redhat.com>
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
Cc: "Patrick J. VOLKERDING" <volkerdi@slackware.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUncyBhYm91dCAxNCBsaW51eCBzeXN0ZW1zIHRoYXQgZG9uJ3QgdXNlIHN5c3RlbWQgYW5k
IGlmIG1lbW9yeSBzZXJ2ZXMKdGhvc2UgZ290IGFuIGFydGljbGUgb24gaXRzZm9zcy5jb20uICBC
eSB0aGUgd2F5IG5laXRoZXIgc2xhY2t3YXJlIG5vcgpzbGludCB3ZXJlIGZpcnN0IHJlY29nbml6
ZWQgYW1vbmcgdGhpcyBudW1iZXIgd2hlbiB0aGUgY291bnQgd2FzIGRvd24gYXQKMTEsIGJ1dCBJ
IHNlbnQgYSBjb21tZW50IGluIHRoYXQgbWF5IGhhdmUgZ290IHB1Ymxpc2hlZCBhbmQgY2F1c2Vk
IGFuCnVwZGF0ZS4KCgpPbiBXZWQsIDYgQXByIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhpIEltbW8gYW5kIEFsbCwKPgo+IERpZGllciBoZXJlLgo+
Cj4gdGhhbmtzIGZvciB0aGUgaGVhZHMtdXAsIGFuc3dlciBpbmxpbmUuCj4KPiBMZSAwNi8wNC8y
MDIyID8gMTQ6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKg
Ogo+ID4gSGkgQWxsIQo+ID4KPiA+IEltbW8gaGVyZS4KPiA+Cj4gPiBTb3JyeSBmb3IgbXkgaWdu
b3JhbmNlIGFuZCBkaXN0dXJiaW5nIHRoZSB1c3VhbCBjaGF0dGVyIG9uIHRoZSBsaXN0Lgo+ID4K
PiA+IEkgZ3Vlc3MgdGhpcyBpcyBhdCBsZWFzdCBmb3IgRGlkaWVyLiBUaGVyZSBhcmUgYWxzbyBv
dGhlciBzcGVha2luZwo+ID4gZGlzdHJvcyBvdXQgdGhlcmUgdGhhdCBzeXN0ZW1kIHBlb3BsZSBt
aWdodCBub3QgYmUgYXdhcmUgb2Ygc28gSQo+ID4gZm9yd2FyZGVkIHRoZSBvcmlnaW5hbCBtZXNz
YWdlIGhlcmUuCj4gPgo+ID4gRmVlbCBmcmVlIHRvIGFuc3dlciB0byBteSBtZXNzYWdlLiBJJ2xs
IGZvcndhcmQgaXQgdG8gc3lzdGVtZC1kZXZlbAo+ID4gaWYgbmVlZGVkLgo+ID4KPgo+IFdlbGws
IFNsaW50Ogo+IDEuIGlzIGJhc2VkIG9uIFNsYWNrd2FyZSBhbmQgdXNlcyB0aGUgc2FtZSBsYXlv
dXQsIHNvIEkgZm9yd2FyZCB0aGlzIGFuc3dlciB0bwo+IGl0cyBtYWludGFpbmVyLCBQYXRyaWNr
IEouIFZvbGtlcmRpbmcgKGhlIGlzIG5vdCBzdWJzY3JpYmVkIHRvIHRoaXMgbGlzdCBhcyBmYXIK
PiBhcyBJIGtub3cpLgo+IDIuIGFzIFNsYWNrd2FyZSwgU2xpbnQgZG9lcyBub3QgdXNlcyBzeXN0
ZW1kIGFzIGl0cyBpbml0IHN5c3RlbSBzbyBmYXIgYnV0Cj4gaW5jbHVkZXMga2luZCBvZiBhICBj
b21wYXRpYmlsaXR5IGxheWVyLCBtb3N0bHkgZWxvZ2luZC4gV2UgYWxzbyB1c2UgZXVkZXYKPiBp
bnN0ZWFkIG9mIHVkZXYuCj4gMy4gQXMgU2xhY2t3YXJlLCBTbGludCBoYXMgYW4gInVubWVyZ2Vk
LXVzciIgbGF5b3V0IHNvIGZhciwgaS5lLiBiaW4sIHNiaW4gYW5kCj4gbGliKiBhcmUgbm90IHN5
bWxpbmtzIHRvIHRoZWlyIGNvdW50ZXJwYXJ0cyB1bmRlciAvdXNyLgo+Cj4gVGhpcyBiZWluZyBz
YWlkIEkgZG8gbm90IGtub3cgd2hpY2ggY2hhbmdlcyBQYXRyaWNrIGludGVuZHMgdG8gZG8gZm9y
IHRoZSBuZXh0Cj4gU2xhY2t3YXJlIHZlcnNpb24gb24gdGhpcyByZXNwZWN0IGJ1dCBpbnRlbmQg
dG8gZm9sbG93IHN1aXRlIHdpdGggU2xpbnQuCj4KPiA+IERpc3RyaWJ1dGlvbiBtYWludGFpbmVy
cyBtaWdodCBhbHNvIHdhbnQgdG8gam9pbiBzeXN0ZW1kLWRldmVsIGlmCj4gPiBub3QgYWxyZWFk
eSB0aGVyZS4KPgo+IFdoYXQgSSBmYWlsIHRvIGdyYXNwIGlzIHRoZSBwb3NzaWJsZSBjb25zZXF1
ZW5jZXMgb2YgdGhpcyBjaGFuZ2UgZm9yCj4gZGlzdHJpYnV0aW9ucyBub3QgdXNpbmcgc3lzdGVt
ZCBhcyB0aGVpciBpbml0IHN5c3RlbS4gQW55IGNsdWUgb24gdGhhdCBpcwo+IHdlbGNvbWUuIElm
IHVuZGVyc3RhbmQgd2VsbCwgYXMgbG9uZyBhcyB3ZSBkbyBub3QgY2hhbmdlIG91ciBsYXlvdXQg
IHdlIGRvIG5vdAo+IG5lZWQgdGhhdCBvdXIgKGN1c3RvbSBtYWRlLCBub3QgdXNpbmcgZHJhY3V0
KSBpbml0cmFtZnMgaW1wbGVtZW50cyB0aGUgY2hhbmdlcwo+IG1lbnRpb25lZCBpbiBodHRwczov
L2ZlZG9yYXByb2plY3Qub3JnL3dpa2kvRmVhdHVyZXMvVXNyTW92ZQo+Cj4gQ2hlZXJzLAo+IERp
ZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiBkaWRpZXIgYXQg
c2xpbnQgZG90IGZyCj4KPiA+IC0tLS0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0tLS0KPiA+
IFN1YmplY3Q6IFtzeXN0ZW1kLWRldmVsXSBEcm9wcGluZyBzcGxpdC11c3IvdW5tZXJnZWQtdXNy
IHN1cHBvcnQKPiA+IERhdGU6IDIwMjItMDQtMDUgMjM6MDcKPiA+IEZyb206IEx1Y2EgQm9jY2Fz
c2kgPGx1Y2EuYm9jY2Fzc2lAZ21haWwuY29tPgo+ID4gVG86IHN5c3RlbWQtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gPgo+ID4gSGksCj4gPgo+ID4gQXMgcGFydCBvZiBvdXIgc3ByaW5n
IGNsZWFuaW5nIGVmZm9ydCwgd2UgYXJlIGNvbnNpZGVyaW5nIHdoZW4gdG8gZHJvcAo+ID4gc3Vw
cG9ydCBmb3Igc3BsaXQvdW5tZXJnZWQtdXNyIGZpbGVzeXN0ZW0gbGF5b3V0cy4KPiA+Cj4gPiBB
IGJ1aWxkLXRpbWUgd2FybmluZyB3YXMgYWRkZWQgbGFzdCB5ZWFyOgo+ID4KPiA+IGh0dHBzOi8v
Z2l0aHViLmNvbS9zeXN0ZW1kL3N5c3RlbWQvY29tbWl0LzlhZmQ1ZTdiOTc1ZTgwNTFjMDExZmY5
YzA3Yzk1ZTgwYmQ5NTQ0NjkKPiA+Cj4gPiBXZSBhcmUgbm93IGFkZGluZyBhIHJ1bnRpbWUgdGFp
bnQgYXMgd2VsbC4KPiA+Cj4gPiBXaGljaCBkaXN0cmlidXRpb25zIGFyZSBsZWZ0IHJ1bm5pbmcg
d2l0aCBzeXN0ZW1kIG9uIGEgc3BsaXQvdW5tZXJnZWQtCj4gPiB1c3Igc3lzdGVtPwo+ID4KPiA+
IChyZW1pbmRlcjogd2UgcmVmZXIgdG8gYSBzeXN0ZW0gdGhhdCBib290cyB3aXRob3V0IGEgcG9w
dWxhdGVkIC91c3IgYXMKPiA+IHNwbGl0LXVzciwgYW5kIGEgc3lzdGVtIHdoZXJlIGJpbiwgc2Jp
biBhbmQgbGliKiBhcmUgbm90IHN5bWxpbmtzIHRvCj4gPiB0aGVpciBjb3VudGVycGFydHMgdW5k
ZXIgL3VzciBhcyB1bm1lcmdlZC11c3IpCj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cg==

