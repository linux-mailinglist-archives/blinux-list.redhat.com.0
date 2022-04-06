Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B72A4F63F3
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 17:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649260219;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bxpb6Fly9UvSCrJOLVBuFqpGxadP7df+WX+Jy6VRrDw=;
	b=SprRQBer5zfN7gRp30tA7O3hw8xQVbnYGgCfPxIZEKs4HQCQJ7ra7eUUrdRYOqMl2UFnP9
	W+dybmy5NZzchqcdVu5dVCzYVltixd8hAGT9gXGTs0G5jzZakhpqys311Pv2kG/RfXh7gn
	Q2/VXvM60NmRCkRVJ+y1ZNEmtBUDfvk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-267-Sz5FcNJ8O7m5ULUL4i-q7w-1; Wed, 06 Apr 2022 11:50:15 -0400
X-MC-Unique: Sz5FcNJ8O7m5ULUL4i-q7w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04C58805F4F;
	Wed,  6 Apr 2022 15:50:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C66BF1121320;
	Wed,  6 Apr 2022 15:49:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8E65A1940376;
	Wed,  6 Apr 2022 15:49:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 17:49:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Fwd: [systemd-devel] Dropping split-usr/unmerged-usr support
To: blinux-list@redhat.com
References: <05cf10d04274dcbff07fed88e98dca2eebb24b7d.camel@gmail.com>
 <mailman.6716.1649249882.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.6716.1649249882.111207.blinux-list@redhat.com>
Message-ID: <mailman.6644.1649260179.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSW1tbyBhbmQgQWxsLAoKRGlkaWVyIGhlcmUuCgp0aGFua3MgZm9yIHRoZSBoZWFkcy11cCwg
YW5zd2VyIGlubGluZS4KCkxlIDA2LzA0LzIwMjIgw6AgMTQ6NTAsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBBbGwhCj4gCj4gSW1tbyBoZXJlLgo+
IAo+IFNvcnJ5IGZvciBteSBpZ25vcmFuY2UgYW5kIGRpc3R1cmJpbmcgdGhlIHVzdWFsIGNoYXR0
ZXIgb24gdGhlIGxpc3QuCj4gCj4gSSBndWVzcyB0aGlzIGlzIGF0IGxlYXN0IGZvciBEaWRpZXIu
IFRoZXJlIGFyZSBhbHNvIG90aGVyIHNwZWFraW5nCj4gZGlzdHJvcyBvdXQgdGhlcmUgdGhhdCBz
eXN0ZW1kIHBlb3BsZSBtaWdodCBub3QgYmUgYXdhcmUgb2Ygc28gSQo+IGZvcndhcmRlZCB0aGUg
b3JpZ2luYWwgbWVzc2FnZSBoZXJlLgo+Cj4gRmVlbCBmcmVlIHRvIGFuc3dlciB0byBteSBtZXNz
YWdlLiBJJ2xsIGZvcndhcmQgaXQgdG8gc3lzdGVtZC1kZXZlbAo+IGlmIG5lZWRlZC4KPiAKCldl
bGwsIFNsaW50OgoxLiBpcyBiYXNlZCBvbiBTbGFja3dhcmUgYW5kIHVzZXMgdGhlIHNhbWUgbGF5
b3V0LCBzbyBJIGZvcndhcmQgdGhpcyBhbnN3ZXIgdG8KaXRzIG1haW50YWluZXIsIFBhdHJpY2sg
Si4gVm9sa2VyZGluZyAoaGUgaXMgbm90IHN1YnNjcmliZWQgdG8gdGhpcyBsaXN0IGFzIGZhcgph
cyBJIGtub3cpLgoyLiBhcyBTbGFja3dhcmUsIFNsaW50IGRvZXMgbm90IHVzZXMgc3lzdGVtZCBh
cyBpdHMgaW5pdCBzeXN0ZW0gc28gZmFyIGJ1dAppbmNsdWRlcyBraW5kIG9mIGEgIGNvbXBhdGli
aWxpdHkgbGF5ZXIsIG1vc3RseSBlbG9naW5kLiBXZSBhbHNvIHVzZSBldWRldgppbnN0ZWFkIG9m
IHVkZXYuCjMuIEFzIFNsYWNrd2FyZSwgU2xpbnQgaGFzIGFuICJ1bm1lcmdlZC11c3IiIGxheW91
dCBzbyBmYXIsIGkuZS4gYmluLCBzYmluIGFuZApsaWIqIGFyZSBub3Qgc3ltbGlua3MgdG8gdGhl
aXIgY291bnRlcnBhcnRzIHVuZGVyIC91c3IuCgpUaGlzIGJlaW5nIHNhaWQgSSBkbyBub3Qga25v
dyB3aGljaCBjaGFuZ2VzIFBhdHJpY2sgaW50ZW5kcyB0byBkbyBmb3IgdGhlIG5leHQKU2xhY2t3
YXJlIHZlcnNpb24gb24gdGhpcyByZXNwZWN0IGJ1dCBpbnRlbmQgdG8gZm9sbG93IHN1aXRlIHdp
dGggU2xpbnQuCgo+IERpc3RyaWJ1dGlvbiBtYWludGFpbmVycyBtaWdodCBhbHNvIHdhbnQgdG8g
am9pbiBzeXN0ZW1kLWRldmVsIGlmCj4gbm90IGFscmVhZHkgdGhlcmUuCgpXaGF0IEkgZmFpbCB0
byBncmFzcCBpcyB0aGUgcG9zc2libGUgY29uc2VxdWVuY2VzIG9mIHRoaXMgY2hhbmdlIGZvcgpk
aXN0cmlidXRpb25zIG5vdCB1c2luZyBzeXN0ZW1kIGFzIHRoZWlyIGluaXQgc3lzdGVtLiBBbnkg
Y2x1ZSBvbiB0aGF0IGlzCndlbGNvbWUuIElmIHVuZGVyc3RhbmQgd2VsbCwgYXMgbG9uZyBhcyB3
ZSBkbyBub3QgY2hhbmdlIG91ciBsYXlvdXQgIHdlIGRvIG5vdApuZWVkIHRoYXQgb3VyIChjdXN0
b20gbWFkZSwgbm90IHVzaW5nIGRyYWN1dCkgaW5pdHJhbWZzIGltcGxlbWVudHMgdGhlIGNoYW5n
ZXMKbWVudGlvbmVkIGluIGh0dHBzOi8vZmVkb3JhcHJvamVjdC5vcmcvd2lraS9GZWF0dXJlcy9V
c3JNb3ZlCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIK
ZGlkaWVyIGF0IHNsaW50IGRvdCBmcgoKPiAtLS0tLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0t
LS0tCj4gU3ViamVjdDogW3N5c3RlbWQtZGV2ZWxdIERyb3BwaW5nIHNwbGl0LXVzci91bm1lcmdl
ZC11c3Igc3VwcG9ydAo+IERhdGU6IDIwMjItMDQtMDUgMjM6MDcKPiBGcm9tOiBMdWNhIEJvY2Nh
c3NpIDxsdWNhLmJvY2Nhc3NpQGdtYWlsLmNvbT4KPiBUbzogc3lzdGVtZC1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiAKPiBIaSwKPiAKPiBBcyBwYXJ0IG9mIG91ciBzcHJpbmcgY2xlYW5p
bmcgZWZmb3J0LCB3ZSBhcmUgY29uc2lkZXJpbmcgd2hlbiB0byBkcm9wCj4gc3VwcG9ydCBmb3Ig
c3BsaXQvdW5tZXJnZWQtdXNyIGZpbGVzeXN0ZW0gbGF5b3V0cy4KPiAKPiBBIGJ1aWxkLXRpbWUg
d2FybmluZyB3YXMgYWRkZWQgbGFzdCB5ZWFyOgo+IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9zeXN0
ZW1kL3N5c3RlbWQvY29tbWl0LzlhZmQ1ZTdiOTc1ZTgwNTFjMDExZmY5YzA3Yzk1ZTgwYmQ5NTQ0
NjkKPiAKPiBXZSBhcmUgbm93IGFkZGluZyBhIHJ1bnRpbWUgdGFpbnQgYXMgd2VsbC4KPiAKPiBX
aGljaCBkaXN0cmlidXRpb25zIGFyZSBsZWZ0IHJ1bm5pbmcgd2l0aCBzeXN0ZW1kIG9uIGEgc3Bs
aXQvdW5tZXJnZWQtCj4gdXNyIHN5c3RlbT8KPiAKPiAocmVtaW5kZXI6IHdlIHJlZmVyIHRvIGEg
c3lzdGVtIHRoYXQgYm9vdHMgd2l0aG91dCBhIHBvcHVsYXRlZCAvdXNyIGFzCj4gc3BsaXQtdXNy
LCBhbmQgYSBzeXN0ZW0gd2hlcmUgYmluLCBzYmluIGFuZCBsaWIqIGFyZSBub3Qgc3ltbGlua3Mg
dG8KPiB0aGVpciBjb3VudGVycGFydHMgdW5kZXIgL3VzciBhcyB1bm1lcmdlZC11c3IpCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

