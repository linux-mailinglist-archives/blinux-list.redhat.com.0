Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0557D501D64
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649971507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7Ndw9U3pItbUeRFbFQhwxMjabQPxbhjNAQS3jpNTRjA=;
	b=P/OzX3n+6cRB3v2lvsh96DfrBoGXsgefBiNEdKqmaibMnuC3/knPhKExFAV+ajBWsSXH5X
	UGtcYVh1DPbhu3a8412KqaGr2dh3O41kEx1GjhLDfBkD5j1EHAEdY6vADQnzkrJyXejzHi
	WB+k2NV7m+PGbhRNn5XhEUYJHP4YRJs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-167-zQnz3glSMWuifjE5_YAgUQ-1; Thu, 14 Apr 2022 17:25:03 -0400
X-MC-Unique: zQnz3glSMWuifjE5_YAgUQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA2CF801E67;
	Thu, 14 Apr 2022 21:25:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5F34241D3EE;
	Thu, 14 Apr 2022 21:25:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF51B194034E;
	Thu, 14 Apr 2022 21:25:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 23:24:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
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
In-Reply-To: <mailman.8521.1649966212.111207.blinux-list@redhat.com>
Message-ID: <mailman.8401.1649971499.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCBEZXZpbiwgRmVkb3JhIGJlaW5nIGEgd2F5IGZvciBSSCB0byB0ZXN0IG5ldyB2ZXJzaW9u
cyBvZiBzb2Z0d2FyZSBiZWZvcmUKdGhleSBpbmNsdWRlIHRoZW0gaW4gUkggYW5kIHByb3ZpZGUg
bmV3IHJlbGVhc2Ugb2Z0ZW4sIG5vIHdvbmRlciBpZiB5b3UgZmluZApzb21lIGlzc3Vlcy4KCk1h
eWJlIHlvdSBjb3VsZCB0cnkgRGViaWFuPwoKRGlkaWVyCgpMZSAxNC8wNC8yMDIyIMOgIDIxOjU2
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gQmVjYXVz
ZSBGZWRvcmEgd2FzIG11Y2ggbGVzcyBzdGFibGUgb24gKm15KiBzeXN0ZW0sIGEgYnJhbmQgbmV3
IEhQIGxhcHRvcAo+IHdpdGggYSBuZXcgQU1EIGNoaXAuIEkgbWVhbiBJJ20gZ2xhZCBpdCB3b3Jr
cyBmb3IgeSdhbGwsIGJ1dCBpdCBkb2Vzbid0IG5vdwo+IGZvciBtZS4gSSBpbnN0YWxsZWQgRmVk
b3JhLCB0d2ljZSwgd2l0aCB0aGUgc2FtZSByZXN1bHRzLiBBbHNvIFdpbmRvd3MganVzdAo+IHdv
cmtzLiBOb3RoaW5nIGp1c3QgY3Jhc2hlcyBvdXQgb2Ygbm93aGVyZSwgYWxsIHRoYXQuIFBsdXMg
aXQgaGFzIGEKPiBzdWJzeXN0ZW0gZm9yIEFuZHJvaWQgbm93IHNvIEkgY2FuIHJ1biBBbmRyb2lk
IGFwcHMgbGlrZSBQb2NrZXRjYXN0LiBPZgo+IGNvdXJzZSwgaWYgTGludXggd29ya2VkIGZvciBt
ZSBJIGNvdWxkIGp1c3QgdXNlIEdQb2RkZXIuIEFoIHdlbGwuCj4gRGV2aW4gUHJhdGVyCj4gci5k
LnQucHJhdGVyQGdtYWlsLmNvbQo+IAo+IAo+IAo+IAo+IE9uIFRodSwgQXByIDE0LCAyMDIyIGF0
IDEyOjA1IFBNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+PiBLeWxlIGFuZCBJIGdldCBnb29kLCBzdGFibGUg
TGludXggc3lzdGVtcyBob3dldmVyIHRob3VnaCBEZXZpbi4gV2hhdAo+PiBoYXBwZW5lZCB0byB5
b3UgYmVpbmcgdGhlIHZvaWNlIGZvciBvaCBqdXN0IGluc3RhbGwgRmVkb3JhLCBhbmQgdXNlIGVt
YWNzLgo+PiBXaHkgdGhlIHN1ZGRlbiBzaGlmdCB0byBNUydzIHNpZGUgb2YgdGhpbmdzIHRoZW4/
Cj4+Cj4+IE9uIFRodSwgQXByIDE0LCAyMDIyIGF0IDExOjE0OjI5QU0gLTA1MDAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsCj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBTaXIsIHlvdSBzaG91bGQg
Y2xlYXIgdGhlIHJlZCBmcm9tIHlvdXIgdmlzaW9uLiBTdWNoIHJoZXRvcmljIGlzCj4+IGltcHJv
cGVyLgo+Pj4gTG9sIGFuZCB5b3UgdGhvdWdodCB0aGUgc3R1ZmYgY29taW5nIGZyb20gdGhlIFln
Z2RyYXNpbCBzY3JlZW4gcmVhZGVyCj4+IHBhZ2UKPj4+IHdhcyBjb25mcm9udGF0aW9uYWwuIEFu
eXdheXMsIEkgZG9uJ3QgbmVlZCB0byBjb252ZW5jZSB5b3UuIEkgd2Fzbid0Cj4+IHRyeWluZwo+
Pj4gdG8gY29udmVuY2UgeW91LiBZb3UgYWx3YXlzIHRoaW5rIHBlb3BsZSBhcmUgb3V0IHRvIHRy
eSBhbmQgZ2V0IHlvdSB0bwo+Pj4gY2hhbmdlIGZyb20gd2hhdGV2ZXIgaXQgaXMgeW91J3JlIHVz
aW5nLiBMaWtlIHdoZW4gSSB0YWxrZWQgYWJvdXQgR2VtaW5pCj4+PiBhbmQgc3VjaC4gQWxzbyBJ
IGRvbid0ICpsb3ZlKiBNaWNyb3NvZnQuIEkgZ2V0IGZyb20gdGhlbSBhIGdvb2QsIHN0YWJsZQo+
Pj4gc3lzdGVtIHdpdGggY29tbXVuaXR5IHN1cHBvcnQgYnkgYmxpbmQgdXNlcnMgYW5kIGRldmVs
b3BlcnMuIEFuZCBpbgo+PiByZXR1cm4sCj4+PiB0aGV5IGdldCB3aGF0ZXZlciBkYXRhIHRoZXkg
Y2FuIG91dCBvZiBteSBjb21wdXRlciB1c2UuIFBlcnNvbmFsbHksIGlmCj4+IHRoZXkKPj4+IHRo
aW5rIEknbSAqdGhhdCogaW50ZXJlc3RpbmcsIEkgd2VsY29tZSB0aGUgYXR0ZW50aW9uLgo+Pj4g
RGV2aW4gUHJhdGVyCj4+PiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4+Pgo+Pj4KPj4+Cj4+Pgo+
Pj4gT24gVGh1LCBBcHIgMTQsIDIwMjIgYXQgOTo1NiBBTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDwKPj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4KPj4+
PiBPSyBlbm91Z2ggd2l0aCB0aGUgTWljcm9zb2Z0IGNvbW1lcmNpYWxzLiBXZSBhcmUgcGFzdCB0
aXJlZCBvZiB0aGVtIGJ5Cj4+Pj4gbm93LiBXZSBzZWUgbW9yZSB0aGFuIGVub3VnaCBvZiB0aGVt
IG9uIFRWLiBXaGF0IGhhcHBlbmVkIHRvIHlvdXIKPj4+PiBiZWxvdmVkIEVNQUNTPyBZb3Ugd2ls
bCBub3QgY29udmluY2UgYW55b25lIGhlcmUgdGhhdCB5b3VyIG5ldy1mb3VuZAo+Pj4+IGxvdmUg
b2YgTWljcm9zb2Z0IGlzIGFueSBnb29kIGZvciBhbnlvbmUuIEdvIGNyYXdsIGJhY2sgaW50byB5
b3VyCj4+Pj4gbWljcm9zb2Z0IGhvbGUgYW5kIGxlYXZlIHRoZSBMaW51eCBsaXN0IGFsb25lLiBU
aGlzIGlzIG5vdCB0aGUgcGxhY2UKPj4gZm9yCj4+Pj4gTWljcm9zb2Z0IHNwYW0uCj4+Pj4KPj4+
PiB+S3lsZQo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IC0tCj4+IEphY2UncyB3b3JkcyBhcmUgdXAg
dGhlcmUuIFF1b3RlZCBhbmQgb2xkIG1lc3NhZ2VzIGJlbG93IHRoaXMgcG9pbnQKPj4KPj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

