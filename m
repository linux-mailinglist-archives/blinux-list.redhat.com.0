Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B53853BED1F
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 19:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625679173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+ksQALhjYCYE8Lyr7NnSxSkyi3akbUn/LOwI/fp/SEc=;
	b=ivZ6r5DGtIpTwEQ0j4kObCrOdWMZeLfaoVyUnRPavZQiN/i1kIFZk5TNx1bTlxF2f+rmbn
	nukhMs+Gcn+7RXLUgrERcqH8CAEanoaQ6FUpWzea0wqoZkAZZ9YMTIVFGzCoSln1BCF2rM
	iiJXlwtUV4Iug0og9jTLztmc1sPRaMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-F8w4aod4P8qMtkktKd7lTQ-1; Wed, 07 Jul 2021 13:32:52 -0400
X-MC-Unique: F8w4aod4P8qMtkktKd7lTQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1239E18414A2;
	Wed,  7 Jul 2021 17:32:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE8F65C1C2;
	Wed,  7 Jul 2021 17:32:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34D5F4EA2A;
	Wed,  7 Jul 2021 17:32:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167HWWJs023584 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 13:32:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A61D92044739; Wed,  7 Jul 2021 17:32:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A07D7204473E
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:32:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EAB089C7DC
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:32:29 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-303-VLkUXGM2MmC1WuYIq7Mb3A-1;
	Wed, 07 Jul 2021 13:32:27 -0400
X-MC-Unique: VLkUXGM2MmC1WuYIq7Mb3A-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1AA76A4270
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 18:31:57 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
	<372e8ea5-7c6f-b287-5907-5db16c2088df@schoeppi.net>
Message-ID: <b88ea87f-c94f-79fb-f430-5318c1dfbf6b@slint.fr>
Date: Wed, 7 Jul 2021 19:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <372e8ea5-7c6f-b287-5907-5db16c2088df@schoeppi.net>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167HWWJs023584
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UHJvYmFibHkgeW91IGluc3RhbGxlZCBTbGludCB1c2luZyBhIHRoZSBwcmV2aW91cyBJU08uCgpU
aGUgY3VycmVudCBJU08gcHJvdmlkZXMgYW4gJ2F1dG8nIGluc3RhbGxhdGlvbiBtb2RlIGluIGFk
ZGl0aW9uIHRvIHRoZSAKJ21hbnVhbCcKbW9kZS4KCkluICdhdXRvJyBtb2RlIHlvdSBoYXZlIHpl
cm8gY29tbWFuZCB0byB0eXBlOiB5b3UganVzdCBhbnN3ZXIgcXVlc3Rpb25zLCAKYW5kIGEKY29u
dGV4dHVhbCBoZWxwIGlzIHByb3ZpZGVkLgoKT3VyIHVzZXIgUGF3ZWwgTG9iYSBoYXMgYmVlbiBr
aW5kIGVub3VnaCB0byBwcm92aWRlIGFuIGF1ZGlvIHdhbGsgCnRocm91Z2ggb2YKdGhpcyBuZXcg
J2F1dG8nIGluc3RhbGxhdGlvbiBtb2RlIGF2YWlsYWJsZSBoZXJlOgpodHRwOi8vc2xhY2t3YXJl
LnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvZG9jL0F1ZGlvVHV0b3JpYWxzL3NsaW50LWlu
c3RhbGxhdGlvbi1xdWljay13YWxrdGhyb3VnaC5tcDMKSXQgaXMgbm90IGZ1bGx5IHVwIHRvIGRh
dGUgYnV0IGNsb3NlIGVub3VnaCB0byBnZXQgYSBmZWVsaW5nIG9mIGhvdyBpdCAKd29ya3MuCgpE
aWRpZXIKLS0KRGlkaWVyIFNwYWllcgoKTGUgMDcvMDcvMjAyMSDDoCAxODo1MywgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFN1cmUsIHlvdSBoYXZlIHRv
IGtub3cgaG93IHRvIHN0YXJ0IGJyYWlsbGUgb3Igc3BlZWNoIHdoZW4gdXNpbmcgdGhlIAo+IERl
YmlhbiBpbnN0YWxsZXIuIFRoYXRzIHRydWUgYW5kIGFsc28gd2VsbCBkb2N1bWVudGVkIDstKS4g
QnV0IHRoZW4geW91IAo+IGNhbiB1c2UgYSB2ZXJ5IGNsZWFyIGFuZCBzaW1wbGUgYW5kIGd1aWRl
ZCBpbnN0YWxsYXRpb24gcHJvY2VzcyB3aGljaCAKPiB3YXMgbm90IHRoYXQgc2ltcGxlIEFGQUlL
IHdpdGggZS5nLlNsaW50LiBUaGUgbGFzdCB0aW1lIEkgdHJpZWQgU2xpbnQgSSAKPiBoYWQgdG8g
ZW50ZXIgY29tbWFuZHMgaW4gYSBzaGVsbCB3aGljaCBpcyBub3QgdGhlIGNhc2UgYW5kIG5vdCBu
ZWNlc3NhcnkgCj4gd2l0aCBEZWJpYW4gd2hlcmUgYSBndWlkZWQgaW5zdGFsbGVyIGNhbiBiZSB1
c2VkLgo+IAo+IEJ1dCBvZmNvdXJzZSBJIGNhbiBiZSB3cm9uZywgSSB0ZXN0ZWQgU2xpbnQgYSBm
ZXcgbW9udGhzIGFnbyBhbmQgbWF5YmUgSSAKPiBkbyBub3QgcmVtZW1iZXIgcmlnaHQuCj4gCj4g
QW5kIG9mY291cnNlIFNsaW50IGhhcyBhbGwgdGhpbmdzIGluY2x1ZGVkIHJlZ2FyZGluZyBhY2Nl
c3NlYmlsaXR5IGFuZCAKPiBjYW4gYmUgdXNlZCB2ZXJ5IHdlbGwgd2l0aCBhIGJyYWlsbGUgZGV2
aWNlIG9yIHNwZWVjaCwgbm8gbWF0dGVyLCBTbGludCAKPiBpcyBhbHNvIGEgdmVyeSBnb29kIGNo
b2ljZSByZWdhcmRpbmcgYWNjZXNzZWJpbGl0eS4KPiAKPiAKPiAKPiBBbSAwNy4wNy4yMDIxIHVt
IDE3OjMzIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4gQWN0
dWFsbHksIGRlYmlhbiBkb2VzIG5vdCBoYXZlIHRoZSBtb3N0IGFjY2Vzc2libGUgaW5zdGFsbGVy
LsKgIEZvciB0aGF0LAo+PiBpdCdzIGVpdGhlciBTbGludCBvciBKZW51eC4KPj4gSW4gb3JkZXIg
dG8gZ2V0IGRlYmlhbiBzY3JlZW4gcmVhZGVyIGFjY2Vzc2liaWxpdHkgZ29pbmcsIHlvdSBoYXZl
IHRvIAo+PiBrbm93Cj4+IGFib3V0IGFuZCB1c2UgYSBib290IHBhcmFtZXRlci7CoCBXaXRoIHNs
aW50IGFuZCBKZW51eCwgbm8gc3VjaCBib290Cj4+IHBhcmFtZXRlciBpcyBuZWNlc3NhcnkuCj4+
Cj4+Cj4+IE9uIFdlZCwgNyBKdWwgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4KPj4+IERlYmlhbiBoYXMgdGhlIG1vc3QgYWNjZXNzaWJsZSBpbnN0YWxs
ZXIgQUZBSUssIGFsbCBvdGhlciBkaXN0cm9zIEkgCj4+PiBrbm93IGFyZQo+Pj4gbm90IHRoYXQg
ZWFzeSB0byBzZXR1cC4gU28gZGVmZW5hdGx5IGdpdmUgRGViaWFuIGEgdHJ5IDstKS4KPj4+Cj4+
PiBDaGVlcnMsCj4+Pgo+Pj4gwqDCoCBTY2hvZXAKPj4+Cj4+Pgo+Pj4KPj4+IEFtIDA3LjA3LjIw
MjEgdW0gMTU6Mzkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+
Pj4+IFRoYXQncyBncmVhdCBuZXdzISBJIGhhZCBzZWVuIGEgY29tbWVudCBzb21ld2hlcmUgYWJv
dXQgZGViaWFuIG5vIAo+Pj4+IGxvbmdlcgo+Pj4+IGhhdmluZyBhbiBhY2Nlc3NpYmxlIGluc3Rh
bGwgYnV0IGlmIGl0IHN0aWxsIGRvZXMsIEkgd2lsbCBkZWZpbml0ZWx5IAo+Pj4+IGdvIHRvCj4+
Pj4gdGhhdCBmaXJzdC4KPj4+Pgo+Pj4+Cj4+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4KPj4+Cj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

