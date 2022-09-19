Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 962705BD7F0
	for <lists+blinux-list@lfdr.de>; Tue, 20 Sep 2022 01:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663629174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b7WHp2wOdIeJ57BMvhIKb5j9ROWDoAJwHO6wYM0b66s=;
	b=FBxuhl/caFR6uxszqsnS2tN3POH1bqm1D0x66uBT3Lbr1QV7950bcD2dhxHMmPs/Td+F9c
	6tu3sFTaBH75PopIBOSKBXI+x/WQsL1N+4dPU7LEdFImHXWdCdNi+Pgt3kVSCeKmTomyNd
	k7tZd4733IAC0B2NRXe3DXbrTkQvjKA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-ouqavhyWNayuzd0SS3Tzlg-1; Mon, 19 Sep 2022 19:12:51 -0400
X-MC-Unique: ouqavhyWNayuzd0SS3Tzlg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88E0A85A583;
	Mon, 19 Sep 2022 23:12:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 73EF749BB60;
	Mon, 19 Sep 2022 23:12:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1FE9F19465B1;
	Mon, 19 Sep 2022 23:12:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 19 Sep 2022 16:13:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: KDE Plasma 5.26 beta questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
 <mailman.1010.1663513818.6081.blinux-list@redhat.com>
 <mailman.1026.1663516986.6083.blinux-list@redhat.com>
In-Reply-To: <mailman.1026.1663516986.6083.blinux-list@redhat.com>
Message-ID: <mailman.1264.1663629168.6080.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

CkhhbmsKCnRoYW5rcwoKT24gOS8xOC8yMDIyIDk6MDAgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG93ZHksCj4gaGVyZSBpcyB0aGUgaW5pdGlhbCBob3d0
bzoKPiBodHRwczovL3d3dy5wYXRyZW9uLmNvbS9wb3N0cy83MjE0NzQ3OQo+Cj4gY2hlZXJzIGNo
cnlzCj4KPgo+Cj4gQW0gMTguMDkuMjIgdW0gMTc6MTAgc2NocmllYiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uOgo+PiBIb3dkeSwKPj4KPj4gTGlrZSBpIHdyb3RlLCBpIG0gY3Vy
cmVudGx5IG5vdCBvbiBteSBjb21wdXRlci4gSSBzZW5kIHRoZSAKPj4gaW5zdHJ1Y3Rpb25zIHdo
ZW4gaSBhcnJpdmUgYXQgaG9tZS4KPj4KPj4gQ2hlZXJzIGNocnlzCj4+Cj4+Cj4+PiBBbSAxOC4w
OS4yMDIyIHVtIDE2OjM5IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biAKPj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Cj4+PiDvu79TdXJlLCBJIGdvdCBk
b2NrZXIgc2V0IHVwIHNvIGhvdyB3b3VsZCBJIGdvIGFib3V0IHRoaXM/Cj4+Pgo+Pj4gSSB0cmll
ZCB2aWEgcXVpY2tlbXUgd2l0aCBubyBsdWNrLCBPcmNhIGRpZG4ndCBzZWVtIHRvIGNvbWUgdXAg
aW4gCj4+PiB0aGUgaXNvIHRoYXQgcXVpY2tlbXUgcHVsbGVkIGRvd24gZm9yIEtERSBOZW9uIHVu
c3RhYmxlLiBTbyB5ZXMsIAo+Pj4gSSdsbCB0YWtlIHRoYXQgaG93IHRvIGd1aWRlIHllcyBwbGVh
c2UKPj4+Cj4+Pgo+Pj4KPj4+PiBPbiA5LzE4LzIyIDE1OjMwLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhvd2R5LAo+Pj4+Cj4+Pj4gVG8gZ2V0IGl0IGlu
IG9mZmljaWFsIEFyY2hMaW51eCBSZXBvc2l0b3J5IHlvdSBtaWdodCBuZWVkIHRvIHdhaXQgCj4+
Pj4gdGlsIEtERSBQbGFzbWEgNS4yNiBpcyByZWxlYXNlZC4KPj4+Pgo+Pj4+IEJ1dCBpIGp1c3Qg
c2VhcmNoZWQgYSBlYXN5IHdheSBmb3IgdGVzdGluZyBLREUgTmVvbiBEZXZlbG9wbWVudCAKPj4+
PiBuaWdodGx5IHVzaW5nIGRvY2tlci7CoCBBcyB1c2VycyBzaG91bGQgYmUgYWJsZSB0byBnZXQg
aW52b2x2ZWQgaW4gCj4+Pj4gYWNjZXNzaWJpbGl0eSBkZXZlbG9wbWVudCBhbmQgdGVzdGluZyBw
cm9jZXNzLgo+Pj4+Cj4+Pj4gSSBtIGN1cnJlbnRseSBub3Qgb24gbXkgbWFjaGluZSBidXQgaSBh
bHJlYWR5IGhhdmUgYSB3b3JraW5nIGhvd3RvIAo+Pj4+IHRvIHNoYXJlIHdpdGggeW91Lgo+Pj4+
Cj4+Pj4gQnkgdGhlIHdheSwgS0RFIGp1c3Qgdm90ZXMgaXRzIGdvYWxzLiBLREUgdm90ZXMgMyBn
b2Fscy4gT25seSA2IAo+Pj4+IGdvYWxzIGF2YWlsYWJsZSBmb3Igdm90aW5nLiBBY2Nlc3NpYmls
aXR5IGlzIG9uZSBvZiB0aGVtLiBTbyB0aGUgCj4+Pj4gY2hhbmNlIGlzIHZlcnkgaGVpZ2ggdGhh
dCBQbGFzbWEgNS4yNiB3YXMganVzdCB0aGUgZmlyc3Qgc2hvdCBvZiBhIAo+Pj4+IGxvbmcgc2Vy
aWVzIG9mIGFjY2Vzc2liaWxpdHkgaW1wcm92ZW1lbnRzLiBCeSB0aGUgd2F5IG1vc3Qgb2YgCj4+
Pj4gcmVjZW50wqAgd29yayBpcyBkb25lIGJ5IGNhcmwgc3dhbiBhbmQgZnVzaW9uZnV0dXJlLiBT
byB0aGUgY2hlcnJ5IAo+Pj4+IGdvZXMgdGhlcmUuCj4+Pj4KPj4+PiBJIG0gY3VycmVudGx5IG1v
c3RseSBidXN5IGluIGdldHRpbmcgb3JjYSByZWJhc2VkIG9uIGFuIHBsdWdpbiAKPj4+PiBhcmNo
aXRlY3R1cmUuCj4+Pj4KPj4+PiBJbnRlcmVzdGluZyB0aW1lcyBhaGVhZCBpbiB0ZXJtcyBvZiBh
Y2Nlc3NpYmlsaXR5Lgo+Pj4+Cj4+Pj4gQ2hlZXJzIGNocnlzCj4+Pj4KPj4+Pj4+IEFtIDE4LjA5
LjIwMjIgdW0gMTY6MjAgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IAo+Pj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4+PiDvu79TbyBxdWljayBxdWVz
dGlvbiwgc2luY2UgS0RFIC5QbGFzbWEgNS4yNiBiZXRhIGlzIGEgdGhpbmcsIHdpdGggCj4+Pj4+
IGFwcGFyZW50bHkgQTExWSBpbXByb3ZlbWVudHMsIGdvaW5nIGJ5IG51bWVyb3VzIFlUIHZpZHMs
IEtERS5vcmcgCj4+Pj4+IGFuZCB0aGVpciAoYWRtaXR0ZWRseSBtYXNzaXZlKSBjaGFuZ2Vsb2cu
Li4KPj4+Pj4KPj4+Pj4gSXMgaXQgd29ydGggdGVzdGluZyBpdCBvdXQ/IExvb2tpbmcgYXQgbXkg
cmVwb3Mgb24gQXJjaCBJJ20gc2VlaW5nIAo+Pj4+PiA1LjI1LjktMSBoZXJlLCBhbmQgbm90IHNl
ZWluZyBhbnkgb2YgdGhlIHVwZGF0ZXMgbGlzdGVkIGluIHRoZSAKPj4+Pj4gY2hhbmdlbG9nLCBp
LmUuIHRoZSBkaWFsb2dzIGFyZSBzdGlsbCBpbmFjY2Vzc2libGUsIHRoZSBjbG9jayAKPj4+Pj4g
ZG9lc24ndCBwbGF5IG5pY2Ugd2l0aCBPcmNhLCBldCBhbC4KPj4+Pj4KPj4+Pj4gU28gZG8gSSBu
ZWVkIHRvIHdhaXQgb24gdGhlIGZ1bGwgcmVsZWFzZSBvZiA1LjI2IHRvIGdldCBhbGwgdGhlIAo+
Pj4+PiBuZXcgZmVhdHVyZXMgdGhlbiwgc2luY2UgdGhlIHdheSBJIHJlYWQgS0RFJ3MgYmV0YS9y
ZWxlYXNlIHNjZWR1bGUgCj4+Pj4+IGlzIHRoZSBiZXRhIGlzIGZlYXR1cmUgY29tcGxldGUgaWYg
SSB1bmRlcnN0YW5kIGl0IHJpZ2h0IG9yIGFtIEkgCj4+Pj4+IG5vdCB1bmRlcnN0YW5kaW5nIGhv
dyBLREUgZG9lcyB0aGVpciBiZXRhcwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBJIGtub3cgQ3J5cyBoYXMg
YmVlbiBkb2luZyBhIGxvdCBvZiB3b3JrIHdpdGggS0RFIHNvIEknbSBob3BpbmcgCj4+Pj4+IGZv
ciB5b3VyIGlucHV0IG9uIHRoaXMsIHNpbmNlIEkndmUgYmVlZW4gdG9sZCBieSBvdGhlciBmb2xr
cyBvZmYgCj4+Pj4+IGxpc3QgdGhleSd2ZSBoYWQgbXVjaCBtdWNoIGJldHRlciBleHBlcmllbmNl
cyB3aXRoIGl0IGFuZCBnZXR0aW5nIAo+Pj4+PiB0aGluZ3MgdG8gd29yayB0aGF0IEkgY2FuJ3Qs
IGZvciBleGFtcGxlCj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

