Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEB4516F00
	for <lists+blinux-list@lfdr.de>; Mon,  2 May 2022 13:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651491678;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OhLyq/EExhtmTB6DftfJgZvk0lvDqt+BgBTqYrzPbjw=;
	b=feI0yfQH3L5w9beT2vw18hoA3i+g9T2QbK5d1VURzNr9ahM7vgXp6JLrAAgDILSLAFBCdL
	6lRap30ONFmPViolekoa5Oh7Dr1UoCibq3Xi+BU548HdEP6uBYKQu1A9HTq5p1OQkyxK6K
	lMKd4zRSFzWyZ8tWqf/ecZMyO+BVObI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-DRH2ZWrNO_O6wvYCazjmXA-1; Mon, 02 May 2022 07:41:15 -0400
X-MC-Unique: DRH2ZWrNO_O6wvYCazjmXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2F1C29AB406;
	Mon,  2 May 2022 11:41:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BD24214C3DAC;
	Mon,  2 May 2022 11:41:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E4DA01947063;
	Mon,  2 May 2022 11:41:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 May 2022 06:18:08 -0500
To: blinux-list@redhat.com
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
In-Reply-To: <mailman.12366.1651486538.111210.blinux-list@redhat.com>
References: <mailman.12405.1651438054.111208.blinux-list@redhat.com>
 <mailman.12366.1651486538.111210.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.12669.1651491668.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBZZXAsIG91dHB1dCBkZWZhdWx0cyB0byB0aGUgc2NyZWVuICh3ZWxsLCBzdGFu
ZGFyZC1vdXQpLApidXQgZWFjaCBzaG91bGQgaGF2ZSBvcHRpb25zIGZvciByZWRpcmVjdGluZyBv
dXRwdXQgdG8gYSBmaWxlIGR1cmluZwphbiBpbnRlcmFjdGl2ZSBzZXNzaW9uLCBhbmQgeW91IGNh
biB0aGVuIG9wZW4gdGhhdCByZXN1bHRpbmcgZmlsZSBpbgp5b3VyIGZhdm9yaXRlIGJyb3dzZXIg
dG8gbmF2aWdhdGUgdGhlIHRhYmxlcyBpbiB5b3VyIHByZWZlcnJlZCB3YXkuCgotVGltCgpPbiBN
YXkgIDIsIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
Rm9yIHRoZSBIVE1MIG91dHB1dCwgYW0gSSBjb3JyZWN0IHRoYXQgc2hlIGNvdWxkIGhhdmUgdGhh
dCBIVE1MCj4gb3V0cHV0IHRvIGEgZmlsZT8gIFRoYXQgd2F5LCBzaGUgY291bGQgb3BlbiB0aGUg
ZmlsZSBpbiBhIGJyb3dzZXIKPiBsaWtlIEZpcmVmb3g/ICBUaGF0IHdheSwgSSB3b3VsZCB0aGlu
ayBzaGUgd291bGQgYmUgYWJsZSB0byByZWFkCj4gdGhlIEhUTUwgdGFibGVzIHdpdGggT3JjYS4g
Unlhbgo+IAo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPiA+IE9uIE1heSAxLCAyMDIyLCBh
dCA0OjQ3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gPiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiAKPiA+IO+7v1RpbSBoZXJlLiAgSSBrbm93IHRo
YXQgYXQgbGVhc3Qgc3FsaXRlJ3MgQ0xJIGludGVyZmFjZSBsZXRzIHlvdQo+ID4gdXNlCj4gPiAK
PiA+ICAubW9kZSBsaW5lCj4gPiAKPiA+IHdoaWNoIHR1cm5zIGRhdGEgaW50byBhIGxpbmVhciBm
b3JtYXQgdGhhdCdzIG11Y2ggbW9yZQo+ID4gdW5kZXJzdGFuZGFibGUgd2hlbiByZWFkIGFsb3Vk
LCBkYXRhIGxpa2UKPiA+ICAgCj4gPiAgc3FsaXRlPiAubW9kZSBsaW5lCj4gPiAgc3FsaXRlPiBz
ZWxlY3QgaWQsIG5hbWUgZnJvbSB1c2VyczsgIAo+ID4gCj4gPiAgSWQgPSAxCj4gPiAgTmFtZSA9
IFRpbQo+ID4gCj4gPiAgSWQgPSAyCj4gPiAgTmFtZSA9IFJpY2gKPiA+IAo+ID4gIElkID0gMwo+
ID4gIE5hbWUgPSBFbGxlbgo+ID4gCj4gPiBQb3N0Z3JlU1FMIGhhcyBhIHNpbWlsYXIgImV4cGFu
ZGVkIiBmb3JtYXQuCj4gPiAKPiA+IEkgZmluZCBpdCBwYXJ0aWN1bGFybHkgdXNlZnVsIHdoZW4g
dGhlcmUgYXJlIGxvdHMgb2YgY29sdW1ucyBhbmQKPiA+IHRoaW5ncyBzdGFydCB3cmFwcGluZyB3
ZWlyZGx5LCBtYWtpbmcgaXQgaGFyZCB0byB0cmFjZSB3aGljaAo+ID4gY29sdW1uIGlzIHdoaWNo
Lgo+ID4gCj4gPiBJZiB5b3UgcmVhbGx5ICpkbyogd2FudCBIVE1MIG91dHB1dCwgdGhlIHNxbGl0
ZSAiLm1vZGUiIGNvbW1hbmQKPiA+IGRvZXMgYWxzbyBvZmZlciBIVE1MIG91dHB1dCBhcyBhbiBv
cHRpb246Cj4gPiAgIAo+ID4gIHNxbGl0ZT4gLm1vZGUgaHRtbCAgCj4gPiAKPiA+IHdoaWNoIHlv
dSBjYW4gdGhlbiBwaXBlIHRvIHlvdXIgZmF2b3JpdGUgSFRNTCB2aWV3ZXIuICBTaW1pbGFybHks
Cj4gPiBQb3N0Z3JlU1FMJ3MgInBzcWwiIGNsaWVudCBoYXMgYW4gSFRNTCBvdXRwdXQgbW9kZSB3
aGljaCB5b3UgY2FuCj4gPiBpbnZva2UgZWl0aGVyIGFzIGEgQ0xJIG9wdGlvbgo+ID4gCj4gPiAg
JCBwc3FsIC0taHRtbAo+ID4gCj4gPiBvciBieSBlbmFibGluZyB0aGUgb3B0aW9uIGludGVyYWN0
aXZlbHkKPiA+IAo+ID4gIChwc3FsKSBccHNldCBmb3JtYXQgaHRtbAo+ID4gCj4gPiBIb3BlZnVs
bHkgdGhpcyBnaXZlcyB5b3Ugc29tZSBvcHRpb25zIGZvciBnZXR0aW5nIG1vcmUgdXNlZnVsCj4g
PiBvdXRwdXQgZnJvbSBzcWxpdGUgb3IgcG9zdGdyZXNxbC4gIEkgZG9uJ3QgdXNlIG15c3FsL21h
cmlhZGIKPiA+IG11Y2gsIHNvIEkgY2FuJ3Qgc3BlYWsgYXMgdG8gd2hldGhlciBpdCBvZmZlcnMg
c2ltaWxhciBmZWF0dXJlcy4KPiA+IAo+ID4gLVRpbQo+ID4gCj4gPiAgIAo+ID4+IE9uZSB0aG91
Z2h0IEkgaGF2ZSBoYWQsIGZyb20gdGltZSB0byB0aW1lLCBpcyB0aGF0IGl0IHdvdWxkIGJlCj4g
Pj4gbmljZSB0byBoYXZlIHRvb2xpbmcgdGhhdCB0cmFuc2Zvcm1zIHZhcmlvdXMgdGFidWxhciBv
dXRwdXQKPiA+PiBmb3JtYXRzIGludG8gSFRNTCB0YWJsZXMuICBUaGlzIGNvdWxkIGxldCB0aGUg
dXNlciBlbXBsb3kgc2NyZWVuCj4gPj4gcmVhZGVyIG5hdmlnYXRpb24gdG8gY3Jhd2wgYXJvdW5k
IHRoZSB0YWJsZS4gIEhvd2V2ZXIsIEkgaGF2ZSBubwo+ID4+IGlkZWEgaWYgYW55dGhpbmcgb2Yg
dGhpcyBzb3J0IGV4aXN0cy4gIAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPiAgIAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

