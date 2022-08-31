Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B4B5A7528
	for <lists+blinux-list@lfdr.de>; Wed, 31 Aug 2022 06:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661920218;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Kp/XKnVKME5aFEbfhTDPfovdndhzFCmlydGGhQfxaXw=;
	b=CcFqO/hv5NdLqulwDIa1fD8oCTB71xy7H0jhThBcoMfjilSkUD++SjtjUuXKd5f7mHr35F
	0P5w7sroY3J/B1giWyhEP+Dy5AI/1AmLGnzO2YWsGphgtAKTwq6xx2CScTzfaWwX+VldF7
	O9RFSQHxKw1IwPJoXYmiOAMPDeM8LQc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-206-N5U7C07aN5O3500O_I5zpw-1; Wed, 31 Aug 2022 00:30:14 -0400
X-MC-Unique: N5U7C07aN5O3500O_I5zpw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2A7C811E90;
	Wed, 31 Aug 2022 04:30:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6B534011A58;
	Wed, 31 Aug 2022 04:30:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF0CB1946A4B;
	Wed, 31 Aug 2022 04:30:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
References: <58F588DF-F64C-482C-A02D-E5F1EF0C664C.ref@yahoo.com>
 <mailman.2381.1661038130.10504.blinux-list@redhat.com>
 <mailman.2444.1661106709.10501.blinux-list@redhat.com>
 <mailman.2468.1661107699.10507.blinux-list@redhat.com>
In-Reply-To: <mailman.2468.1661107699.10507.blinux-list@redhat.com>
Subject: I have a question, and request?
Date: Tue, 30 Aug 2022 19:46:49 -0700
MIME-Version: 1.0
Thread-Index: Adi849dP+BgPPruHQTSuYoRn/rv43g==
Message-ID: <mailman.4908.1661920206.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rmlyc3QgdGhlIHF1ZXN0aW9uLCBJIGFtIGluc3RhbGxpbmcgRmVkb3JhIHdvcmtzdGF0aW9uIDM2
IGludG8gYSB2aXJ0dWFsIG1hY2hpbmUgb24gbXkgTWFjQm9vayBQcm8gMjAyMC4gSXQgYXBwZWFy
cyB0aGF0IEkgaGF2ZSBkb3dubG9hZGVkIGEgbGl2ZSBpbWFnZS4gU28gdGhlIGxpdmUgaW1hZ2Ug
Ym9vdGVkIHVwLCBhbmQgZGlkIGl0J3MgdGhpbmcuIEEgZmFtaWx5IG1lbWJlciB3aG8gZGlkIHRo
ZSByZWFkaW5nIHNhaWQgdGhhdCB0aGVyZSB3YXMgYSBxdWVzdGlvbiBpbnN0YWxsIHRvIHRoZSBo
YXJkIGRyaXZlLCBvciBJIHRoaW5rIGp1c3QKYXMgYSBsaXZlIHZlcnNpb24uIFNvIGZhciB0aGUg
bWFjaGluZSBoYXMgYmVlbiBpbnN0YWxsaW5nIGZvciB0aGUgYmV0dGVyIHBhcnQgb2YgYW4gaG91
ciBhbmQgMS8yIG9yIHNvLiBJcyB0aGlzIG5vcm1hbD8gU2hvdWxkIEkgbm93IHNodXQgZG93biB0
aGlzICJsaWdodCBkaXN0cmlidXRpb24gYW5kIHJlYm9vdCB0aGUgdmlydHVhbCBtYWNoaW5lIGFu
ZCB0cnkgYW5kIGxvZ2luPyBBbnkgc3VnZ2VzdGlvbnMgd291bGQgYmUgaGVscGZ1bC4KCkhlcmUn
cyBteSByZXF1ZXN0IGlmIHNvbWVvbmUgb24gdGhlIGxpc3Qga25vd3MgaG93IHRvIGRvIHRoaXMu
IEkgYW0gaW4gdGhlIHByb2Nlc3Mgb2YgY2hhbmdpbmcgZW1haWwgYWRkcmVzc2VzIGZvciB0aGlz
IGxpc3QuIFdoYXQgaXMgdGhlIGVhc2llc3Qgd2F5IHRvIGRvIHRoYXQuIEkgbW9zdGx5IGx1cmss
IHNvIEknbSBub3Qgc3VyZSBpZiBJIGhhdmUgdGhlIHN1YnNjcmlwdGlvbiBhZGRyZXNzLiBIYXZp
bmcgdGhhdCBpbiBtaW5kLCBJIGFtIGdvaW5nIHRvIHB1dCB0aGUgb3RoZXIgYWRkcmVzcyBhdCB0
aGUgYm90dG9tIG9mIHRoaXMgZW1haWwgYW5kIGJsaW5kIGNhcmJvbiBjb3B5IG15c2VsZiBzbyB0
aGF0IGlmIHNvbWVvbmUgaGFzIHN1Z2dlc3Rpb25zIHRoZXkgY2FuIGVtYWlsIG1lIG9mZiBsaXN0
IGF0IHRoZSBuZXcgYWRkcmVzcyBleHBsYWluaW5nIGhvdyB0byBzdWJzY3JpYmUgYXQgdGhlIG90
aGVyIGVtYWlsIGFkZHJlc3MuIE9yIHBlcmhhcHMgdGhlIG1vZGVyYXRvciBtaWdodCBiZSBvZiBz
b21lIGhlbHAuIEJlY2F1c2UgSSBhbSBkaWN0YXRpbmcgdGhpcyB0byBhIFdpbmRvd3MgbWFjaGlu
ZS4gVGhlIHBsYWNlIHdoZXJlIEknbSBnb2luZyB0byBydW4gTGVubml4LCBpcyBvZiBjb3Vyc2Ug
b24gbXkgTWFjIE1hY0Jvb2sgUHJvLgoKTXkgbmV3IGVtYWlsIGFkZHJlc3MsIGlzIG1hdXJpY+KC
rEBtYXVyaWNlLWFtaW5lcy5jb20gdGhpcyBpcyBpcyB5b3UgY2FuIHRlbGwsIG15IGRvbWFpbi4K
CkZpbmFsIHRob3VnaHRzLCBJIGNlcnRhaW5seSBob3BlIHNvbWVvbmUgY2FuIGhlbHAgbWUgc29y
dCB0aGVzZSB0d28gcXVlc3Rpb25zIG91dC4gSSBhbHNvIGhvcGUgdGhhdCB3aGVuIHlvdSBkbyBy
ZXNwb25kIGlmIGl0IGlzIHNvbWV0aGluZyB5b3UgY2FuIGRvIHRvIHBsZWFzZSB3cml0ZSBtZSBh
dCB0aGUgZGlmZmVyZW50IGFkZHJlc3MsIHRoZSBvbmUgdGhhdCBJJ3ZlIHdyaXR0ZW4gYWJvdmUu
IEJlY2F1c2UgdGhhdCdzIHRoZSBhZGRyZXNzIHRoYXQgSSBDaHVjayA5OCUgb2YgdGhlIHRpbWUu
IFBsZWFzZSBiZSBhd2FyZSB0aGF0IEkgYW0gZGljdGF0aW5nIHRoaXMgdG8gdGhlIGNvbXB1dGVy
LCBzbyBoZXJlJ3MgaG9waW5nIHRoYXQgaXQgYWxsIGNvbWVzIG91dCBva2F5PyBXaGF0IGRvZXMg
dGhpcyBtZWFuLCBob3BlZnVsbHkgeW91IGNhbiByZWFkIHRoaXM/CgpTaW5jZXJlbHkgTWF1cmlj
ZSBNaW5lcy4KCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCkZyb206IEJsaW51eC1saXN0IDxi
bGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uClNlbnQ6IFN1bmRheSwgQXVndXN0IDIxLCAyMDIyIDExOjQ4
IEFNClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPgpTdWJqZWN0OiBSZTogUmFzcGJlcnJ5IHBpIDMKCkluIGFkZGl0aW9uIHRvIHdo
YXQgb3RoZXJzIGhhdmUgcG9zdGVkLCB5b3UgbWF5IGFsc28gYmUgaW50ZXJlc3RlZCBpbiBTdG9y
bXV4LCB3aGljaCBpcyBhIHRhbGtpbmcgZGlzdHJpYnV0aW9uIGZvciB0aGUgUmFzcGJlcnJ5IFBp
IDMgYW5kIDQuCgpodHRwczovL3N0b3JtdXgub3JnLwoKSXQncyBiYXNlZCBvbiBBcmNoTGludXhB
Uk0sIHNvIHlvdSB3aWxsIGhhdmUgZnVsbCBhY2Nlc3MgdG8gdGhlIEFyY2ggVXNlciBSZXBvc2l0
b3J5IChBVVIpIGlmIHRoZXJlIGlzIGEgc29mdHdhcmUgYXBwbGljYXRpb24geW91IG5lZWQgdGhh
dCB5b3UgYXJlIG5vdCBhYmxlIHRvIGZpbmQgaW4gdGhlIHN0YW5kYXJkIHJlcG9zaXRvcnkuCgoK
U2luY2UgeW91IHdpbGwgbmVlZCB0aGUgUmFzcGJlcnJ5IFBpIDMsIHlvdSB3aWxsIG5lZWQgdGhl
IGltYWdlIHRoYXQgYm9vdHMgb24gaXQsIGFzIHRoZSBSYXNwYmVycnkgUGkgNCBpbWFnZSBkb2Vz
bid0IGJvb3Qgb24gMywgYW5kIHRoZSAzIGltYWdlIGRvZXNuJ3QgYm9vdCBvbiA0LiBIZXJlJ3Mg
dGhlIGRpcmVjdCBkb3dubG9hZCBsaW5rIGZvciB0aGUgUGkgMyBpbWFnZS4KCmh0dHBzOi8vc3Rv
cm11eC5vcmcvZG93bmxvYWRzL3N0b3JtdXgtcGkzLWFhcmNoNjQtMjAyMi0wNC0yMS5pbWcueHoK
ClRoZSBTdG9ybXV4IGVtYWlsIGxpc3QgaXMgb24gZ3JvdXBzLmlvLCBzbyBqdXN0IHNlbmQgYW4g
ZW1wdHkgZW1haWwgbWVzc2FnZSB0bwoKc3Rvcm11eCtzdWJzY3JpYmVAZ3JvdXBzLmlvCgphbmQg
cmVwbHkgdG8gdGhlIGNvbmZpcm1hdGlvbiBlbWFpbCB0aGF0IHlvdSB3aWxsIHJlY2VpdmUuIFlv
dSBtYXkgYWxzbyBmaW5kCgpodHRwczovL2dyb3Vwcy5pby9oZWxwY2VudGVyL21lbWJlcnNtYW51
YWwvMS9hZGRpdGlvbmFsLWluZm9ybWF0aW9uL3N0YW5kYXJkLWdyb3VwLWVtYWlsLWFkZHJlc3Nl
cwoKc29tZXdoYXQgdXNlZnVsLCBhcyBpdCBnaXZlcyB5b3Ugb3RoZXIgZW1haWwgYWRkcmVzc2Vz
IHlvdSBjYW4gdXNlIGZvciBsaXN0IG1hbmFnZW1lbnQuIEhvcGUgdGhpcyBoZWxwcy4KCn5LeWxl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

