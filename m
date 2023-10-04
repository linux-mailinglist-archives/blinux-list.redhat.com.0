Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B63217B81AF
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 16:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696428278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EOpRXyn9kOmVEqECMWs/tTL/jBjhQni3O1jJSN5P1Y0=;
	b=d3LFQSYTRJMmX7z+inPtnutYtd8ivkMm5Ly4SDqW04UkRBtPVVc1hxBshQ/Rqik0EJ9Wog
	GgWv4YgthYm6fiZuMS56mWxSsy3Za4oT38SwQmmADO3bZJ1+MToCrR+Q6joDl2/Iz15B8J
	00+K9gGQhpf9EGDw7FvbJlOp7vj+5Rs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-424-2ADy87DpOomOMosQaOLkMA-1; Wed, 04 Oct 2023 10:04:30 -0400
X-MC-Unique: 2ADy87DpOomOMosQaOLkMA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBEC91029F79;
	Wed,  4 Oct 2023 14:04:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F14C44A9B0A;
	Wed,  4 Oct 2023 14:04:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7716419465A8;
	Wed,  4 Oct 2023 14:04:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 4 Oct 2023 10:03:51 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Intro.
In-Reply-To: <mailman.1164.1696425743.2981445.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.1164.1696425743.2981445.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1362.1696428253.2981447.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

eW91IG1heSB3YW50IHRvIGNoZWNrIG91dCBmZWRvcmEncyBmb3NoIHNwaW4uClNpbmNlIFJhc3Bi
ZXJyeSBwaSBydW5zIG9uIGFybSB0aGUgc3Rvcm11eCBsaXN0CnN0b3JtdXgrc3Vic2NyaWJlQGdy
b3Vwcy5pbyBtYXkgYmUgaGVscGZ1bC4KCgotLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3Qg
Y29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9mIGxpYmVy
dHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdApvcmRl
ci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCgpPbiBXZWQsIDQgT2N0IDIwMjMsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEdvb2QgbW9ybmluZyBldmVyeW9uZS4g
SSBhbSBub3QgbmV3IHRvIExlbm5veC4gQnV0IEkgaGF2ZSBhIG5ldyBhcm0gYmFzZWQgY29tcHV0
ZXIuIEkgYW0gdHJ5aW5nIHRvIGRlY2lkZSBiZXR3ZWVuIHR3byBkaXN0cmlidXRpb25zLiBXaGlj
aCBpcyBnb2luZyB0byBiZSBlYXNpZXIgdG8gaW5zdGFsbCBvcmNhIG9uPyBUd28gYXJjaCA2NCBt
ZWFuaW5nIHRoZSBhcmNoIGFyY2hpdGVjdHVyZSBvciA2NCBiaXQgYXJtIHByb2Nlc3Nvci4gT3Ig
ZmVkb3JhLCBiZWNhdXNlIEkgcmVtZW1iZXIgdXNpbmcgZmVkb3JhIG1hbnkgeWVhcnMgYWdvIGJl
Y2F1c2Ugb2YgdGhlIGFzc2lzdGFuY2Ugb2YgYSBsYXRlIGZyaWVuZC4gSnVzdCBmb3IgdGhlIHJl
Y29yZC4gSSBhbSB1c2luZyBwYXJhbGxlbHMgb24gYW4gYXJtIGJhc2VkIE0yIE1hYy4KPgo+IEZy
b20gdGhlc2UgdHdvIHF1ZXN0aW9ucywgSSBhbSBuZWVkaW5nIHRvIGNoYW5nZSB0aGUgZW1haWwg
Ym94IG9yIGVtYWlsIHRoYXQgSSBnZXQgZnJvbSB0aGlzIGxpc3QgIGlzIHRoZXJlIGFuIGVhc3kg
d2F5IHRvIGRvIHRoYXQuIEkgdGhhbmsgeW91IGluIGFkdmFuY2UgZm9yIGFueSByZXNwb25zZSB0
byB0aGlzIGVtYWlsLgo+Cj4gUGxlYXNlIGJlIGF3YXJlIHRoYXQgSSBhbSBkaWN0YXRpbmcgdGhp
cyB0byBteSBwaG9uZS4gVG8gdGhlIGFjdHVhbCBlbWFpbCBhZGRyZXNzIHRvIHJlYWNoIG1lIGhh
cyBjaGFuZ2VkLiBJIGFtIGp1c3Qgbm90IGdvdHRlbiBhcm91bmQgdG8gY2hhbmdpbmcgbXkgUGhv
bmUgc2lnbmF0dXJlIGVtYWlsICBGaWxlLiBUaGUgbmV3IGVtYWlsIGFkZHJlc3MgaXMuICBwcmVz
aWRlbnRkZWFmYmxuZmJAbWF1cmljZS1hbWluZXMuY29tLiAgQWxsIG9mIHRoZSByZXN0IG9mIHRo
ZSBjb250YWN0IGluZm9ybWF0aW9uIGlzIHN0aWxsIHRoZSBzYW1lLiBKdXN0IHRoZSBlbWFpbCBh
ZGRyZXNzIGNoYW5nZWQuCj4gU2VudCBmcm9tIG15IGlQaG9uZS4KPiBFbWFpbCwgbW1pbmVzQG1h
dXJpY2VtaW5lcy5vcmcKPiAgIHRleHQgbnVtYmVyIDY2MS04NjgtOTY0Ny4KPiBGYXggbm8gNjYx
LTQ0OS0zNzQ2Lgo+Cj4KPiBQcmVzaWRlbnQsIE5hdGlvbmFsIEZlZGVyYXRpb24gb2YgdGhlIGJs
aW5kIERlYWZibGluZCBkaXZpc2lvbi4gSVAgcmVsYXkgbnVtYmVyIDY2MS0yNDktOTcxNS4KPiBW
aWNlIFByZXNpZGVudCBuYXRpb25hbCBGZWRlcmF0aW9uIG9mIHRoZSBibGluZCBvZiBDYWxpZm9y
bmlhIEJha2Vyc2ZpZWxkIGNoYXB0ZXIuCj4gYW1hdGV1ciByYWRpbywgY2FsbCBzaWduLCBrZDBp
a28uCj4KPiA+IE9uIE9jdCA0LCAyMDIzLCBhdCAxMToxOCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4g77u/
SGkgZ3V5cywgc28gZ2xhZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3RoaW5n
IGFib3V0IExpbnV4IHBsYXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3IgbXlz
ZWxmLiBUaGUgcHJvYmxlbSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2ZXJzaW9uIHRvIHRy
eSBvdXQgZmlyc3QgYW5kIHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdyb3Vw
LiBJIGFtIGEgYmxpbmQgcGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91IGNv
dWxkIHByb3ZpZGUgbWUgd2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9uIG9mIExpbnV4
IHdvdWxkIGJlIGJlc3QgZm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpbmRlZWQsIEJpbGx5
Cj4gPgo+ID4gU2VudCBmcm9tIE1haWwgZm9yIFdpbmRvd3MKPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

