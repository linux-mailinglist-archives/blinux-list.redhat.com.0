Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EBA63D465
	for <lists+blinux-list@lfdr.de>; Wed, 30 Nov 2022 12:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669807494;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z3Mn4XRsmbTMQUFPWBZBc/F8KFpDw68dsQUUe467dcc=;
	b=PB0FrjDW0C3J23FIYxRsE4FLv7ie7hybIZefWB/9Yb9tFjUVI9U759ZY0JP4cWMqixxwVJ
	OmdioDNDxdn8+gtdYyKFQKyTslIRmUtzyD3CKpbi9nTGIosRuDBTIZgTofD2d/cxWs/ncR
	jKhgZuEDAQkqT/G4/NMGHtVvBSSYXIc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-RL9Yn-cxP5yuhatyGzVsNA-1; Wed, 30 Nov 2022 06:24:51 -0500
X-MC-Unique: RL9Yn-cxP5yuhatyGzVsNA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADED63814942;
	Wed, 30 Nov 2022 11:24:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AFE162166B26;
	Wed, 30 Nov 2022 11:24:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1A49319465B2;
	Wed, 30 Nov 2022 11:24:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 30 Nov 2022 11:22:28 +0000
To: blinux-list@redhat.com
Subject: Re: How to connect bluetooth audio speaker and headphone in text mode?
In-Reply-To: <mailman.2736.1669784733.6929.blinux-list@redhat.com>
References: <mailman.2736.1669784733.6929.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2700.1669807477.6931.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgppdCdzIHByZXR0eSBlYXN5LiBJZiB5b3UgaGF2ZSB0aGUgYmx1ZXRvb3RoIG1vZHVsZXMg
b2YgeW91ciBhdWRpbyBzeXN0ZW0KaW5zdGFsbGVkIGFzIHdlbGwgYXMgdGhlIGdlbmVyYWwgYmx1
ZXRvb3RoIHV0aWxpdGllcywgeW91IGNhbiB1c2UKYmx1ZXRvb3RoY3RsLgoKClJ1biB0aGUgZm9s
bG93aW5nIHNlcXVlbmNlIG9mIGNvbW1hbmQ6CgoKcG93ZXIgb24gIyB0dXJucyBvbiBibHVldG9v
dGgKCmFnZW50IG9uCgpkZWZhdWx0LWFnZW50CgpzY2FuIG9uCgoKTm93LCBzY2FubmluZyB3aWxs
IHN0YXJ0LCBzaG93aW5nIHlvdSB2YXJpb3VzIGRldmljZXMgYXJvdW5kLiBXYXRjaCBmb3IKdGhl
IG5hbWUgb2YgeW91ciBkZXZpY2UgYW5kIGNvcHkgaXRzIE1BQyBhZGRyZXNzIHdoZW4gaXQgYXBw
ZWFycy4KCgpUaGVuIHJ1bgoKCnBhaXIgPE1BQ19BRERSPgoKY29ubmVjdDxNQUNfQUREUj4KCgpB
dCB0aGlzIHBvaW50LCB5b3UgbWlnaHQgaGVhciB0aGUgc291bmQgc3dpdGNoIHRvIHlvdXIgc3Bl
YWtlci9oZWFkcGhvbmVzLgoKVGhvdWdoLCBpdCBkb2Vzbid0IG5lY2Vzc2FyaWx5IG5lZWRzIHRv
IGJlIGFsd2F5cyB0aGUgY2FzZSwgZGVwZW5kcyBvbgp5b3VyIGNvbmZpZ3VyYXRpb24uCgoKWW91
IG1pZ2h0IG5lZWQgdG8gc2V0IHRoZSBkZWZhdWx0IG91dHB1dCBkZXZpY2UgaW4gUHVsc2VBdWRp
bywgdGhhdCdzIGFuCm9wZXJhdGlvbiBvZiBpdHMgb3duIChJIG5lZWRlZCB0byBkbyB0aGlzIG9u
IG15IFJQSSB0byBnZXQgdGhlCmhlYWRwaG9uZXMgdG8gd29yaykuCgoKVGhlIGxhc3Qgc3RlcCB5
b3UgbmVlZCB0byBkbyBpczoKCgp0cnVzdCA8TUFDX0FERFI+CgoKVGhpcyB3aWxsIGFkZCB0aGUg
ZGV2aWNlIHRvIHRoZSB0cnVzdGVkIGxpc3QsIGNhdXNpbmcgeW91ciBzeXN0ZW0gdG8KY29ubmVj
dCBpdCBhdXRvbWF0aWNhbGx5IHdoZW4gaXQgYXBwZWFycy4KCgpOb3RlIHRoaXMgcGFpcmluZyBt
ZXRob2QgaXMgdW5pdmVyc2FsLCBzbyB5b3UgY291bGQgcGFpciBzYXkgYSBibHVldG9vdGgKa2V5
Ym9hcmQgaW4gdGhlIHNhbWUgd2F5LgoKSXQncyBhd2Vzb21lLCBiZWNhdXNlIGl0IHdvcmtzIG11
Y2ggYmV0dGVyIHRoYW4gdGhlIGdyYXBoaWNhbCBmcm9udGVuZHMKZnJvbSBhY2Nlc3NpYmlsaXR5
IHBvaW50IG9mIHZpZXcsIGFuZCB5b3UgY2FuIGV2ZW4gc3BlY2lmeSB5b3VyIG93bgpwYWlyaW5n
IGNvZGUgZm9yIGtleWJvYXJkcyBvciBhdm9pZCB0aGVtIGFsdG9nZXRoZXIgYXMgZmFyIGFzIEkK
cmVtZW1iZXIsIHdoaWNoIGF0IGxlYXN0IGZvciBtZSB3YXMgYSBjb25zaWRlcmFibGUgY29udmVu
aWVuY2UgYmVuZWZpdCwKcmV3cml0aW5nIHRob3NlIGluIHRpbWUgaGFkIGFsd2F5cyBiZWVuIGRp
ZmZpY3VsdC4KCgpOb3csIG9uZSBwcm9ibGVtIHlvdSBtaWdodCBvciBtaWdodCBub3QgZmFjZSwg
YWdhaW4sIGRlcGVuZGluZyBvbiB5b3VyCmNvbmZpZ3VyYXRpb24sIGlzIGhlYXJpbmcgYSB2ZXJ5
IGxvdy1xdWFsaXR5IHNvdW5kLgoKCklmIHlvdXIgaGVhZHBob25lcyBoYXZlIG1pY3JvcGhvbmUs
IHRoaXMgaXMgbGlrZWx5IGNhdXNlZCBieSB0aGUgdXNhZ2UKb2YgdGhlIG1TQkMgcHJvdG9jb2wu
IEl0J3MgYSBwcm90b2NvbCB0aGF0IGFsbG93cyB0aGUgc2ltdWx0YW5lb3VzIHVzZQpvZiBoZWFk
cGhvbmVzIGFuZCB0aGUgbWljcm9waG9uZSwgYnV0LCBmb3Igbm93LCBvbmx5IGF0IHRoZSBjb3N0
IG9mIHZlcnkKc2lnbmlmaWNhbnQgcXVhbGl0eSBkcm9wLgoKClRoZXJlIGFyZSB2YXJpb3VzIGFw
cHJvYWNoZXMgdG93YXJkcyBpdHMgdXNhZ2UuIEZvciBleGFtcGxlLCBVYnVudHUgTWF0ZQp1c2Vz
IHRoZSBoaWdoLXF1YWxpdHkgTERBQyBwcm90b2NvbCBhbmQgb25seSB3aGVuIHlvdSB1c2UgdGhl
Cm1pY3JvcGhvbmUsIHR1cm5zIHRvIE1TQkMuCgoKT3RoZXIgc3lzdGVtcywgbGlrZSB0aGUgUlBJ
IEkgbWVudGlvbmVkIGJlZm9yZSwganVzdCB1c2UgTVNCQyByaWdodCBhd2F5LgoKCkVpdGhlciB3
YXksIHlvdSBjYW4gYWx3YXlzIGVuZm9yY2UgTERBQyBpZiB5b3UgZG9uJ3QgbWluZCB0aGUKbWlj
cm9waG9uZS4gSXQncyBvbmUgb3IgdGhlIG90aGVyLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xh
dgoKCkTFiGEgMzAuIDExLiAyMDIyIG8gNjowNSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIG5hcMOtc2FsKGEpOgo+IEFzIHRpdGxlLiBUaGFuayB5b3UhCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

