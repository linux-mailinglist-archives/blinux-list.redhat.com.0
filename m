Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B4E44E3E7
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 10:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636709756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=599WvJsOenpfyDP75dSxPoga5TKRKXhHAbzJKZxXONo=;
	b=azMhXgThztudE1mcXeVFgx6v/9Vf0CPXZ3XT95Y3gzo717i0WjJUBnXrWRO2s4cKl1inrr
	89gvDSK6JYKierxvKPy2sAuLA8a9BmXy6Cu68hzFJ0VdnHFKAUA5Cl6YMKO8WiKfvlX46m
	AQoVGw0aGilzGeyHDPW0A1YwbisPJXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-YhfxsZjEOC-oow-v-QgFaw-1; Fri, 12 Nov 2021 04:35:52 -0500
X-MC-Unique: YhfxsZjEOC-oow-v-QgFaw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BB1F1926DAD;
	Fri, 12 Nov 2021 09:34:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0573C179B3;
	Fri, 12 Nov 2021 09:34:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09FB04A703;
	Fri, 12 Nov 2021 09:34:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC9YfGi016014 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 12 Nov 2021 04:34:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 061DE40CFD10; Fri, 12 Nov 2021 09:34:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00DF540CFD0E
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 09:34:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A89B98061DD
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 09:34:40 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-305-A5fBdY7rOjulUUKcJLyuHA-1;
	Fri, 12 Nov 2021 04:34:38 -0500
X-MC-Unique: A5fBdY7rOjulUUKcJLyuHA-1
Received: from email.seznam.cz
	by email-smtpc7b.ng.seznam.cz (email-smtpc7b.ng.seznam.cz
	[10.23.13.195]) id 48c48d275d5cde7d492e7c3b;
	Fri, 12 Nov 2021 10:34:37 +0100 (CET)
Received: from [192.168.1.174] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay2.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Fri, 12 Nov 2021 10:34:34 +0100 (CET)
Subject: Re: How do you format a disk using slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
Message-ID: <54cc6d88-1151-69ec-4531-a751c828d9e0@seznam.cz>
Date: Fri, 12 Nov 2021 10:34:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgoxLiBSZXN0YXJ0IHRvIGFub3RoZXIgc3lzdGVtIGZyb20gZXh0ZXJuYWwgZGlzayBv
ciBmbGFzaC4KMi4gU2hyaW5rIHlvdXIgaW5zdGFsbGVkIHN5c3RlbSBhcyBtdWNoIGFzIHlvdSBj
YW4gd2l0aCBHcGFydGVkLiBJZiB5b3UgCmhhdmUgb25lIHBhcnRpdGlvbiwgaXQgd2lsbCBiZSBl
YXNpZXIuIElmIHlvdSBoYXZlIHR3byBwYXJ0aXRpb25zLCB5b3UgCm11c3Qgc2hyaW5rIHRoZW0g
YWxsIChzeXN0ZW0gYW5kIGRhdGEpLiBJZiB0aGUgc3lzdGVtIGlzIG9uIHRoZSBleHRlbmRlZCAK
cGFydGl0aW9uLCB0aGlzIHR1dG9yaWFsIHdpbGwgZG9uJ3Qgd29yay4KMy4gSW4gVGVybWluYWwg
Y2QgdG8gdGhlIGZvbGRlciB3aGVyZSB5b3Ugd2FudCB0byBoYXZlIHlvdXIgYmFja3VwIG9mIApz
eXN0ZW0gYW5kIHdyaXRlOgpzdWRvIGRkIGlmPS9kZXYvc2RhMSBvZj1maWxlLmlzbwo0LiBXYWl0
IGZvciBmaW5pc2ggdGhlIHdvcmsuIEl0IHdvdWxkIGJlIHNsb3cuIEl0IGRlcGVuZHMgb24gZGlz
ayBzcGVlZCAKYW5kIHN5c3RlbSBzaXplLgo1LiBBZnRlciBmaW5pc2hpbmcgdGhlIHdvcmssIGVy
YXNlIGRpc2sgYWdhaW4gYW5kIHJlc3RhcnQgdG8geW91ciBzeXN0ZW0uCgpTdWNjZXNzIQoKVHJp
ZWQgb24gVWJ1bnR1IE1hdGUgb3IgRGViaWFuIG9yIFZpbnV4LiBNeSBmcmllbmQgZm91bmQgdGhp
cyB3YXkgdG8gCmJhY2t1cCBzeXN0ZW1zIGFuZCBpdCB3b3JrcyBtYW55IHllYXJzIGZvciB1cy4g
QmUgY2FyZWZ1bCwgeW91IGhhdmUgdG8gCmNvbnRyb2wsIHdoYXQgaXMgeW91ciBzeXN0ZW0gd2hh
dCB5b3Ugd2FudCB0byBiYWNrdXAgaWYgaXQncyBTREExIG9yIApTREIxIG9yIHdoYXQuCgpUYWtl
IGNhcmUuCgpCZXN0IHJlZ2FyZHMKClZvanRhLgpEbmUgMTIuIDExLiAyMSB2IDI6MzcgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4gSGVsbG8gZm9sa3MsCj4g
Cj4gSSBoYXZlIGJlZW4gcGxheWluZyB3aXRoIGxpbnV4IGZvciBhbG1vc3QgdHdvIHdlZWtzIGJ5
IG5vdy7CoCBJdCBzZWVtcyAKPiB0aGF0IEkgaGF2ZSBzZXR0bGVkIG9uIHNsaW50LiBJIGluc3Rh
bGxlZCBpdCBvbiBhIDEyOCBHQiBTRCBkaXNrIGFuZCBJIAo+IGZpbmQgaXQgdmVyeSBmYXN0IGFu
ZCByZXNwb25zaXZlLiBJIGhhdmUgYmVndW4gdG8gdXNlIGl0IGZvciBteSBlbWFpbCAKPiBhbmQg
aW50ZXJuZXQgYnJvd3Npbmcgb24gZGFpbHkgYmFzZXMuIEkgaGF2ZSBub3QgdXNlZCBpdCBmb3Ig
d29yZCAKPiBwcm9jZXNzaW5nIHlldCwgYnV0IGl0IGxvb2tzIHRoYXQgdGhlIHN5c3RlbSBjYW4g
YmUgdXNlZCBxdWl0ZSAKPiBlZmZpY2llbnRseSB3aXRoIHRoZSBMaWJyZSBvZmZpY2UuCj4gCj4g
Tm93IEkgbmVlZCB0byBmaWd1cmUgb3V0IGhvdyB0byBmb3JtYXQgZGlza3MgYW5kIG1ha2UgYmFj
a3VwIGNvcGllcyBvZiAKPiBteSB3b3JrLgo+IAo+IEkgd2VudCB0aHJvdWdoIGFsbCB0aGUgR1VJ
IG1lbnVzIGFuZCBjb3VsZCBub3QgZmluZCBhbnkgdXRpbGl0eSBmb3IgCj4gZm9ybWF0dGluZyBV
U0IgZHJpdmVzIG9yIFNEIGRpc2tzLCBhcyBhIGZpcnN0IHN0ZXAgZm9yIGJhY2t1cCBvZiBteSAK
PiB3b3JrLiBJcyB0aGlzIHRhc2sgdW5kb2FibGUgaW4gdGhlIEdVSSBlbnZpcm9ubWVudCBhbmQg
SSBoYXZlIHRvIGxvb2sgCj4gZm9yIHRoZSB1c2Ugb2YgdGVybWluYWwgZm9yIGZvcm1hdHRpbmcg
ZGlza3M/Cj4gCj4gQ2hlZXJzLAo+IAo+IElicmFoaW0KPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

