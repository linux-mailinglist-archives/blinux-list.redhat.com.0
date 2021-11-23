Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1744E45AA80
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 18:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637689634;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6/mkcPrC5zSlLbpJl08ia4nQ9JW5ledyr8QhHGH5m48=;
	b=Vcw1v61ilbNsqWHTdHrU1MN/SMSLJLr0eh/aBm2QhVUS2mUCGMd4BwwKjWP6bvEIc0a0jW
	qEs0W8DM9uOknWcG8HjZJaJx917eYgYw8I7xqdVaApYIdfcNWQk6qPnmwUM3MIiD4mF7r4
	Xv1x+bQVT9fqnezbpuWKA1oH2UilTYE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-XYwJ7PCzM3Sm2-BaMKLaoQ-1; Tue, 23 Nov 2021 12:47:10 -0500
X-MC-Unique: XYwJ7PCzM3Sm2-BaMKLaoQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EBB0100D680;
	Tue, 23 Nov 2021 17:47:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34F5C418E;
	Tue, 23 Nov 2021 17:47:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E1041832E7F;
	Tue, 23 Nov 2021 17:46:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANHj6ZM027197 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 12:45:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BD60E2026D69; Tue, 23 Nov 2021 17:45:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7B7E2026D67
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:45:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAF4485A5B9
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:45:03 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-443-qYPa5VzqMUOqYlUp7mEuQA-1;
	Tue, 23 Nov 2021 12:45:01 -0500
X-MC-Unique: qYPa5VzqMUOqYlUp7mEuQA-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9CB79A3E62
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:44:20 +0100 (CET)
Message-ID: <765861f8-cdf9-9839-66e5-55ab3b870e03@slint.fr>
Date: Tue, 23 Nov 2021 19:44:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
	<8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
	<de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
In-Reply-To: <de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ANHj6ZM027197
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

SGkgSWJyYWhpbSwKCmluc3RhbGxpbmcgc25hcCBwYWNrYWdlcyBuZWVkcyB0aGUgc29mdHdhcmUg
c25hcGQgdGhhdCBJIGRvbid0IGFuZCB3b24ndCAKc2hpcAppbiBTbGludCwgc29ycnkuCgpPbiB0
aGUgdGhlIG90aGVyIGhhbmQgSSBoYXZlIGZhaWxlZCB0byBidWlsZCBDbGlwR3JhYiBmcm9tIHNv
dXJjZSBvbiBTbGludApiZWNhdXNlIG91ciBjb21waWxlciBzdWl0ZSBpcyB0b28gb2xkLgoKT24g
YSBwb3NpdGl2ZSBub3RlIFNsYWNrd2FyZS0xNVJDMiBpcyBvdXQsIHNvIGhvcGVmdWxseSBTbGFj
a3dhcmUgMTUgd2lsbCBiZQpyZWxlYXNlZCBpbiBhIGEgbm8tc28tZGlzdGFudCBmdXR1cmUgKG5v
dC1zby1kaXN0YW50PWEgZmV3IG1vbnRocykuIFRoZW4gCkkgd2lsbApyZWJhc2UgU2xpbnQgb24g
U2xhY2t3YXJlIDE1IGFuZCB0aGVyZSB3aWxsIGJlIG5vIGlzc3VlIGJ1aWxkaW5nIENsaXBHcmFi
IGFzCmFueSBvdGhlciByZWNlbnQgc29mdHdhcmUgdmVyc2lvbi4KCk1lYW53aGlsZSBhcyBJIHdy
b3RlIHlvdSBjYW4gdXNlIHlvdXR1YmUtZGwgb24gdGhlIGNvbW1hbmQgbGluZS4KCkkgYWxzbyBw
bGFuIHRvIHByb3ZpZGUgaXRzIHN1Y2Nlc3NvciB5dC1kbCBubyBsYXRlciB0aGF0IHRvbW9ycm93
LCBhbW9uZyBhCmJhdGNoIHRoYXQgd2lsbCBhbHNvIHVwZ3JhZGUgZmZtcGVnLCB2bGMsIG1wdiwg
dXBncmFkaW5nIGFzc29jaWF0ZWQgCmNvZGVjcyBhbmQKYWRkaW5nIGEgZmV3IG9uZXMuCgpDaGVl
cnMsCkRpZGllcgoKTGUgMjMvMTEvMjAyMSDDoCAxNzozMSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IHRoYW5rcyBhIG1pbGxpb24gZm9yIHN1Z2dlc3Rp
bmcgdGhpcyBhcHBsaWNhdGlvbi4gRnJvbSB0aGUgZGVzY3JpcHRpb24sIAo+IHRoaXMgYXBwbGlj
YXRpb24gc291bmRzIHNpbWlsYXIgdG8gUG9udGUncyBNZWRpYSBkb3dubG9hZGVyLgo+IAo+IFVu
Zm9ydHVuYXRlbHksIEkgY291bGQgbm90IHJ1biB0aGlzIGV4ZWN1dGFibGUgaW1hZ2Ugb24gbXkg
c2xpbnQgCj4gZGVza3RvcC4gRXZlcnl0aW1lIEkgdHJ5IHRvIG9wZW4gaXQsIEkgZ2V0IGEgbWVz
c2FnZSB0aGF0IHNheXMgdGhlcmUgaXMgCj4gbm8gYXBwbGljYXRpb24gaW5zdGFsbGVkIHRvIG9w
ZW4gZXhlY3V0YWJsZSBmaWxlcywgb3Igc3VjaCB0aGluZy4gSXQgCj4gZ2l2ZXMgbWUgdGhlIG9w
dGlvbiB0byBzZWFyY2ggZm9yIG9uZSB3aXRoIHllcyBvciBubywgYnV0IHRoZSBkZWZhdWx0IAo+
IGNob2ljZSBpcyBuby4KPiAKPiBTaW5jZSBJIGFtIGEgYmVnaW5uZXIsIEkgZG8gbm90IHVuZGVy
c3RhbmQgdGhpcyBtZXNzYWdlLiBJIGhpdCBlbnRlciBvbiAKPiB5ZXMsIGJ1dCBub3RoaW5nIGhh
cHBlbmVkLgo+IAo+IEhvb3BlZnVsbHkgc29tZW9uZSB3aG8gaGFzIGV4cGVyaWVuY2Ugd2l0aCBv
cGVuaW5nIHN1Y2ggZmlsZXMgd291bGQgaGVscCAKPiBtZSBmaWd1cmUgaXQgb3V0Lgo+IAo+IENo
ZWVycywKPiAKPiBJYnJhaGltCj4gCj4gT24gMTEvMjIvMjEgMTo0NSBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSSB1c2UgQ2xpcEdyYWIgb24gbXkgTWFj
IGFuZCBXaW5kb3dzLgo+Pgo+PiBTbyBJIGNoZWNrZWQgYW5kIGl0IGlzIG9uIExpbnV4IGFzIHdl
bGwuCj4+Cj4+IHd3dy5jbGlwZ3JhYi5vcmcKPj4KPj4gSXRzIGEgYXBwIGltYWdlLCBubyBpbnN0
YWxsYXRpb24gbmVlZGVkLgo+Pgo+Pgo+PiBVc2UgdGhlIGZsYXQgcmV2aWV3IHRvIGNsaWNrIHRo
ZSBkb3dubG9hZCB0YWIuCj4+Cj4+IHBhc3RlIHRoZSB5b3V0dWJlIGxpbmsgaW4gdGhlIGVkaXQg
ZmllbGQuCj4+Cj4+IHRhYiB0byB0aGUgY29tYm8gYm94IHRvIGNob29zZSBvcmlnb25hbCwgb3Ig
bXAzIGF1ZGlvIC4KPj4KPj4gcHJlc3NpbmcgdGhlIGRvd24gYXJyb3cgaW4gdGhpcyBjb21ibyBi
b3ggaGFkIG5vIHNwZWVjaCwgc28gYWZ0ZXIgCj4+IHByZXNzaW5nIGRvd24gYXJyb3csIHByZXNz
IHRhYiwgdGhlbiBzaGlmdCB0YWIgdG8gaGF2ZSB0aGUgc2VsZWN0aW9uIAo+PiBzcG9rZW4uCj4+
Cj4+IERvIHRoZSBzYW1lIGZvciB0aGUgcXVhbGl0eSBjb21ibyBib3guCj4+Cj4+IHRoZW4gdGFi
IHRvIHRoZSBncmFiIHRoaXMgY2xpcCBidXR0b24gYW5kIHByZXNzIHRoZSBzcGFjZSBiYXIuCj4+
Cj4+Cj4+IEkgaG9wZSB0aGlzIGhlbHBzLgo+Pgo+PiBUaGFua3MsCj4+Cj4+IFJvYgo+Pgo+PiBP
biAxMS8yMi8yMSAxMTo1OSBBTSwgUm9iZXJ0IENvbGUgd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBJ
IGRvbnQga25vdyBvZiBhbnkgZ3VpIHByb2dyYW1zLAo+Pj4KPj4+IGJ1dCB5b3UgY2FuIHRyeQo+
Pj4KPj4+IHd3dy5tcDMtbm93LmNvbQo+Pj4KPj4+Cj4+PiBUaGFua3MsCj4+Pgo+Pj4gUm9iCj4+
Pgo+Pj4KPj4+IE9uIDExLzIyLzIxIDEwOjUwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhlbGxvIGZyaWVuZHMsCj4+Pj4KPj4+PiBJIGFtIHdvbmRl
cmluZyBpZiB0aGVyZSBhcmUgZ29vZCBhcHBsaWNhdGlvbnMgZm9yIGRvd25sb2FkaW5nIGZyb20g
Cj4+Pj4geW91dHViZSB0aGF0IHdvcmtzIHdlbGwgd2l0aCBsaW51eCEgSSBhbSBsb29raW5nIGZv
ciBzb21ldGhpbmcgCj4+Pj4gc2ltaWxhciB0byBQb250ZSdzIG1lZGlhIGRvd25sb2FkZXIgd2hp
Y2ggd29ya3Mgd2VsbCB3aXRoIHdpbmRvd3MgCj4+Pj4gc2NyZWVuIHJlYWRlcnMuIElzIHRoZXJl
IHN1Y2ggYW4gYXBwPwo+Pj4+Cj4+Pj4gVGhlIHNlY29uZCBhcHBsaWNhdGlvbiBJIGFtIGhvcGlu
ZyB0byBmaW5kIGlzIGEgZ29vZCB3ZWF0aGVyIGFwcC4gSSAKPj4+PiB0cmllZCB0byB0aGUgd2Vh
dGhlciBvbiB0aGUgdGVybWluYWwgYW5kIGRpZCBub3QgbGlrZSBpdCBhdCBhbGwuIFNvLCAKPj4+
PiBJIGFtIGhvcGluZyB0byBmaW5kIGEgYmV0dGVyIGFsdGVybmF0aXZlIHRoYXQgd29ya3Mgb24g
dGhlIGd1aS4KPj4+Pgo+Pj4+IENoZWVycywKPj4+Pgo+Pj4+IElicmFoaW0KPj4+Pgo+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

