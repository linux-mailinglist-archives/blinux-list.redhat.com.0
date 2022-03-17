Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D77E4DCF0E
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 20:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647546888;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Tyt2bNx9/bhkWomfZtSwJVZrWNOzJLBQ9vCu9vjOHVc=;
	b=bJEUulLeF6X6CKWaJOQBos/1cRIByrpuRv8Fu2MC+9AuR4xos4WibWH2hPSv8XWTR9oZDa
	F1f9yyS0jHa9WqSxBMbeggUgWcOPYHNg+PNqgCiGjbf52TqiLkkka3ShHvpwcMV0jFZSQ2
	SzB3aQn8Tjx9aLDsmHlYfFuwYhliIKQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-7ylWOSpgOjyP53OuoWgKhA-1; Thu, 17 Mar 2022 15:54:44 -0400
X-MC-Unique: 7ylWOSpgOjyP53OuoWgKhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13AA7811E76;
	Thu, 17 Mar 2022 19:54:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1059C15D57;
	Thu, 17 Mar 2022 19:54:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A0CC7194E014;
	Thu, 17 Mar 2022 19:54:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 20:54:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: getting started with Liblouis
To: "John J. Boyer" <john.boyer@abilitiessoft.org>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
 <81ce583f-b364-df9e-a3e7-64b96d60dcdb@slint.fr>
 <YjOHoif5PlSS753o@abilitiessoft>
In-Reply-To: <YjOHoif5PlSS753o@abilitiessoft>
Message-ID: <mailman.2889.1647546876.111202.blinux-list@redhat.com>
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHBhY2thZ2VkIHZlcnNpb24gMy4yMC4wLCB3aWxsIHVwZ3JhZGUgdG8gMy4yMS4wIHJp
Z2h0IG5vdy4KClRoYW5rcyBKb2huIGZvciB0aGUgaGVhZHMtdXAhCgpDaGVlcnMsCkRpZGllcgoK
TGUgMTcvMDMvMjAyMiDDoCAyMDoxMCwgSm9obiBKLiBCb3llciBhIMOpY3JpdMKgOgo+IERvIHlv
dSBoYXZlIHRoZSBsYXRlc3QgbGlibG91aXMgcmVsZWFzZT8gSXQgY2FtZSBvdXQgYWJvdXQgYSB3
ZWVrIGFnby4gSSBjYW4gZm9yd2FyZCB0aGUgcmVsZWFzZSBhbm5vdW5jZW1lbnQuIEl0IGluY2x1
ZGVzIGFsbCBVUkxzLgo+IAo+IEpvaG4KPiAKPiBPbiBUaHUsIE1hciAxNywgMjAyMiBhdCAwMjo1
NzowM1BNICswMTAwLCBEaWRpZXIgU3BhaWVyIHdyb3RlOgo+PiBIaSBBbCBhbmQgQWxsLAo+Pgo+
PiBJIGhhdmUgdHJpZWQgdG8gYnVpbGQgbGlibG91aXN4bWwgcHVsbGVkIGZyb20gZ2l0IG1hc3Rl
ciAoRGViaWFuIHNvdXJjZSBmaWxlcykuCj4+Cj4+IEJhZCBuZXdzOiBidWlsZCBmYWlsZWQgb24g
U2xpbnQ2NC0xNC4yLjEsIHNvbWUgb2YgdGhlIGNvbXBvbmVudHMgYmVpbmcgdG9vIG9sZC4KPj4K
Pj4gR29vZCBuZXdzOiBidWlsZCBzdWNjZWVkZWQgb24gU2xhY2t3YXJlNjQtMTUuMCAoYnVpbGRp
bmcgYm94IGZvciB0aGUgdXBjb21pbmcKPj4gc2xpbnQ2NC0xNS4wKSwgc28gYSBwYWNrYWdlIGZv
ciBTbGludDY0LTE1LjAgaXMgcmVhZHkuCj4+Cj4+IFVuZm9ydHVuYXRlbHkgaXQgY2FuJ3QgYmUg
dXNlZCBvbiBTbGludDY0LTE0LjIuMSBhcyB0aGUgcHJvZ3JhbXMgbGJ4X2Rldm9ubHkKPj4gYW5k
LCBtb3JlIGltcG9ydGFudGx5IHhtbDJicmwgY2FuJ3QgcnVuIGJlY2F1c2UgdGhlcmUgdGhlIGds
aWJjIHZlcnNpb24gaXMgbm90Cj4+IHRoZSBzYW1lIGFzIG9uIDE1LjAKPj4KPj4gU28sIHBsZWFz
ZSBiZSBwYXRpZW50OiB0aGlzIHN0dWZmIChpbmNsdWRlZCBhbGwgZGVwZW5kZW5jaWVzKSB3aWxs
IGJlIHNoaXBwZWQgaW4KPj4gU2xpbnQgNjQtMTUuMC4KPj4KPj4gVGhhbmtzIHRvIEpvaG4gZm9y
IGxpYmxvdWlzeG1sIGFuZCB0byBTYW11ZWwgdG8gaGF2ZSBtYWludGFpbmVkIGl0IGR1cmluZyB0
aGUKPj4gbGFzdCAxMSB5ZWFycy4KPj4KPj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4gLS0KPj4gRGlk
aWVyIFNwYWllcgo+PiBTbGludCBtYWludGFpbmVyCj4+Cj4+IExlIDE2LzAzLzIwMjIgw6AgMjA6
NDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+IEhp
LCBEaWRpZXIuwqAgVGhhbmtzIGZvciB0aGF0IGluZm9ybWF0aW9uLsKgIFllcywgdGhhdCBzZWVt
cyB0byBiZSB3aGF0IEkgbmVlZCwgaWYKPj4+IHBvc3NpYmxlIGFsb25nIHdpdGggYW50aXdvcmQg
YW5kIGEgY291cGxlIG9mIGl0ZW1zIHRoZSBSRUFETUUgbWVudGlvbnMgdGhhdCBJCj4+PiBmb3Jn
ZXQuwqAgSWYgdGhvc2Ugb3RoZXIgaXRlbXMgYXJlIG1vcmUgdGhhbiB5b3Ugd2FudCB0byBwdXQg
aW4gU2xpbnQsIHRoZW4gSQo+Pj4gcHJlc3VtZSBJJ2xsIGdldCB0aGVtIGJ5IHdheSBvZiB0aGUg
b3RoZXIgUkVBRE1FIGluZm9ybWF0aW9uLgo+Pj4KPj4+Cj4+PiBBbAo+Pj4KPj4+Cj4+PiBPbiAz
LzE2LzIyIDEzOjM3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Pj4+IEhpIEFsLAo+Pj4+Cj4+Pj4gSXQgYXBwZWFycyB0aGF0IGxpYmxvdWlzIHhtbCBpbnMgbWFp
bnRhaW5lZCBmb3IgRGViaWFuIGJ5IFNhbXVlbCBUaGliYXVsdCBzbwo+Pj4+IERlYmlhbiBiYXNl
ZCBkaXN0cmlidXRpb25zIGdldCBpdCB0b28uCj4+Pj4KPj4+PiBJIHdpbGwgYnVpbGQgYSBTbGlu
dCBwYWNrYWdlIGZvciBTbGludCB1c2luZyB0aGUgc2FtZSBzb3VyY2UgZmlsZXMgaWYgeW91IG5l
ZWQKPj4+PiB0aGF0Lgo+Pj4+Cj4+Pj4gQnV0IHBsZWFzZSBsb29rIGZpcnN0IGF0IHRoaXMgUkVB
RE1FOgo+Pj4+IGh0dHBzOi8vc2Fsc2EuZGViaWFuLm9yZy9hMTF5LXRlYW0vbGlibG91aXN4bWwv
LS9ibG9iL21hc3Rlci9SRUFETUUKPj4+Pgo+Pj4+IGFuZCBjb25maXJtIG9yIGluZmlybSB0aGF0
IGl0IGlzIHdoYXQgeW91IGFyZSBsb29raW5nIGZvci4KPj4+Pgo+Pj4+IENoZWVycywKPj4+PiBE
aWRpZXIKPj4+PiAtLSAKPj4+PiBEaWRpZXIgU3BhaWVyCj4+Pj4gU2xpbnQgbWFpbnRhaW5lci4K
Pj4+Pgo+Pj4+IExlIDE2LzAzLzIwMjIgw6AgMTg6MDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+Pj4gVGhhbmtzLCBKZWZmLsKgIEknbSB1c2luZyBT
bGludC7CoCBJIGRpZG4ndCBzZWUgZWl0aGVyIG9mIHRoZSBwcm9ncmFtcyB5b3UKPj4+Pj4gbWVu
dGlvbi7CoCBNYXliZSB0aGVyZSdzIHNvbWV0aGluZyBlbHNlLgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBC
ZXN0IQo+Pj4+Pgo+Pj4+PiBBbAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiAzLzE2LzIyIDAzOjMwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCAx
NSBNYXIgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
Pj4+Cj4+Pj4+Pj4gSSdtIHRyeWluZyB0byBmaW5kIG91dCBob3cgdG8gdXNlIExpYmxvdWlzIHRv
IHRyYW5zbGF0ZSBkb2N1bWVudHMgZnJvbSBwcmludAo+Pj4+Pj4+IHRvIEJyYWlsbGUuwqAgU3Bl
Y2lmaWNhbGx5LCBteSB3aWZlIHdvdWxkIGxpa2UgbWUgdG8gZmluZCBvdXQgaG93IHRvIHRyYW5z
bGF0ZQo+Pj4+Pj4+IFJ1c3NpYW4gZG9jdW1lbnRzIGludG8gQnJhaWxsZSBvbmVzLsKgIEF0IHRo
ZSBtb21lbnQsIHRob3VnaCwgSSBoYXZlbid0IHlldAo+Pj4+Pj4+IGxlYXJuZWQgYSBjb21tYW5k
IHRvIHJ1biBmb3IgdHJhbnNsYXRpbmcgYW55dGhpbmc6wqAgdGhlIExpYmxvdWlzCj4+Pj4+Pj4g
ZG9jdW1lbnRhdGlvbiBsb29rcyB0byBoYXZlIGEgbG90IG9mIHVzZWZ1bCBtYXRlcmlhbCwgYnV0
IEkgY291bGQgZmluZAo+Pj4+Pj4+IG5vdGhpbmcgYWJvdXQgcnVubmluZyBhIGNvbW1hbmQsIHdp
dGggd2hhdGV2ZXIgYXJndW1lbnRzIGFuZCBvcHRpb25zIEkgbWlnaHQKPj4+Pj4+PiBuZWVkLCB0
byBjcmVhdGUgYSBCcmFpbGxlIG91dHB1dCBmaWxlIGZyb20gYSBwcmludCBpbnB1dCBmaWxlLgo+
Pj4+Pj4gSW4gRGViaWFuLCBJIHNlZSBsaWJsb3Vpcy1iaW4gYW5kIGxpYmxvdWlzeG1sLWJpbiBw
YWNrYWdlcyB3aGljaCBjYW4gcHJvYmFibHkKPj4+Pj4+IGhlbHAgeW91LsKgIE90aGVyIGRpc3Ry
aWJ1dGlvbnMgcHJvYmFibHkgaGF2ZSBzb21ldGhpbmcgc2ltaWxhci4KPj4+Pj4+Cj4+Pj4+Pj4g
SSByZWFkIGFib3V0IGEgY29tbWFuZCBjYWxsZWQgZmlsZTJicmwsIGFwcGFyZW50bHkgcGFydCBv
ZiBhIHByb2dyYW0gY2FsbGVkCj4+Pj4+Pj4gTGlibG91aXN1dGRtbCwgYnV0IHRoYXQgcHJvZ3Jh
bSdzIG5vdCBvbiBteSBzeXN0ZW0gZXZlbiB0aG91Z2ggTGlibG91aXMKPj4+Pj4+PiBpdHNlbGYg
aXMuCj4+Pj4+PiBBcHBhcmVudGx5LCBVVERNTCBpcyB1bmlmaWVkIHRhY3RpbGUgZG9jdW1lbnQg
bWFya3VwIGxhbmd1YWdlLCB3aGNpaCBpcwo+Pj4+Pj4gcHJlc3VtYWJseSB1c2VkIGZvciBtYXBz
LCBkaWFncmFtcywgZXRjLsKgIFRoaXMgaXMgcHJvYmFibHkgbm90IHdoYXQgeW91IG5lZWQuCj4+
Pj4+Pgo+Pj4+Pj4gSFRILAo+Pj4+Pj4gR2VvZmYuCj4+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

