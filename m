Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B9789463
	for <lists+blinux-list@lfdr.de>; Sat, 26 Aug 2023 09:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693035679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9TFOIJIaOIr12QMz2/DQUtm7qN7oYf1rOWF4AhK99V0=;
	b=YqsV1FxNrjf4rk8I6qSNPaeHfK6190YvVuHA3YoDxw9pv3eKG9BVxDxYFHri57/GdMaLQ9
	C2RXS6AGrr8S6aw5yFh74EEAVaAbYvqRMPWJvWC10Cm/jFPrtRNaT3a7RRmzqC8KYtfX3L
	XFy0Aw1Va8AazOBbT8iTQ5XM6QPmEJE=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-647-hbJPRfcGNLyMDpYefaWZ3w-1; Sat, 26 Aug 2023 03:41:16 -0400
X-MC-Unique: hbJPRfcGNLyMDpYefaWZ3w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADBD91C07559;
	Sat, 26 Aug 2023 07:41:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0DF851121319;
	Sat, 26 Aug 2023 07:41:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8332C19465B8;
	Sat, 26 Aug 2023 07:41:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Aug 2023 03:41:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.1702.1692956975.18731.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.17.1693035673.1829984.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8sIEkgZ290IGVycm9yIDQwNCB3aGVuIHRyeWluZyB0byBnZXQgdGhhdCB0b3JyZW50LgoKCi0t
IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0
byBiZSB1c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQg
YW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0Cm9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KCk9u
IEZyaSwgMjUgQXVnIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cgo+IFRoZSB0b3JyZW50IGZpbGUgZm9yIG1pY3Jva25vcHBpeCBFbmdsaXNoIGlzbyBkb3du
bG9hZCBpcyBoZXJlOgo+IGh0dHA6Ly90b3JyZW50LnVuaXgtYWcudW5pLWtsLmRlL3RvcnJlbnRz
L0tOT1BQSVhfVjkuMURWRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQKPgo+IEhUSAo+IGd1ZW50ZXIK
Pgo+IEFtIDI1LjA4LjIzIHVtIDExOjI4IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbjoKPiA+IEhleSBKdWRlLAo+ID4gdGhlcmUgaXMgYW0gRW5nbGlzaCB2ZXJzaW9u
IG9mIHRoZSBzaXRlOgo+ID4gaHR0cDovL3d3dy5rbm9wcGVyLm5ldC9rbm9wcGl4L2tub3BwaXg2
MC1lbi5odG1sCj4gPgo+ID4gSFRILAo+ID4gZ3VlbnRlcgo+ID4KPiA+IEFtIDI1LjA4LjIzIHVt
IDEwOjU3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+PiBI
YXMgYW55b25lIGdvdCBhIGRvd25sb2FkIHRoYXQgY2FuIGRvd25sb2FkIHRoZSBsYXRlc3QgZW5n
bGlzaCB2ZXJzaW9uIG9mCj4gPj4gbWljcm9rbm9wcGl4P8KgIEV2ZXJ5b25lIG9mIHRoZSBtaXJy
b3JzIG9ubHkgaGFzIGdlcm1hbiB0ZXh0IG9uIGl0IGFuZCBJCj4gPj4gZGlkbid0IHN0dWR5IHRo
YXQgbGFuZ3VhZ2UgZW5vdWdoIHRvIHVuZGVyc3RhbmQgdGhlIHdlYnNpdGUncyBjb250ZW50Lgo+
ID4+IEknbSBoYXZpbmcgYmV0dGVyIGx1Y2sgZG93bmxvYWRpbmcgdGhyb3VnaCBiaXR0b3JyZW50
IHRoZXNlIGRheXMgdGhhbiB3aXRoCj4gPj4gb3RoZXIgZG93bmxvYWRlcnMgZ2l2ZW4gdGhlIGxv
dyBncmFkZSBvZiB2ZXJpem9uIGZpb3MgY29ubmVjdGl2aXR5Lgo+ID4+IHdnZXQgZm9yIGluc3Rh
bmNlIGlzIGRvd25sb2FkaW5nIGlzbydzIHRoYXQgZmFpbCBzaGEyNTZzdW0gLWMgdGVzdHMgb25j
ZQo+ID4+IGRvd25sb2FkZWQgYW5kIGl0IGRvZXMgdGhhdCBwZXJzaXN0ZW50bHkuCj4KPiAtLQo+
IC4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

