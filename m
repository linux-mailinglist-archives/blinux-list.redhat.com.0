Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 780D540110E
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 19:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630863842;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yxwgaC0wjmCAwJWnTK4u5DL+sFjcs9RiT+E6TmRQJEE=;
	b=L8LKAbRwrloxmXq1cDTLT47AOdd++/Pv3dQZMBFrfNPhebb4fcISQRZqBZvvhVenX3c7lS
	zFITrrCa0rEpCZWAOIr/LpvY4QHD5ZBgCEX+tffBM3PoE4EyJCCxQdkCKiPNj7tRpCmXZk
	Jx5G4Viel+N6fSh8J5PaElHh1vX5dKA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-QIKjjKn8OlK2TR2uk-Us2Q-1; Sun, 05 Sep 2021 13:44:00 -0400
X-MC-Unique: QIKjjKn8OlK2TR2uk-Us2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5691E107ACCA;
	Sun,  5 Sep 2021 17:43:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D99DD66FFF;
	Sun,  5 Sep 2021 17:43:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E316E1809C98;
	Sun,  5 Sep 2021 17:43:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185HhgfE004656 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 13:43:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2839A50177; Sun,  5 Sep 2021 17:43:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22ED6440FB
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:43:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4276D811E78
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:43:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-nVF8yxDtONShL9tm26Rp9Q-1; Sun, 05 Sep 2021 13:43:37 -0400
X-MC-Unique: nVF8yxDtONShL9tm26Rp9Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H2f5h5hgxz45Ky
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 13:43:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H2f5h4ptczcbc; Sun,  5 Sep 2021 13:43:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H2f5h4QbKzcbP
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 13:43:36 -0400 (EDT)
Date: Sun, 5 Sep 2021 13:43:36 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No GNOME Terminal on Jenux?
In-Reply-To: <83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
	<83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 185HhgfE004656
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGF2ZSB5b3UgdHJpZWQgZmVucmlyIC1lIHlldD8KCgpPbiBTdW4sIDUgU2VwIDIwMjEsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IFRoYW5rIHlvdSHCoCBNdXN0
IGJlIHNvbWV0aGluZyBpbiB0aGUgd2F5IEFyY2ggYnVpbHQgR05PTUUuwqAgSXQncyBwcmV0dHkg
aGFyZAo+IHRvIG1haW50YWluIGEgc3lzdGVtIHdpdGhvdXQgYSB3b3JraW5nIHRlcm1pbmFsLgo+
Cj4KPgo+IENoZWVycywKPgo+Cj4KPiBEYXZlCj4KPgo+Cj4KPiBTZW50IGZyb20gU2xpbnQgR05V
L0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCBmb3IgaW5mbwo+Cj4g
T24gOS81LzIxIDE6MjcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gPiBJIHRoaW5rIHRoaXMgaXMgYSBnZW5lcmFsIHByb2I7ZW0gaW4gYXJjaCBhcyBJIGhh
dmUgcnVuIGludG8gdGhlIHNhbWUKPiA+IHByb2JsZW0gYW5kIGhhdmUgbm90IGZvdW5kIGEgd29y
ayBhcm91bmQgZm9yIHRoaXMuICBUaGFua3MuCj4gPgo+ID4gTWF0dGhldwo+ID4KPiA+Cj4gPgo+
ID4+IE9uIFNlcCA1LCAyMDIxLCBhdCAxMjozMyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbgo+ID4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pgo+ID4+
IEdyZWV0aW5ncyEKPiA+Pgo+ID4+Cj4gPj4gSSBpbnN0YWxsZWQgSmVudXggd2l0aCBHTk9NRSwg
YW5kIGZpbmQgdGhhdCB0aGUgcmVzdWx0aW5nIHN5c3RlbSBoYXMgbm8KPiA+PiB1c2FibGUgR25P
TUUgdGVybWluYWwuICBXaGV0aGVyIEkgdHJ5IHN0YXJ0aW5nIGl0IHdpdGgsICJnbm9tZS10ZXJt
aW5hbCIsCj4gPj4gaW4gdGhlICdydW4nIGRpYWxvZ3VlLCBvciBzZWxlY3QgaXQgZnJvbSB0aGUg
b3ZlcnZpZXcsIG5vdGhpbmcgaGFwcGVucy4gIEkKPiA+PiBhbHNvIHRyaWVkIGdldHRpbmcgYSB0
YWxraW5nIGNvbnNvbGUgb24gdHR5MiwgYW5kIGZpbmQgdGhhdCBzdWNoIGNvbnNvbGVzCj4gPj4g
ZG9uJ3Qgc3BlYWsuICBIb3cgY2FuIEkgZ2V0IGEgdGFsa2luZyB0ZXJtaW5hbCBvciBjb25zb2xl
IG9uIHRoaXMgc3lzdGVtLAo+ID4+IGJlc2lkZXMgcmVpbnN0YWxsaW5nIGFuZCBjaG9vc2luZyBN
YXRlPwo+ID4+Cj4gPj4KPiA+Pgo+ID4+IFRoYW5rcywKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBEYXZl
Cj4gPj4KPiA+Pgo+ID4+Cj4gPj4KPiA+PiAtLQo+ID4+IFNlbnQgZnJvbSBTbGludCBHTlUvTGlu
dXguICBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sIGZvciBpbmZvCj4gPj4KPiA+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4g
Pgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
ID4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

