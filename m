Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C8A6D9940
	for <lists+blinux-list@lfdr.de>; Thu,  6 Apr 2023 16:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680790344;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EOLFiPuAY65iCzI2/DcjWs95j5918w+Sb7SFxISY70g=;
	b=Qpe1pEtw1/Tvz0wwrzEd3jaBKRYDFAF0P9akdi8DpxlaM8XjGbPxlj0AJaEPEiHaazlrmI
	CFms9rDPTGv/nIxu7Ae2mrzaGG/RMewDs5gQbhPbJk+odrRk+PglswgKFfgyyqBMonBS49
	eq62cQbGrPf6uJVoEo5WxtvBftcPedE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-sllfmwhxOEa76Humws7xHQ-1; Thu, 06 Apr 2023 10:12:22 -0400
X-MC-Unique: sllfmwhxOEa76Humws7xHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C18887B2BD;
	Thu,  6 Apr 2023 14:12:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3EA5440C20FA;
	Thu,  6 Apr 2023 14:12:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A1A8219465A2;
	Thu,  6 Apr 2023 14:12:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Debian beginner questions/looking for a good rolling distro
Date: Thu, 6 Apr 2023 10:12:03 -0400
References: <mailman.2208.1680787612.558769.blinux-list@redhat.com>
In-Reply-To: <mailman.2208.1680787612.558769.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2312.1680790338.558767.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBtYXkgbm90IHJlbWVtYmVyIHRoZSBleGFjdCBzdGVwcywgYnV0IEkgZG8gcmVtZW1iZXIgSSBk
aWQgdGhlIGZvbGxvd2luZzoKSSBpbnN0YWxsZWQgV1NMIGZyb20gdGhlIG1pY3Jvc29mdCBhcHAg
c3RvcmUuCkkgcmFuIGEgY29tbWFuZCBwcm9tcHQgYXMgYW4gYWRtaW5pc3RyYXRvci4KSSBpbnN0
YWxsZWQgVWJ1bnR1IHdpdGggYSBjb21tYW5kIGxpa2Ugd3NsIGluc3RhbGwgdWJ1bnR1LgpBZnRl
ciBVYnVudHUgd2FzIGluc3RhbGxlZCwgSSB3ZW50IGludG8gdGhlIFVidW50dSB2aXJ0dWFsIG1h
Y2hpbmUgYW5kIHJhbiB0aGUgZm9sbG93aW5nIGNvbW1hbmRzOgpzdWRvIGFwdCB1cGRhdGUKc3Vk
byBhcHQgaW5zdGFsbCBtYXRlLgpzdWRvIGFwdCBpbnN0YWxsIG9yY2EuCgpBZnRlciB0aG9zZSB3
ZXJlIGluc3RhbGxlZCwgSSB3YXMgYWJsZSB0byB0eXBlIG9yY2EgYW5kIHByZXNzIEVudGVyIHRv
LiBydW4gaXQuCgpSeWFuIE1hbm4KQ2VydGlmaWVkIEFzc2lzdGl2ZSBUZWNobm9sb2d5IEluc3Ry
dWN0aW9uYWwgU3BlY2lhbGlzdApybWFubjA1ODFAZ21haWwuY29tCjM4Ni0zODMtNTE3NQoKCj4g
T24gQXByIDYsIDIwMjMsIGF0IDk6MjYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0hlbGxvCj4gCj4g
Y2FuIHlvdSBnaXZlIGluc3RydWN0aW9ucyBvbiBob3cgdG8gZ2V0IGl0IHdvcmtpbmc/Cj4gCj4g
SSBjb3VsZCBuZXZlciBnZXQgaXQgdG8gd29yawo+IAo+IEkgYW0gcnVubmluZyB3aW5kb3dzMTEK
PiAKPiB0aGFua3MKPiAKPiBIYW5rCj4gCj4gCj4+IE9uIDQvNi8yMDIzIDM6MTYgQU0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEkga25vdyB5b3UgY2FuIGlm
IHlvdSBhcmUgcnVubmluZyBXaW5kb3dzIDExIHNpbmNlIEkgZGlkIGl0LiAgSeKAmW0gbm90IHN1
cmUgYWJvdXQgV2luZG93cyAxMC4KPj4gCj4+IFJ5YW4gTWFubgo+PiBDZXJ0aWZpZWQgQXNzaXN0
aXZlIFRlY2hub2xvZ3kgSW5zdHJ1Y3Rpb25hbCBTcGVjaWFsaXN0Cj4+IHJtYW5uMDU4MUBnbWFp
bC5jb20KPj4gMzg2LTM4My01MTc1Cj4+IAo+PiAKPj4+PiBPbiBBcHIgNiwgMjAyMywgYXQgMjo1
MyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+IO+7v0hlbGxvIG5vdCBzdXJlIGlmIHlvdSBjYW4gdXNl
IG9yY2Egb24gd3NsMgo+Pj4gCj4+PiBIYW5rCj4+PiAKPj4+IAo+Pj4+IE9uIDQvNS8yMDIzIDEy
OjUyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhp
LAo+Pj4+IAo+Pj4+IGFuc3dlciBpbiBsaW5lLgo+Pj4+IAo+Pj4+IExlIDA1LzA0LzIwMjMgw6Ag
MjA6NTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+
IFRoZSBvdGhlciBpc3N1ZSB3aXRoIGFyY2ggaXMgdGhhdCBpdCBkb2VzIG5vdCBzdXBwb3J0IHNl
Y3VyZSBib290IGFsbCB0aG91Z2h0IHRvCj4+Pj4gYmUgZmFpciwgc2xpbnQgZG9lc27igJl0IGVp
dGhlci4KPj4+PiAKPj4+PiBUaGlzIGlzIGNvcnJlY3QuIEJ1dCBpZiB1c2luZyBXU0wyIGluIFdp
bmRvd3MgeW91IGNhbiBkb3dubG9hZCBhbiAodW5vZmZpY2lhbCkKPj4+PiBBcmNoIFdTTCBmcm9t
IHRoZSBNaWNyb3NvZnQgU3RvcmUuCj4+Pj4gTGlua3M6Cj4+Pj4gaHR0cHM6Ly93d3cubWljcm9z
b2Z0LmNvbS9lbi11cy9zZWFyY2gvc2hvcC9hcHBzP3E9bGludXgKPj4+PiBodHRwczovL2FwcHMu
bWljcm9zb2Z0LmNvbS9zdG9yZS9kZXRhaWwvYXJjaC13c2wvOU1aTk1OS1NNNzNYP2hsPWVuLXVz
JmdsPXVzCj4+Pj4gCj4+Pj4gSSBkaWRuJ3QgdHJ5LCBub3QgaGF2aW5nIGEgV2luZG93cyBpbnN0
YWxsYXRpb24KPj4+PiBBIHdvcmthcm91bmQgaXMgdG8gcnVuIG9uZSBvZiB0aGUgc3lzdGVtIGlu
IGEgdmlydHVhbCBtYWNoaW5lLgo+Pj4+IAo+Pj4+IENoZWVycywKPj4+PiBEaWRpZXIKPj4+PiBk
aWRpZXJhdHNsaW50ZG90ZnIKPj4+PiAKPj4+Pj4gTWF0dGhldwo+Pj4+PiAKPj4+Pj4+IE9uIEFw
ciA1LCAyMDIzLCBhdCAxMjoyNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+PiAKPj4+Pj4+IExlIDA1LzA0
LzIwMjMgw6AgMTc6MjksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNy
aXQgOgo+Pj4+Pj4+IEFzIGZvciB3aGF0IEkgdXNlIG9uIGEgZGFpbHkgYmFzaXM/Cj4+Pj4+Pj4g
aTMgZm9yIGEgd20KPj4+Pj4+PiBGaXJlZm94IGZvciBhIGJyb3dzZXIKPj4+Pj4+PiBQaWRnaW4g
Zm9yIElNL0lSQyBhbmQgc28gb24KPj4+Pj4+PiBUZXh0IGVkaXRvcnMKPj4+Pj4+PiBLb2RpIGZv
ciBhIG1lZGlhIGNlbnRlcgo+Pj4+Pj4+IG1wdiBmb3IgcGxheWluZyB0aGluZ3MgaW4gdGhlIHRl
cm1pbmFsLgo+Pj4+Pj4gRm9yIHlvdXIgaW5mb3JtYXRpb24gYWxsIG9mIHRoZW0gYXJlIGluY2x1
ZGVkIGluIFNsaW50IHdpdGggb25lIGV4Y2VwdGlvbjoga29kaQo+Pj4+Pj4gCj4+Pj4+PiBEaWRp
ZXIKPj4+Pj4+IGRpZGllcmF0c2xpbnQuZnIKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAtLSAKPj4+IFRoaXMgZW1haWwgaGFzIGJl
ZW4gY2hlY2tlZCBmb3IgdmlydXNlcyBieSBBVkcgYW50aXZpcnVzIHNvZnR3YXJlLgo+Pj4gd3d3
LmF2Zy5jb20KPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

