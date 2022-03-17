Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E82FB4DC8AF
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 15:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647527011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w/U25HHBLTdZvi3UUqLG64aIiM6eadJJ92Gp37ot04s=;
	b=Lah6aZak3cjNTgwZN47Ji2Bkf6rUhfS9O5p60mQgAPtBRxoNa7H5rLOwyi9jBnZ1GD3/4Z
	YZVl9PaY5IT5XsguC6UzCOYpWKfm60Jr48x+TkLInYpJiXu9YMzqm8YWHh+fQvq2lgz8c4
	DfPEw4JxkzkqIOcPnTQS3kx3asx/YgI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-9QBkHSTcMFSVn-mOG6crNA-1; Thu, 17 Mar 2022 10:23:27 -0400
X-MC-Unique: 9QBkHSTcMFSVn-mOG6crNA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35DAA1C05ABE;
	Thu, 17 Mar 2022 14:23:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AA8A71454538;
	Thu, 17 Mar 2022 14:23:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 27D89193F6EC;
	Thu, 17 Mar 2022 14:23:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 10:23:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: getting started with Liblouis
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
 <mailman.2739.1647525448.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.2739.1647525448.111206.blinux-list@redhat.com>
Message-ID: <mailman.2640.1647527004.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWF5IcKgIFRoYW5rIHlvdSB2ZXJ5IG11Y2ghwqAgSSdtIG5vdCBpbiBhIGdyZWF0IHJ1c2ggb24g
dGhpcywgc28gdGhpcyBpcyAKY29vbCBpbmRlZWQhCgoKQWwKCgpPbiAzLzE3LzIyIDA5OjU3LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIEFsIGFuZCBBbGws
Cj4KPiBJIGhhdmUgdHJpZWQgdG8gYnVpbGQgbGlibG91aXN4bWwgcHVsbGVkIGZyb20gZ2l0IG1h
c3RlciAoRGViaWFuIHNvdXJjZSBmaWxlcykuCj4KPiBCYWQgbmV3czogYnVpbGQgZmFpbGVkIG9u
IFNsaW50NjQtMTQuMi4xLCBzb21lIG9mIHRoZSBjb21wb25lbnRzIGJlaW5nIHRvbyBvbGQuCj4K
PiBHb29kIG5ld3M6IGJ1aWxkIHN1Y2NlZWRlZCBvbiBTbGFja3dhcmU2NC0xNS4wIChidWlsZGlu
ZyBib3ggZm9yIHRoZSB1cGNvbWluZwo+IHNsaW50NjQtMTUuMCksIHNvIGEgcGFja2FnZSBmb3Ig
U2xpbnQ2NC0xNS4wIGlzIHJlYWR5Lgo+Cj4gVW5mb3J0dW5hdGVseSBpdCBjYW4ndCBiZSB1c2Vk
IG9uIFNsaW50NjQtMTQuMi4xIGFzIHRoZSBwcm9ncmFtcyBsYnhfZGV2b25seQo+IGFuZCwgbW9y
ZSBpbXBvcnRhbnRseSB4bWwyYnJsIGNhbid0IHJ1biBiZWNhdXNlIHRoZXJlIHRoZSBnbGliYyB2
ZXJzaW9uIGlzIG5vdAo+IHRoZSBzYW1lIGFzIG9uIDE1LjAKPgo+IFNvLCBwbGVhc2UgYmUgcGF0
aWVudDogdGhpcyBzdHVmZiAoaW5jbHVkZWQgYWxsIGRlcGVuZGVuY2llcykgd2lsbCBiZSBzaGlw
cGVkIGluCj4gU2xpbnQgNjQtMTUuMC4KPgo+IFRoYW5rcyB0byBKb2huIGZvciBsaWJsb3Vpc3ht
bCBhbmQgdG8gU2FtdWVsIHRvIGhhdmUgbWFpbnRhaW5lZCBpdCBkdXJpbmcgdGhlCj4gbGFzdCAx
MSB5ZWFycy4KPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFpZXIKPiBTbGlu
dCBtYWludGFpbmVyCj4KPiBMZSAxNi8wMy8yMDIyIMOgIDIwOjQwLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpLCBEaWRpZXIuwqAgVGhhbmtzIGZv
ciB0aGF0IGluZm9ybWF0aW9uLsKgIFllcywgdGhhdCBzZWVtcyB0byBiZSB3aGF0IEkgbmVlZCwg
aWYKPj4gcG9zc2libGUgYWxvbmcgd2l0aCBhbnRpd29yZCBhbmQgYSBjb3VwbGUgb2YgaXRlbXMg
dGhlIFJFQURNRSBtZW50aW9ucyB0aGF0IEkKPj4gZm9yZ2V0LsKgIElmIHRob3NlIG90aGVyIGl0
ZW1zIGFyZSBtb3JlIHRoYW4geW91IHdhbnQgdG8gcHV0IGluIFNsaW50LCB0aGVuIEkKPj4gcHJl
c3VtZSBJJ2xsIGdldCB0aGVtIGJ5IHdheSBvZiB0aGUgb3RoZXIgUkVBRE1FIGluZm9ybWF0aW9u
Lgo+Pgo+Pgo+PiBBbAo+Pgo+Pgo+PiBPbiAzLzE2LzIyIDEzOjM3LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGkgQWwsCj4+Pgo+Pj4gSXQgYXBwZWFycyB0
aGF0IGxpYmxvdWlzIHhtbCBpbnMgbWFpbnRhaW5lZCBmb3IgRGViaWFuIGJ5IFNhbXVlbCBUaGli
YXVsdCBzbwo+Pj4gRGViaWFuIGJhc2VkIGRpc3RyaWJ1dGlvbnMgZ2V0IGl0IHRvby4KPj4+Cj4+
PiBJIHdpbGwgYnVpbGQgYSBTbGludCBwYWNrYWdlIGZvciBTbGludCB1c2luZyB0aGUgc2FtZSBz
b3VyY2UgZmlsZXMgaWYgeW91IG5lZWQKPj4+IHRoYXQuCj4+Pgo+Pj4gQnV0IHBsZWFzZSBsb29r
IGZpcnN0IGF0IHRoaXMgUkVBRE1FOgo+Pj4gaHR0cHM6Ly9zYWxzYS5kZWJpYW4ub3JnL2ExMXkt
dGVhbS9saWJsb3Vpc3htbC8tL2Jsb2IvbWFzdGVyL1JFQURNRQo+Pj4KPj4+IGFuZCBjb25maXJt
IG9yIGluZmlybSB0aGF0IGl0IGlzIHdoYXQgeW91IGFyZSBsb29raW5nIGZvci4KPj4+Cj4+PiBD
aGVlcnMsCj4+PiBEaWRpZXIKPj4+IC0tIAo+Pj4gRGlkaWVyIFNwYWllcgo+Pj4gU2xpbnQgbWFp
bnRhaW5lci4KPj4+Cj4+PiBMZSAxNi8wMy8yMDIyIMOgIDE4OjAzLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4gVGhhbmtzLCBKZWZmLsKgIEknbSB1
c2luZyBTbGludC7CoCBJIGRpZG4ndCBzZWUgZWl0aGVyIG9mIHRoZSBwcm9ncmFtcyB5b3UKPj4+
PiBtZW50aW9uLsKgIE1heWJlIHRoZXJlJ3Mgc29tZXRoaW5nIGVsc2UuCj4+Pj4KPj4+Pgo+Pj4+
IEJlc3QhCj4+Pj4KPj4+PiBBbAo+Pj4+Cj4+Pj4KPj4+PiBPbiAzLzE2LzIyIDAzOjMwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBPbiBUdWUsIDE1IE1h
ciAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pgo+
Pj4+Pj4gSSdtIHRyeWluZyB0byBmaW5kIG91dCBob3cgdG8gdXNlIExpYmxvdWlzIHRvIHRyYW5z
bGF0ZSBkb2N1bWVudHMgZnJvbSBwcmludAo+Pj4+Pj4gdG8gQnJhaWxsZS7CoCBTcGVjaWZpY2Fs
bHksIG15IHdpZmUgd291bGQgbGlrZSBtZSB0byBmaW5kIG91dCBob3cgdG8gdHJhbnNsYXRlCj4+
Pj4+PiBSdXNzaWFuIGRvY3VtZW50cyBpbnRvIEJyYWlsbGUgb25lcy7CoCBBdCB0aGUgbW9tZW50
LCB0aG91Z2gsIEkgaGF2ZW4ndCB5ZXQKPj4+Pj4+IGxlYXJuZWQgYSBjb21tYW5kIHRvIHJ1biBm
b3IgdHJhbnNsYXRpbmcgYW55dGhpbmc6wqAgdGhlIExpYmxvdWlzCj4+Pj4+PiBkb2N1bWVudGF0
aW9uIGxvb2tzIHRvIGhhdmUgYSBsb3Qgb2YgdXNlZnVsIG1hdGVyaWFsLCBidXQgSSBjb3VsZCBm
aW5kCj4+Pj4+PiBub3RoaW5nIGFib3V0IHJ1bm5pbmcgYSBjb21tYW5kLCB3aXRoIHdoYXRldmVy
IGFyZ3VtZW50cyBhbmQgb3B0aW9ucyBJIG1pZ2h0Cj4+Pj4+PiBuZWVkLCB0byBjcmVhdGUgYSBC
cmFpbGxlIG91dHB1dCBmaWxlIGZyb20gYSBwcmludCBpbnB1dCBmaWxlLgo+Pj4+PiBJbiBEZWJp
YW4sIEkgc2VlIGxpYmxvdWlzLWJpbiBhbmQgbGlibG91aXN4bWwtYmluIHBhY2thZ2VzIHdoaWNo
IGNhbiBwcm9iYWJseQo+Pj4+PiBoZWxwIHlvdS7CoCBPdGhlciBkaXN0cmlidXRpb25zIHByb2Jh
Ymx5IGhhdmUgc29tZXRoaW5nIHNpbWlsYXIuCj4+Pj4+Cj4+Pj4+PiBJIHJlYWQgYWJvdXQgYSBj
b21tYW5kIGNhbGxlZCBmaWxlMmJybCwgYXBwYXJlbnRseSBwYXJ0IG9mIGEgcHJvZ3JhbSBjYWxs
ZWQKPj4+Pj4+IExpYmxvdWlzdXRkbWwsIGJ1dCB0aGF0IHByb2dyYW0ncyBub3Qgb24gbXkgc3lz
dGVtIGV2ZW4gdGhvdWdoIExpYmxvdWlzCj4+Pj4+PiBpdHNlbGYgaXMuCj4+Pj4+IEFwcGFyZW50
bHksIFVURE1MIGlzIHVuaWZpZWQgdGFjdGlsZSBkb2N1bWVudCBtYXJrdXAgbGFuZ3VhZ2UsIHdo
Y2loIGlzCj4+Pj4+IHByZXN1bWFibHkgdXNlZCBmb3IgbWFwcywgZGlhZ3JhbXMsIGV0Yy7CoCBU
aGlzIGlzIHByb2JhYmx5IG5vdCB3aGF0IHlvdSBuZWVkLgo+Pj4+Pgo+Pj4+PiBIVEgsCj4+Pj4+
IEdlb2ZmLgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

