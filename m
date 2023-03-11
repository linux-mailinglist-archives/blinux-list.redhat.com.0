Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D159B6B5F7D
	for <lists+blinux-list@lfdr.de>; Sat, 11 Mar 2023 19:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678557779;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LoZDc5yjvIEPxoVmrwJkDV0m4FsiYoQs+6LyTFew1lg=;
	b=EcdMkiuwZulEnUaA8eOC+azDpd1dWXOvluloFY4bal1Zz7JctExeMuZQQq8CQujN5eGZcp
	oGtK2JVT2LzPCdKEGPNmdlhS6TLAL2/T2N6quD/EgHGtfwyI8VAFXYxYqm1w8HdIdrM8E2
	Z+ClNJ/2F24z3z5nD5EYeEx38HjT9Ds=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-yA_HL8nuP3myqppHzo3n8Q-1; Sat, 11 Mar 2023 13:02:57 -0500
X-MC-Unique: yA_HL8nuP3myqppHzo3n8Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4151429AA39C;
	Sat, 11 Mar 2023 18:02:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E4673492B04;
	Sat, 11 Mar 2023 18:02:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 31AD61946A69;
	Sat, 11 Mar 2023 18:02:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 11 Mar 2023 19:02:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: XFCE a11Y specific tweaks?
To: blinux-list@redhat.com
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
 <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
 <mailman.2412.1678465672.1521167.blinux-list@redhat.com>
 <mailman.2361.1678466488.1521166.blinux-list@redhat.com>
 <mailman.414.1678557191.3486291.blinux-list@redhat.com>
In-Reply-To: <mailman.414.1678557191.3486291.blinux-list@redhat.com>
Message-ID: <mailman.415.1678557774.3486291.blinux-list@redhat.com>
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

WWVzLCBhcyBpdCBpcyBiYXNlZCBvbiBHVEszLiBZb3UgbWF5IG5lZWQgdG8gYWRhcHQgdGhlIGtl
eSBiaW5kaW5ncyB0byB0aG9zZSB5b3UKdXNlIGluIGFub3RoZXIgZGVza3RvcCwgbGlrZSBNYXRl
LgoKRGlkaWVyCgpMZSAxMS8wMy8yMDIzIMOgIDE4OjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gaXMgbHhkZSB1c2VhYmxlIHdpdGggb3JjYT8KPiAK
PiBPbiAzLzEwLzIwMjMgODo0MSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4gWWVzLCBpdCdzIGx4ZGUuCj4+Cj4+Cj4+Cj4+IEp1ZGUgPGpkYXNoaWVsIGF0
IHBhbml4IGRvdCBjb20+Cj4+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRl
ZmVuc2Ugb2YgbGliZXJ0eToKPj4gwqAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxl
YXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDAp
Cj4+Cj4+IC4KPj4KPj4gT24gRnJpLCAxMCBNYXIgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+IE1hdGUgaXMgYSBkZXNrdG9wIGZvciBsb3cgcmVz
b3VyY2VzLCBjb21wYXJlZCB0byBnbm9tZS4KPj4+IEkgb3VnaHQgdG8gcmVhZCBhYm91dCB4IGYg
YyBlLgo+Pj4gVGhlcmUgaXMgeWV0IGFub3RoZXIgZGVza3RvcCB3aXRoIGEgbmFtZSBsaWtlIHRo
YXQuCj4+Pgo+Pj4+IE9uIE1hciAxMCwgMjAyMywgYXQgMDg6MzIsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24KPj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Pj4KPj4+PiBJdCBkb2VzLCBhcyBhIHBsZWFzYW50IHN1cnByaXNlLgo+Pj4+Cj4+Pj4KPj4+PiBO
b3cgaWYgaXQnZCBxdWl0IHJhbmRvbWx5IHNhdmluZyBteSBzZXNzaW9ucywgdGhhdCdkIGhlbHAu
IEkndmUgYSBtaW5kIHRvCj4+Pj4ganVzdCBzdGFydCBicnV0ZSBmb3JjaW5nIHRoYXQgb25lLiBJ
IGxpa2Ugd2hhdCBYRkNFIGlzIGdvaW5nIGZvciwgaXQncwo+Pj4+IGFic29sdXRlbHkgbGlnaHQg
YW5kIGdvb2QgZm9yIG15IGxvdyBwb3dlciBtYWNoaW5lCj4+Pj4KPj4+PiBPbiAzLzEwLzIzIDE0
OjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiB5ZXMg
YW5kIGhhcyBmb3Igc29tZSB0aW1lIGJ5IG5vdy7CoCBJIHVzZWQgaXQgYSBjb3VwbGUgeWVhcnMg
YWdvLgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3Qg
Y29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+Pj4+PiBkZWZlbnNlIG9m
IGxpYmVydHk6Cj4+Pj4+IMKgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1
c2UgaW4gdGhhdCBvcmRlci4iCj4+Pj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+
Pj4+Pgo+Pj4+PiAuCj4+Pj4+Cj4+Pj4+IE9uIEZyaSwgMTAgTWFyIDIwMjMsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Cj4+Pj4+PiBEb2VzIG9yY2Egd29y
ayB3aXRoIHggZiBjIGUgbm93Pwo+Pj4+Pj4KPj4+Pj4+PiBPbiBNYXIgMTAsIDIwMjMsIGF0IDAy
OjE3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4+Pj4gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+Pj4gUXVpY2sgcXVlc3Rpb24uIEkn
dmUgcHV0IFhGQ0XCoCBvbiBhbiBBcmNoIGluc3RhbGwgb24gYW4gb2xkIGxhcHRvcCwgc2luY2UK
Pj4+Pj4+PiBpdCdzIG9uZSB0aGF0IHRha2VzIHVwIHRoZSBsZWFzdCBzcGFjZSBvdXQgb2YgYWxs
IGRlc2t0b3BzIGFuZCBpcwo+Pj4+Pj4+IGxpZ2h0d2VpZ2h0Lgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+
Pj4+PiBTbyB3aGF0IGFyZSBzb21lIHN1Z2dlc3RlZCB0aGluZ3MgSSBzaG91bGQgZG8gZnJvbSBh
biBBMTFZIHN0YW5kcG9pbnQ/Cj4+Pj4+Pj4gSSdtIHNldHRpbmcgdXAgc2hvcnRjdXRzIGZvciB0
aGluZ3MgbGlrZSBGaXJlZm94IG9yIFRodW5kZXJiaXJkLCBhbiBzbwo+Pj4+Pj4+IG9uLiBJJ3Zl
IGNoZWNrZWQgdGhlIGJveCBmb3IgYXNzaXN0aXZlIHRlY2gsIEkndmUgc2V0IG15IC5iYXNocmMg
dXAKPj4+Pj4+PiBjb3JyZWN0bHkuCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFNvIHdoYXQgWEZD
RSBzcGVjaWZpYyB0aGluZ3MgZG8gcGVvcGxlIHN1Z2dlc3Q/IEknbSBzdGFydGluZyB0byBsaWtl
IFhGQ0UKPj4+Pj4+PiBub3cgSSd2ZSBnb3QgdGhlIGhhbmcgb2YgaXQgYSBsaXR0bGUsIGp1c3Qg
d29uZGVyaW5nIHdoYXQgQTExWSB0aGluZ3MgSQo+Pj4+Pj4+IG5lZWQgdG8gZG8gaW4gb3JkZXIg
dG8gZ2V0IHRoZSBsYXN0IGZldyBraW5rcyBvdXQgb2YgaXQKPj4+Pj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cg==

