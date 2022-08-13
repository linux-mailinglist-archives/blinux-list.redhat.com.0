Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8675D591D1A
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 01:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660432076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SgAf11w4U/qKWaLKYtjGFP9RHg0TLcZ+8hkht1Mry+k=;
	b=CufZi0uzrSMRAPiijUeqY8nkdDLOFtnRgQ2DfiHHe1wuSVv0yuZ6usUp2YjFH7ZI8uHQg+
	sz/hTAEWuZB/pRFWL7djNRqDT8DgZGgkr+Z2gi7/bWv/FXNIPMZhcge+P8Lf1ndsb3c0Hp
	SlBM6tQma0mR/bpymISjmkVCLLkeS1A=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-652-aqxWxWX2NFyjohUxLDrMmg-1; Sat, 13 Aug 2022 19:07:53 -0400
X-MC-Unique: aqxWxWX2NFyjohUxLDrMmg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 325C23C02187;
	Sat, 13 Aug 2022 23:07:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AEEDC112131E;
	Sat, 13 Aug 2022 23:07:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4DA901946A4B;
	Sat, 13 Aug 2022 23:07:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 Aug 2022 19:07:46 -0400 (EDT)
To: Milan Zamazal <pdm@zamazal.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <87o7wnq59r.fsf@zamazal.org>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
 <87o7wnq59r.fsf@zamazal.org>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.445.1660432070.10503.blinux-list@redhat.com>
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
Cc: Blinux-list@redhat.com, speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QW5kIGFzIEkgc2FpZCBmcm9tIHRoZSBvdXRzZXQsIEkgYW0gZmFyIG1vcmUgY29uY2VybmVkIHdp
dGggaG93IHRoaXMgCmFydGljbGUgICBtYWtlcyBhY2Nlc3NpYmlsaXR5LCBhbmQgUmVkIEhhdCBj
b21taXRtZW50IHRvIGFjY2Vzc2liaWxpdHkgCmFwcGVhciAgdG8gdGhlIHB1YmxpYy4KQSBjbGFp
bSB0byBoYXZpbmcgYXV0aG9yaXR5LCB3aGVuIHN0YXRpbmcgb25lIGtub3dzIG5vdGhpbmcgYWJv
dXQgaG93IAphY2Nlc3MgY2FuIGJlIHByb3ZpZGVkIHRvIHZhcmlvdXMgcG9wdWxhdGlvbnMgZXF1
YWxseSBkZXNlcnZpbmcgaXMgCmNvbmNlcm5pbmcuCmV2ZW4gaW4gdGhlIGFydGljbGUgY29tbWVu
dHMgYW4gaW5kaXZpZHVhbCBvdXRsaW5lZCBhIG5lZWQsIHRoYXQgdGhleSBkaWQgCm5vdCBhbnRp
Y2lwYXRlIGJlaW5nIG1ldCBiZWNhdXNlIEZlZG9yYSB3YXMgY3JlYXRpbmcgYSAiYmxpbmRuZXNz
IiAKcHJvZ3JhbS4KSWYgeW91ciBhc3NvY2lhdGUgIGxlYWRzIHdpdGggc3RhdGVkIGxpbWl0cywg
IHlldCBkb2VzIG5vdCAgaW5kaWNhdGUgaGUgCnBsYW5zIHRvIGFkZHJlc3MgdGhlbSwgaW5jbHVz
aW9uIG9uIHRoaXMgcGxhdGZvcm0gZm9yIGFsbCB3aG8gc2VlayBpdCAKc2VlbXMgIGZhciBmcm9t
IGxpa2VseS4KSSBkbyBhZ3JlZSBvbiB0aGUgZm9ydW0gdGhvdWdoLiBIYWQgY29tbWVudCBzbm90
IGJlZW4gY2xvc2VkIGJ5IHRoZSB0aW1lIEkgCmdvdCAgdGhlIGFydGljbGUsIGFuZCBJIGJlZW4g
IGluIGEgcG9zaXRpb24gdG8gZG8gc28sIEkgbWlnaHQgaGF2ZSAgcmFpc2VkIAp0aGVtICBvbiB0
aGUgc3BvdC4KCgoKT24gU2F0LCAxMyBBdWcgMjAyMiwgTWlsYW4gWmFtYXphbCB3cm90ZToKCj4+
Pj4+PiAiS0wiID09IEthcmVuIExld2VsbGVuIDxrbGV3ZWxsZW5Ac2hlbGx3b3JsZC5uZXQ+IHdy
aXRlczoKPgo+ICAgIEtMPiBtYXkgSSBhc2sgZnJvbSB3aGVyZSBoZSBvYnRhaW5lZCBoaXMgc29m
dHdhcmUgZW5naW5lZXJpbmcKPiAgICBLTD4gZGVncmVlPyAgU3R1ZGllZCBjb21wdXRlciBzY2ll
bmNlPyAgUGVyaGFwcyBkaXNhYmlsaXR5IHN0dWRpZXM/Cj4gICAgS0w+IHRoZXJlIGFyZSBjZXJ0
YWlubHkgc2NvcmVzIG9mIGRpc2FibGVkIGluZGl2aWR1YWxzIHdpdGggdGhlc2UKPiAgICBLTD4g
dmFyaW91cyBsZXZlbHMgb2YgcXVhbGlmaWNhdGlvbi4uZXZlbiB3aG8gYXJlIExpbnV4IHVzZXJz
LiAgVGhlCj4gICAgS0w+IGludGVydmlldyBkaWQgbm90IGRvY3VtZW50IGEgc2luZ2xlIG9uZSwg
b3V0c2lkZSBvZiBoaXMKPiAgICBLTD4gZXhwZXJpZW5jaW5nIGJsaW5kbmVzcy4ud2hpY2ggaXMg
bm90IGdvaW5nIHRvIGluc3VyZSBoZSBjcmVhdGVzCj4gICAgS0w+IGFuIGFjY2Vzc2libGUgcGxh
dGZvcm0gZm9yIGZlZG9yYSBzaW5jZSBhY2Nlc3MgcmVmZXJzIHRvIHNldmVyYWwKPiAgICBLTD4g
cG9wdWxhdGlvbnMuICBhbmQgaGUgc3RhdGVzIGhlIGtub3dzIG5vdGhpbmcgYWJvdXQgdGhvc2Uu
Cj4KPiBJIGhhdmUgYWxyZWFkeSBzYWlkIHJlZ2FyZGluZyB0aGlzIHdoYXQgSSBmZWx0IHdhcyBu
ZWVkZWQgYW5kIEkgZG9u4oCZdAo+IGZpbmQgYXBwcm9wcmlhdGUgY29udGludWluZyB0aGF0IGRp
c2N1c3Npb24gaGVyZS4gIEnigJlkIHN1Z2dlc3QgZm9jdXNpbmcKPiBvbiBob3cgdG8gaW1wcm92
ZSBmcmVlIHNvZnR3YXJlIGFjY2Vzc2liaWxpdHkgaW5zdGVhZC4KPgo+IElmIGFueWJvZHkgY2Fy
ZXMgYWJvdXQgRmVkb3JhIGFjY2Vzc2liaWxpdHksIHRoZXJlIGlzIGFsd2F5cyBvcHBvcnR1bml0
eQo+IHRvIGhlbHAgYnkgcHJvdmlkaW5nIGZpeGVzIHRvIHJlcG9ydGVkIGJ1Z3MsIGdpdmluZyB0
ZWNobmljYWwgYWR2aWNlIG9yCj4gZmlsaW5nIGJ1Z3Mgb24gbm90IHlldCByZXBvcnRlZCBpc3N1
ZXMuICBBbGwgb2YgdGhlc2UgaXMgbmVlZGVkLCBpdOKAmXMKPiBzb21ldGltZXMgZGlmZmljdWx0
IHRvIG1vdmUgb24gd2l0aCBzb21lIGlzc3VlcyBhbmQgdG8gZ2V0IGFueSBoZWxwLgo+IE9UT0gg
dHJ5aW5nIHRvIGRlbW90aXZhdGUgcGVvcGxlIHdobyB3b3JrIG9uIGFjY2Vzc2liaWxpdHkgaXMg
Y2VydGFpbmx5Cj4gbm90IGhlbHBmdWwuCj4KPiBSZWdhcmRzLAo+IE1pbGFuCj4KPiAgICBLTD4g
T24gU2F0LCAxMyBBdWcgMjAyMiwgTWlsYW4gWmFtYXphbCB3cm90ZToKPgo+ICAgID4+Pj4+Pj4g
IktMIiA9PSBLYXJlbiBMZXdlbGxlbiA8a2xld2VsbGVuQHNoZWxsd29ybGQubmV0PiB3cml0ZXM6
Cj4gICAgPj4KPiAgICBLTD4gV2hhdCBib3RoZXJzIG1lIG1vc3QgYXJlIGhpcyBsYWNrIG9mIGFj
dHVhbCBxdWFsaWZpY2F0aW9ucywgYW5kCj4gICAgS0w+IGFic29sdXRlIGRpc21pc3NhbCBvZiB3
aGF0IGhlIGhhcyBub3QgZXhwZXJpZW5jZWQuLmFzIGlmIGhlCj4gICAgS0w+IGRlZmluZXMgTGlu
dXggdXNhZ2UgZm9yIGV2ZXJ5b25lLiAgVGhhdCBhdHRpdHVkZSBpcyBkYW5nZXJvdXMsCj4gICAg
S0w+IGJlY2F1c2UgaGUgaXMgZWR1Y2F0aW5nIHRob3NlIG91dHNpZGUgb2YgdGhlIGFjY2Vzc2li
aWxpdHkKPiAgICBLTD4gZXhwZXJpZW5jZXMsIHdobyB3aWxsIGJlbGlldmUgaGlzIGlnbm9yYW5j
ZSBpcyBmYWN0dWFsLiAgaGUgaGFzCj4gICAgS0w+IHRvIGJlIGV4cGVydCwgaXQgaXMgaGlzIGpv
Yi4KPiAgICA+Pgo+ICAgID4+IEhpIEthcmVuLAo+ICAgID4+Cj4gICAgPj4gSSBrbm93IEx1a2Fz
IHBlcnNvbmFsbHkgYW5kIEkgYWRtaXJlIGhpcyBza2lsbHMgYW5kCj4gICAgPj4gcXVhbGlmaWNh
dGlvbnMuICBJIGFsc28ga25vdyBmaXJzdCBoYW5kIHRoYXQgaGUgaXMgb3BlbiB0bwo+ICAgID4+
IGNvbnN0cnVjdGl2ZSBmZWVkYmFjayBhbmQgSSBiZWxpZXZlIGhl4oCZZCBiZSBoYXBweSB0byBi
ZSBjb3JyZWN0ZWQKPiAgICA+PiBhYm91dCBwb3NzaWJsZSB0ZWNobmljYWwgaW5hY2N1cmFjaWVz
IGluIHRoZSBpbnRlcnZpZXcuICBJdCBtYXkKPiAgICA+PiBiZSBhbHNvIGEgZ29vZCBvcHBvcnR1
bml0eSB0byBmaW5kIG91dCB3aGF04oCZcyBwb3NzaWJseSBtaXNzaW5nIGluCj4gICAgPj4gbWFr
aW5nIGFueWJvZHkgYmV0dGVyIGluZm9ybWVkLgo+ICAgID4+Cj4gICAgPj4gQXMgZm9yIOKAnGFi
c29sdXRlIGRpc21pc3NhbCBvZiB3aGF0IGhlIGhhcyBub3QgZXhwZXJpZW5jZWTigJ0sIHdoYXQK
PiAgICA+PiByZWFzb25hYmxlIGZyZWUgc29mdHdhcmUgYWx0ZXJuYXRpdmVzIHRvIGEgbGVzcyBv
ciBtb3JlIHN0YW5kYXJkCj4gICAgPj4gZGVza3RvcCB3aXRoIE9yY2EgYW5kIGEgc29mdHdhcmUg
c3ludGhlc2l6ZXIgY2FuIHlvdSBzZWUgZm9yIGEKPiAgICA+PiBjb21tb24gYmxpbmQgdXNlciB3
aG8gbmVlZHMgdG8gdXNlIGEgZnVsbHkgd29ya2luZyB3ZWIgYnJvd3NlciwKPiAgICA+PiB0byBy
ZWFkIGFuZCBwcm9jZXNzIHRleHQgZG9jdW1lbnRzLCB0byBiZSBjb21wYXRpYmxlIHdpdGggb3Ro
ZXIKPiAgICA+PiBjb21wdXRlciB1c2VycywgZXRjLj8KPiAgICA+Pgo+ICAgID4+IEFuZCBsZXTi
gJlzIGJlIHJlYWxpc3RpYy4gIFdlIGNlbGVicmF0ZSBldmVyeSBzaW5nbGUgZGV2ZWxvcGVyCj4g
ICAgPj4gaGlyZWQgdG8gaW1wcm92ZSBhY2Nlc3NpYmlsaXR5LiAgVGhpcyB0ZWxscyBzb21ldGhp
bmcgYWJvdXQgdGhlCj4gICAgPj4gc3RhdGUgb2YgdGhlIG1hdHRlcnMuICBXZSBjYW5ub3QgZXhw
ZWN0IHRoYXQgYSBzaW5nbGUgcGVyc29uIHdpbGwKPiAgICA+PiBmaXggYWxsIHRoZSBraW5kcyBv
ZiBhY2Nlc3NpYmlsaXR5IHByb2JsZW1zIGluIGFsbCB0aGUKPiAgICA+PiBlbnZpcm9ubWVudHMu
ICBMdWthcyB3b3JrcyBhdCBoaXMgam9iIGZvY3VzaW5nIG9uIGNlcnRhaW4gYXJlYXMKPiAgICA+
PiBjdXJyZW50bHkgc2VlbiB0aGVyZSBhcyB1cmdlbnQgb25lcyBhbmQgSSBhcHByZWNpYXRlIHRo
aXMKPiAgICA+PiBvcHBvcnR1bml0eS4gIEFueWJvZHkgZWxzZSBzZWVpbmcgYSBuZWVkIHRvIHdv
cmsgb24gb3RoZXIgYXJlYXMKPiAgICA+PiBpcyB3ZWxjb21lIHRvIGNvbnRyaWJ1dGUgdG8gd2hh
dGV2ZXIgc2VlcyBmaXQsIGFzIEkgZG8uCj4gICAgPj4KPiAgICA+PiBSZWdhcmRzLCBNaWxhbgo+
ICAgID4+Cj4gICAgPj4KPiAgICA+Pgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

