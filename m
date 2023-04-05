Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 182066D802E
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 16:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680706773;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ilCb46qBqbw93H6kivtePSukFNzLyniba2/zzrVij44=;
	b=HcCnooN0gWckG7sIHCK1tQik6I3T0jDVjCz4H8F1NVe/VRRMuROcZxin5ZI0Mk03U34zaH
	yxBk30hfefwri1hit+ZzdpMM26/5DDK/ES4iJf7tq9LgI8uEcyYOvYobecqkLln/68XWJR
	sZgramM2HLmdMyOBg8RQhq/pGzp224I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-29-vb0c_xQ0PceiHtiuYBWAJg-1; Wed, 05 Apr 2023 10:59:31 -0400
X-MC-Unique: vb0c_xQ0PceiHtiuYBWAJg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A94B2806048;
	Wed,  5 Apr 2023 14:59:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7EEAC492C14;
	Wed,  5 Apr 2023 14:59:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE64119465A4;
	Wed,  5 Apr 2023 14:59:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 16:59:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: blinux-list@redhat.com
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
In-Reply-To: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
Message-ID: <mailman.1949.1680706766.558770.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpMZSAwNS8wNC8yMDIzIMOgIDExOjA4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gU28sIGdpdmVuIFNvbHVzJ3MgYXBwYXJlbnQgc3VkZGVuIGRl
bWlzZS4uLndoaWNoIHBhaW5zIG1lIHNpbmNlIEkgbGlrZSB0aGUKPiBkaXN0cm8uIEknbSBvbiB0
aGUgaHVudCBmb3IgYSBkZWNlbnQsIHJvbGxpbmcgZGlzdHJvCj4gCj4gSSd2ZSBnb3QgRGViaWFu
IHRlc3N0aW5nIGF0b3AgbXkgbGlzdC4KPiAKPiBTbyBoZXJlJ3MgbXkgcXVlc3Rpb25zCj4gCj4g
MS4gSXMgRGViaWFuIHRlc3RpbmcgYXMgY2xvc2UgdG8gYSByb2xsaW5nIHJlbGVhc2UgYXMgSSds
bCBnZXQ/CkFzIGZhciBhcyBrbm93LCBub3QgcmVhbGx5LiBJdCBpcyAidGhlIG5leHQgZ2VuZXJh
dGlvbiByZWxlYXNlIiBhcyBzdGF0ZWQgaW4KaHR0cHM6Ly93aWtpLmRlYmlhbi5vcmcvRGViaWFu
UmVsZWFzZXMuCgpBbW9uZyB0aGUgbWFqb3IgZGlzdHJpYnV0aW9ucywgSSB3b3VsZCBtZW50aW9u
IG1vc3RseSBBcmNoIGFuZCBPcGVuU1VTRQpUdW1ibGV3ZWVkIGFzIHRydWx5IHJvbGxpbmcgZGlz
dHJpYnV0aW9ucy4KCj4gMi4gSG93IGVhc3kgaXMgaXQgdG8gbWlncmF0ZSBmcm9tIFNvbHVzIHRv
IERlYmlhbiwgSSB3YW50IHRvIHJlcHJvZHVjZSBteSBzZXR1cAo+IGFuZCB3b3JrZmxvdyBvbiBE
ZWJpYW4sIGkuZS4gaTMsIHRleHQgZWRpdG9yLCBzYW1lIHRlcm1pbmFsLCBldCBhbAoKSSBjYW4n
dCBhbnN3ZXIgdGhhdCwgaGF2aW5nIG5ldmVyIHVzZWQgdGhlbSBmb3IgYSBzdWZmaWNpZW50IGFt
b3VudCBvZiB0aW1lLgpMaXN0aW5nIHRoZSBzb2Z0d2FyZSB5b3UgYXJlIGFjcXVhaW50ZWQgd2l0
aCBjb3VsZCBoZWxwIGZpbmQgb3V0LgoKPiAzLiBCZXNpZGVzIEFyY2gsIGlzIHRoZXJlIGFub3Ro
ZXIgZ29vZCBkaXN0cm8gSSBjYW4gdXNlPyBNeSBsYXB0b3AgZG9lc24ndCBnZXQKPiBjb25zdGFu
dCB1c2UgaG93ZXZlciBzbyBJJ20gbG9va2luZyBmb3Igc29tZXRoaW5nIHRoYXQgaXMuLi4KPiAK
PiBhLiBTdGFibGUKU2xpbnQgdGhhdCBtYWludGFpbiBpcyBtb3N0bHkgc3RhYmxlLiBIb3dldmVy
IHdlIHNlbGVjdGl2ZWx5IHVwZGF0ZSBzb21lCnBhY2thZ2VzIHRvIHRoZWlyIGxhdGVzdCB2ZXJz
aW9uLgpUaGlzIGlzIHRoZSBjYXNlIGZvciBhMTF5IHNvZnR3YXJlLCBpbmNsdWRpbmcgYWxsIFRU
UyBhbmQgYXNzb2NpYXRlZCB2b2ljZXMsCnNjcmVlZCByZWFkZXJzIGFkIHdlbGwgYXMgYnJsdHR5
IGFuZCBzcGVlY2gtZGlzcGF0Y2hlcgo+IGIuIENhbiBlYXNpbHkgYnVpbGQgb3JjYS1tYXN0ZXIg
YW5kIHVzZSBpdCBvciBoYXMgdGhlIGxhdGVzdCBPcmNhIGluIGl0cyByZXBvcwo+IEN1cnJlbnRs
eSBTbGludCBzaGlwcyBPcmNhIHZlcnNpb24gNDQuMCAodGhlIGxhdGVzdCkgYW5kIHVzdWFsbHkg
dXBkYXRlcyBPcmNhCnRvIGEgbmV3IHZlcnNpb24gd2l0aGluIGEgd2VlayBvZiBpdHMgcmVsZWFz
ZSBvciBzby4KCj4gYy4gQ2FuIGJlIGluc3RhbGxlZCBvZmZsaW5lIChiZWNhdXNlIG5vIGV0aGVy
bmV0IHBvcnQpClllcyBmb3IgU2xpbnQuIEFsbCBwYWNrYWdlcyB0aGF0IG1ha2UgdGhlIGJhc2Ug
ZGlzdHJpYnV0aW9uIGFyZSBwcm92aWRlZCBpbiB0aGUKaW5zdGFsbGF0aW9uIElTTy4gSG93ZXZl
ciBhbiBhdmFpbGFibGUgSW50ZXJuZXQgY29ubmVjdGlvbiAod2lyZWQgb3Igd2lyZWxlc3MpCmNh
biBiZSB1c2VkIHRvIGdldCBvdXQgb2YgdGhlIGJveCBwYWNrYWdlcyB1cGRhdGVkIHNpbmNlIHRo
ZSBtb3N0IHJlY2VudCBJU08gaGFzCmJlZW4gcHVibGlzaGVkLiBFbHNlLCBzaW1wbGUgY29tbWFu
ZHMgYWxsb3cgdG8gdXBkYXRlIGFsbCBwYWNrYWdlcyBhbmQgZ2V0IHRoZQpuZXdseSBwcm92aWRl
ZCBvbmVzLCBjYXNlIG9jY3VycmluZy4KCj4gU28gYW55IGlkZWFzIG9uIHRoZSBhYm92ZSBxdWVz
dGlvbnM/ClNlZSBiZWxvdy4gU29tZSBsaW5rcyAoYWxsIGF2YWlsYWJsZSBmcm9tIHRoZSBmaXJz
dCBsaXN0ZWQpOgpodHRwczovL3NsaW50LmZyL2VuL2hvbWUuaHRtbApodHRwczovL3NsaW50LmZy
L2VuL0hhbmRCb29rLmh0bWwKaHR0cHM6Ly9zbGludC5mci9lbi9zdXBwb3J0Lmh0bWwKaHR0cHM6
Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE1LjAvaXNvLwoKUFMgU29sdXMgaGFz
IGhhZCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMsIG5vdyBtb3N0bHkgc29sdmVkIGFzIGZhciBhcyBJ
IGtub3csIGFuZAp0aGUgbGVhZCBkZXZlbG9wZXIgaGFzIGJlZW4gc2ljaywgd2hpY2ggZGlkbid0
IGhlbHAuIE1heWJlIHRoZXkgd2lsbCBiZWNvbWUKYWN0aXZlIGFnYWluLCB0aW1lIHdpbGwgdGVs
bC4KCkNoZWVycywKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRpZGllcmF0c2xpbnRkb3RmcgpT
bGludCBtYWludGFpbmVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

