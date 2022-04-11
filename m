Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C58F4FC4CD
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 21:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649704511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GQyNjbsp5hBvn9vFl/5q/x8JEm8z4QwZWDQsrjIwya0=;
	b=AxPL1/Xqx9CpI+xJqIb1XfU0LjZqxUjRNMFpOlvfgPsrxBN3NZXYPtUcf0alKLajDnPpdk
	FFy4OrVvqdr94TOQOdvWYC8k7Who5xRyNke+5GclUy+cecGUJiEVFFrM0qkoQHP9Wp3N3T
	vdMxGRIABMLWn9qf7qgnXD67pOrRmYk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-tlpYo7OPNfqZQ6N1a-GcGg-1; Mon, 11 Apr 2022 15:15:09 -0400
X-MC-Unique: tlpYo7OPNfqZQ6N1a-GcGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC27B3802124;
	Mon, 11 Apr 2022 19:15:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 867CB111DCF9;
	Mon, 11 Apr 2022 19:15:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E5E71940370;
	Mon, 11 Apr 2022 19:15:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 20:15:00 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
 <mailman.7756.1649704345.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7756.1649704345.111203.blinux-list@redhat.com>
Message-ID: <mailman.7889.1649704507.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJ1bmsgY29kaW5nIGlzIG5vdCByZWFsbHkgYWR2aXNlYWJsZSwgbG9sLgoKSSdtIG5vdCBzdXJl
IHdoaWNoIHdvdWxkIHdvcmsgYmVzdCBhY3R1YWxseSwgcmV2ZXJ0IGFuZCBoYXZlIGZvbGtzIG1h
bnVhbGx5IGluc3RhbGwgaW5vdGlmeSBvciB0cnkgY29udmVydGluZyB0byBweXRob24tcHlpbm90
aWZ5IHRob3VnaAoKT24gTW9uLCBBcHIgMTEsIDIwMjIgYXQgMDk6MTI6MTdQTSArMDIwMCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIb3dkeSwKPiAKPiBTdXJl
IGNhbiByZXZlcnQgaXQgdGlsIHRoZSBkZXBlbmRlbmN5IGlzc3VlIGlzIGZpeGVkLiBCdXQgaXQg
bWlnaHQgdGFrZSBhIHdoaWxlLCBp4oCYbSBjdXJyZW50bHkgYXQgYW4gYmFyIGRyaW5rIHNvbWUg
Y29sZCBiZWVyLgo+IAo+IE1heWJlIGkgY2FuIHJld29yayBpdCB0byB1c2UgcHl0aG9uLXB5aW5v
dGlmeSBpbnN0ZWFkIG9mIHB5dGhvbi1pbm90aWZ5LiBUaGlzIGlzIGluIG9mZmljaWFsIEFyY2gg
UmVwb3NpdG9yeS4KPiAKPiAKPiBDaGVlcnMgY2hyeXMKPiAKPiA+IEFtIDExLjA0LjIwMjIgdW0g
MjA6NDggc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPjoKPiA+IAo+ID4g77u/Rm9yIG5vdyBjYW4geW91IHJldmVydCB0aGF0
IGNoYW5nZSB0byB0aGUgc2NyaXB0PyBJdCBidWlsdCBmaW5lIGJlZm9yZSBhbmQganVzdCBuZWVk
ZWQgdGhlIG5vdGlmeSBpbnN0YWxsZWQgdmlhIHBpcCB0byBtYWtlIGl0IHdvcmssIGhvd2V2ZXIg
SSBkdW5ubyBlbm91Z2ggYWJvdXQgdGhlIG90aGVyIHB5dGhvbi1weW5vdGlmeSBwYWNrYWdlIGF0
IGFsbCB0aG91Z2ggCj4gPiAKPiA+PiBPbiBNb24sIEFwciAxMSwgMjAyMiBhdCAwODo0MzowNFBN
ICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+IEhv
d2R5LAo+ID4+IAo+ID4+IFdlbGwgSSBtIG5vdCB0aGUgbWFpbnRhaW5lciBvZiB0aGUgcHl0aG9u
LWlub3RpZnkgcGFja2FnZS4gSWYgaXQgZG9lcyBub3QgYnVpbGQgcGxlYXNlIGNvbnRhY3QgdGhl
IG1haW50YWluZXIuCj4gPj4gCj4gPj4gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdl
cy9weXRob24taW5vdGlmeQo+ID4+IAo+ID4+IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0
aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUuIFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51
eCByZXBvcy4KPiA+PiAKPiA+PiBDaGVlcnMgY2hyeXMKPiA+PiAKPiA+Pj4+IEFtIDExLjA0LjIw
MjIgdW0gMjA6Mjggc2NocmllYiBMaW51eCBBMTF5IDxjaHJ5c0BsaW51eC1hMTF5Lm9yZz46Cj4g
Pj4+IAo+ID4+PiDvu79Ib3dkeSwKPiA+Pj4gCj4gPj4+IFdlbGwgSSBtIG5vdCB0aGUgbWFpbnRh
aW5lciBvZiB0aGUgcHl0aG9uLWlub3RpZnkgcGFja2FnZS4gSWYgaXQgZG9lcyBub3QgYnVpbGQg
cGxlYXNlIGNvbnRhY3QgdGhlIG1haW50YWluZXIuCj4gPj4+IAo+ID4+PiBodHRwczovL2F1ci5h
cmNobGludXgub3JnL3BhY2thZ2VzL3B5dGhvbi1pbm90aWZ5Cj4gPj4+IAo+ID4+PiBNYXliZSBp
IHdpbGwgcmVwbGFjZSB0aGlzIHdpdGggcHl0aG9uLXB5aW5vdGlmeSBhbnl0aW1lLiBUaGlzIGlz
IGluIG9mZmljaWFsIGFyY2ggbGludXggcmVwb3MuCj4gPj4+IAo+ID4+PiBDaGVlcnMgY2hyeXMK
PiA+Pj4gCj4gPj4+IFZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0Cj4gPj4+IAo+ID4+Pj4+IEFt
IDExLjA0LjIwMjIgdW0gMjA6MTEgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiA+Pj4+PiAKPiA+Pj4+IO+7v0ZhaWxl
ZCB0byBidWlsZCBhbmQgbWFrZSB0aGUgcHl0aG9uIGlub3RpZnkgZHVlIHRvIHB5dGhvbjItbm9z
ZSBpcyB3aGF0IEknbSBnZXR0aW5nLiBBZGRpdGlvbmFsbHkgdGhlIHB5dGhvbi1pbm90aWZ5IHlv
dSdyZSB1c2luZyBmb3IgdGhlIHNjcmlwdCBpcyBtYXJrZWQgb3V0IG9mIGRhdGUuIEknbGwgdHJ5
IHB1dHRpbmcgaW5vdGlmeSBiYWNrIHdpdGggcGlwIGFuZCBzZWUgaWYgdGhhdCBnZXRzIGFyb3Vu
ZCBpdCBhZ2FpbiwgdGhvdWdoIEknbSBub3Qgc3VyZSB3aHkgaXQncyBmYWlsaW5nIHRvIGJ1aWxk
Lgo+ID4+Pj4gCj4gPj4+PiBBbnkgb3RoZXIgQXJjaCB1c2VycyBydW5uaW5nIGludG8gdGhpcyBv
ciBpcyBpdCBqdXN0IG1lPwo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

