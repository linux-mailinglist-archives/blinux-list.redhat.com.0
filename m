Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 332DD501CF2
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 22:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649969641;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2doizLCzi5FGFm4/aOXI8rYqO9q3MrlXvXbBNMbizPc=;
	b=AnhsR5ulUQtlZbEMBxDY8qugRmcU77uwqfNBWeUNfhHRnJ4TKCY9xA/5VoI9odb+m/WzyW
	WKBrsQ9Uq9D7Go+9ab8anVS8MQ8YjjQjGOTgGv96BrB/UH3Tb1SyQtJaa9fb3KEDeYmha2
	4puDs2wUGT5mktOeBx9K7BlDRJjXaG8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-422-uMlXOV1VN0qar4MyCMvZPw-1; Thu, 14 Apr 2022 16:53:56 -0400
X-MC-Unique: uMlXOV1VN0qar4MyCMvZPw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D3773C172C8;
	Thu, 14 Apr 2022 20:53:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 06839403361;
	Thu, 14 Apr 2022 20:53:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA8CC194034E;
	Thu, 14 Apr 2022 20:53:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 16:53:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
 <mailman.8562.1649966917.111208.blinux-list@redhat.com>
 <mailman.8563.1649967054.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.8563.1649967054.111208.blinux-list@redhat.com>
Message-ID: <mailman.8696.1649969633.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2UgaGF2ZSBhIG1hY2hpbmUgaGVyZSBydW5uaW5nIFdpbmRvd3MgMTAuwqAgSXQgY2FuIGJlIGZs
YWt5LS1ub3Qgc28gbXVjaCAKdGhlIG9wZXJhdGluZyBzeXN0ZW0gYXMgc29tZSBvZiB0aGUgc29m
dHdhcmUgcnVubmluZyB1bmRlciBpdC7CoCBPdXRsb29rLCAKZXNwZWNpYWxseSwgaGFzIGxvdHMg
b2YgZnVuIGJyaW5naW5nIHNvbWUgdmVyc2lvbiBvZiB0aGUgdW5jZXJ0YWludHkgCnByaW5jaXBs
ZSB0byBvdXIgbGl2ZXMgaGVyZSBhbG1vc3QgZGFpbHkuCgoKQWwKCgpPbiA0LzE0LzIyIDE2OjEw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFdvdy4gTm9uZSBv
ZiB0aGF0IGhhcHBlbnMgYW55bW9yZS4gSXQncyBiZWVuIHllYXJzIHNpbmNlIHlvdSd2ZSB1c2Vk
Cj4gV2luZG93cywgaXQgc2VlbXMuCj4gRGV2aW4gUHJhdGVyCj4gci5kLnQucHJhdGVyQGdtYWls
LmNvbQo+Cj4KPgo+Cj4gT24gVGh1LCBBcHIgMTQsIDIwMjIgYXQgMzowOCBQTSBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90
ZToKPgo+PiBBbHNvIFdpbmRvd3MganVzdCB3b3Jrcy4gTm90aGluZyBqdXN0IGNyYXNoZXMgb3V0
IG9mIG5vd2hlcmUsCj4+Cj4+Cj4+IFdoZW4gZGlkIHRoYXQgc3RhcnQgaGFwcGVuaW5nPyBJIGFs
d2F5cyBmb3VuZCBqdXN0IHNpdHRpbmcgZG93biBhdCBhCj4+IE1pY3Jvc29mdCBjb21wdXRlciB0
byBiZSBhIHdyZXN0bGluZyBtYXRjaC4gUmFuZG9tIGNyYXNoZXMgdXN1YWxseSBhdAo+PiBqdXN0
IHRoZSB3cm9uZyB0aW1lLCBtYW55IGhvb3BzIHRvIGp1bXAgdGhyb3VnaCBqdXN0IHRvIGRvIHRo
aW5ncyBJIHRvb2sKPj4gZm9yIGdyYW50ZWQgZXZlbiBpbiB0aGUgZGF5cyBvZiBnb29kIG9sZC1m
YXNoaW9uIERPUywganVzdCBwbHVnZ2luZyBpbiBhCj4+IHByaW50ZXIgb3Igb3RoZXIgc2ltcGxl
IGRldmljZSB3YXMgZW5vdWdoIHRvIHNlbmQgbXkgY29tcHV0ZXIgaW50byBhCj4+IHRhaWxzcGlu
LCBhbmQgdGhlbiB0aGVyZSBpcyBhbGwgdGhlIGFudGl2aXJ1cyBhbmQgYW50aXNweXdhcmUgc3R1
ZmYgSQo+PiBoYWQgdG8gcnVuIHRoYXQgc2xvd2VkIGRvd24gdGhlIGNvbXB1dGVyIGFsbW9zdCBh
cyBtdWNoIGFzIGp1c3QgdGhlCj4+IHNjcmVlbiByZWFkZXIgY291bGQgZG8uIEV2ZW4gdGhlIHZl
cnkgZmlyc3QgdGltZSBJIHVzZWQgYSBMaW51eAo+PiBjb21wdXRlciwgYmFjayBiZWZvcmUgdGhl
IGRheXMgb2YgZ3JhcGhpY2FsIGRlc2t0b3BzIHdpdGggYTExeSB0aGF0Cj4+IHdvcmtlZCwgSSB3
ZW50IGZyb20gY3Vyc2luZyBteSBjb21wdXRlciAzIG9yIG1vcmUgdGltZXMgYSBkYXkgdG8gY3Vy
c2luZwo+PiBpdCBtYXliZSB0d2ljZSBhIG1vbnRoLCBhbmQgdGhhdCB3YXMgdXN1YWxseSBiZWNh
dXNlIEkgd2FzIGludGVudGlvbmFsbHkKPj4gYnJlYWtpbmcgc29tZXRoaW5nIHNvIHRoYXQgSSBj
b3VsZCBsZWFybiBob3cgdG8gZml4IGl0LiBUaGF0IHdhcyBiZWZvcmUKPj4gSSB0cmllZCB0byB3
cmVzdGxlIHdpdGggRU1BQ1NwZWFrIGFuZCBNdXR0IExPTC4gSSBjdXJzZWQgRU1BQ1NwZWFrIGZv
cgo+PiBsaWtlIDUgdG8gMTAgbWludXRlcyBiZWZvcmUgSSBqdXN0IGdhdmUgdXAsIGFuZCBhY3R1
YWxseSB3cmVzdGxlZCB3aXRoCj4+IE11dHQgZm9yIGFib3V0IGEgd2VlayBiZWZvcmUgcnVubmlu
ZyBiYWNrIHRvIFBpbmUgYmFjayBpbiB0aG9zZSBkYXlzLgo+PiBUaGluZ3MgaGF2ZSBncmVhdGx5
IGltcHJvdmVkIHNpbmNlIHRoZW4uCj4+Cj4+IH5LeWxlCj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QK

