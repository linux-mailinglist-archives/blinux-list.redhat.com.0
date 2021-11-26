Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5891345E9D0
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 10:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637917405;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JTLCQEd6LaDrsPVjnO//QpiDb4l7wsCo1juh2wkKUWQ=;
	b=atv8VMaPmr1mBBr8XZY/3R2J27+J0AJJFOrqw7d8IIHd2aJk6IK2MDu/dfdRMXYdScgQ6M
	Q/tkoidzCf1rz6CsWK5iO+zdeqDumz7c8U6QUVVOL27sFUHElXiHmhIfFQtF6Y5ZpcEW5S
	gCUk2gVlNVdJee7g41to7xAPF8S+pa4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-316-c-7D0yCPN9q5eLbQ4CIxgQ-1; Fri, 26 Nov 2021 04:03:20 -0500
X-MC-Unique: c-7D0yCPN9q5eLbQ4CIxgQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4F5B10066F7;
	Fri, 26 Nov 2021 09:03:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 206F060854;
	Fri, 26 Nov 2021 09:03:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA5021809C81;
	Fri, 26 Nov 2021 09:03:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ92suj025935 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 04:02:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F09D02166B3F; Fri, 26 Nov 2021 09:02:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF062166B2D
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 09:02:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DDE2811E7A
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 09:02:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-310-U19bRuZpOI6oZcPU0prQww-1;
	Fri, 26 Nov 2021 04:02:48 -0500
X-MC-Unique: U19bRuZpOI6oZcPU0prQww-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CD031A1CA8
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:02:06 +0100 (CET)
Message-ID: <ef72ac37-238b-4d38-8e50-c0fb97ae2b35@slint.fr>
Date: Fri, 26 Nov 2021 11:02:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
	<52d9d2ac-c3ad-cb3a-d24d-2ffcd3a19e39@gmail.com>
In-Reply-To: <52d9d2ac-c3ad-cb3a-d24d-2ffcd3a19e39@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AQ92suj025935
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gSWJyYWhpbSwKCnRoZXNlIGNvbW1hbmRzIGxpc3QgZWFjaCBjb25maWd1cmF0aW9uIGZp
bGUgc2hpcHBlZCBpbiBhIG5ld2x5IGluc3RhbGxlZApwYWNrYWdlIGlmIGEgbm9uIGlkZW50aWNh
bCBmaWxlIGJlYXJpbmcgdGhlIHNhbWUgbmFtZSBhbHJlYWR5IGV4aXN0cywgCmFuZCBsZXQKeW91
IGRlY2lkZSB3aGF0IHRvIGRvLgpJbml0aWFsbHkgdGhlIG5ldyBmaWxlIGhhcyBiZWVuIGluc3Rh
bGxlZCBhbG9uZ3NpZGUgdGhlIG9sZCBvbmUsIGl0cyAKbmFtZSBoYXZpbmcKd2l0aCB0aGUgLm5l
dyBleHRlbnNpb24gaW5zdGVhZCBvZiAuY29uZgoKWW91ciBjaG9pY2VzIGFyZToKCjEuIHJlcGxh
Y2UgdGhlIG9sZCBmaWxlIGJ5IHRoZSBuZXcgb25lLiBUaGUgb2xkIG9uZSB3aWxsIGJlIGJhY2tl
ZCB1cCwgdGhlCnN1ZmZpeCBiZWluZyBjaGFuZ2VkIGZyb20gLmNvbmYgdG8gLm9yaWcKMi4gZGVs
ZXRlIHRoZSBuZXcgY29uZmlndXJhdGlvbiBmaWxlLgozLiBkaXNwbGF5IHRoZSBkaWZmZXJlbmNl
cyBiZXR3ZWVuIHRoZSBvbHMgYW5kIHRoZSBuZXcgZmlsZQo0LiB1c2UgdGhlIGFwcGxpY2F0aW9u
IHZpbWRpZmYgKG9yIGd2aW1kaWZmIGluIGdyYXBoaWNhbCBtb2RlKSB0byAKZGlzcGxheSB0aGUK
ZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUgb2xkIGFuZCB0aGUgbmV3IGZpbGUgYW5kIGxldCB5b3Ug
Y2hlcnJ5LXBpY2sgdGhlIApvbmVzCnlvdSB3YW50IHRvIGFwcGx5CjUgRG8gbm90aGluZy4gVGhl
biB5b3UgY2FuIGRlYWwgd2l0aCB0aGUgZGlmZmVyZW5jZXMgb3RoZXJ3aXNlIG9yIHJ1biAKZG90
bmV3IG9yCmd0ay1kb3RuZXcgbGF0ZXIuCgpJZiB5b3UgZGlkbid0IGN1c3RvbWl6ZSB0aGUgIm9s
ZCIgY29uZmlndXJhdGlvbiBmaWxlLCBpdCBpcyBzYWZlIHRvIApyZXBsYWNlIGl0CmJ5IHRoZSBu
ZXcgb25lLgoKSSBzaG91bGQgcHJvYmFibHkgaW5jbHVkZSB0aGVzZSBleHBsYW5hdGlvbiBpbiB0
aGUgU2xpbnQgSGFuZEJvb2suLi4KCkNoZWVycywKRGlkaWVyCgoKTGUgMjYvMTEvMjAyMSDDoCAw
MzowMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhl
bGxvIERpZGllciwKPiBJcyB0aGlzIGNvbW1hbmQgbmVjZXNzYXJ5OjoKPiBkb3RuZXfCoChvcsKg
ZG90LW5ldy1ndGvCoGluwqBhwqBncmFwaGljYWzCoGVudmlyb25tZW50KS4KPiBJIGFtIHVuZGVy
IHRoZSBpbXByZXNzaW9uIHRoYXQgaXNzdWluZyB0aGlzIGNvbW1hbmQgd291bGQgb3ZlcnJpZGUg
bXkgCj4gY3VzdG9taXplZCBzZXR0aW5ncy4gQW0gSSBjb3JyZWN0Pwo+IENoZWVycywKPiBJYnJh
aGltCj4gCj4gT24gMTEvMjUvMjEgODowNSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4gSGkgSWJyYWhpbSBhbmQgQWxsLAo+Pgo+PiB5dC1kbHAgaXMgbm93
IHByb3ZpZGVkIGZvciBTbGludC4KPj4KPj4gSSBhbSBsaXR0bGUgbGF0ZSBiZWNhdXNlIEkgdG9v
ayB0aGlzIG9jY2FzaW9uIHRvIHVwZ3JhZGUgZmZtcGVnLCBtcHYgCj4+IGFuZCB2bGMuIG1wdiBu
b3cgdXNlcyB5dC1kbHAgYXMgZG93bmxvYWRlciBpZiBhdmFpbGFibGUuCj4+Cj4+IFRvIGtub3cg
bW9yZToKPj4gaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9wb3N0L3NsaW50L2F1ZGlvLWFuZC12
aWRlby1wYWNrYWdlcy11cGdyYWRlZAo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+Pgo+PiBMZSAy
Mi8xMS8yMDIxIMOgIDE2OjUwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4+PiBIZWxsbyBmcmllbmRzLAo+Pj4KPj4+IEkgYW0gd29uZGVyaW5nIGlmIHRo
ZXJlIGFyZSBnb29kIGFwcGxpY2F0aW9ucyBmb3IgZG93bmxvYWRpbmcgZnJvbSAKPj4+IHlvdXR1
YmUgdGhhdCB3b3JrcyB3ZWxsIHdpdGggbGludXghIEkgYW0gbG9va2luZyBmb3Igc29tZXRoaW5n
IAo+Pj4gc2ltaWxhciB0byBQb250ZSdzIG1lZGlhIGRvd25sb2FkZXIgd2hpY2ggd29ya3Mgd2Vs
bCB3aXRoIHdpbmRvd3MgCj4+PiBzY3JlZW4gcmVhZGVycy4gSXMgdGhlcmUgc3VjaCBhbiBhcHA/
Cj4+Pgo+Pj4gVGhlIHNlY29uZCBhcHBsaWNhdGlvbiBJIGFtIGhvcGluZyB0byBmaW5kIGlzIGEg
Z29vZCB3ZWF0aGVyIGFwcC4gSSAKPj4+IHRyaWVkIHRvIHRoZSB3ZWF0aGVyIG9uIHRoZSB0ZXJt
aW5hbCBhbmQgZGlkIG5vdCBsaWtlIGl0IGF0IGFsbC4gU28sIAo+Pj4gSSBhbSBob3BpbmcgdG8g
ZmluZCBhIGJldHRlciBhbHRlcm5hdGl2ZSB0aGF0IHdvcmtzIG9uIHRoZSBndWkuCj4+Pgo+Pj4g
Q2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

