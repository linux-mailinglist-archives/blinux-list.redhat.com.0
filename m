Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69988442A71
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 10:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635845663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KSjd+hQJaZ63N9LguctOHE/U/8V4NRIAh3L3I7MaLds=;
	b=fQlKdon5LxVR2w0nm72D7K0a/ldosZiy6FUPdQIFJ29Fcwjp752go4CsRB3jDSrK3XmKZO
	UiqiZdatOtvm7z7VvwcRqHG/BY6yTvPNbtnouOUxhDDeRJhVry7ERkkZCeDgQ0ClwAh4wT
	fAjsELts2pYV++JgojFYBj+3JBXuB2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-f2MxKYjlM0ynOKdTxLNCbQ-1; Tue, 02 Nov 2021 05:34:19 -0400
X-MC-Unique: f2MxKYjlM0ynOKdTxLNCbQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C07A2879500;
	Tue,  2 Nov 2021 09:34:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C18902271F;
	Tue,  2 Nov 2021 09:34:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C7234EA31;
	Tue,  2 Nov 2021 09:34:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A29UA7X024407 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 05:30:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30EF440D1B9E; Tue,  2 Nov 2021 09:30:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D09140D1B9D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:30:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 538D1857052
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:30:09 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-176-l0S7rlm9PGOTtUGXT_kuzw-1; Tue, 02 Nov 2021 05:30:07 -0400
X-MC-Unique: l0S7rlm9PGOTtUGXT_kuzw-1
Received: from [37.4.229.93] (helo=smtpclient.apple)
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1mhpzT-0006Z3-UX
	for blinux-list@redhat.com; Tue, 02 Nov 2021 10:21:59 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: FYI - The Yggdrasil Screen Reader Project
Date: Tue, 2 Nov 2021 10:22:31 +0100
Message-Id: <A7152642-00C7-4A24-B993-9235211645D9@linux-a11y.org>
References: <20211102083235.nuzcsnnrrr2kxyno@begin>
In-Reply-To: <20211102083235.nuzcsnnrrr2kxyno@begin>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A29UA7X024407
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgp3ZWxsLCBhIHF1aWNrIGxvb2sgaW50byB0aGUgY29kZSBzaG93cyB0aGF0IHRoaXMg
aXMgY3VyZW50bHkgZmFyIGF3YXkgZnJvbSBiZWluZyBhIHNjcmVlbnJlYWRlciBidXQgbW9yZSBh
IHZlcnkgZWFybHkgcHJvdG90eXBpbmcuIExldHMgc2VlIHdoYXQgaGFwcGVucy4KCgoKPiBBbSAw
Mi4xMS4yMDIxIHVtIDA5OjQxIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gCj4g77u/SGVsbG8sCj4gCj4+IEFjY2Vz
c2liaWxpdHkgb24gTGludXggaGFzIGhpc3RvcmljYWxseSBiZWVuIHVuZGVyLWRldmVsb3BlZCwg
dW5kZXItbWFpbnRhaW5lZCwKPiAKPiBBbmQgdGh1cyBsZXQncyBzcGxpdCB0aGUgZWZmb3J0IGlu
c3RlYWQgb2Ygam9pbmluZz8gRXcuCj4gCj4+IE1lbWJlcnMgb2YgdGhlIFJ1c3QgY29tbXVuaXR5
IGFyZSByZWltcGxlbWVudGluZyBhIG51bWJlciBvZiBDLWJhc2VkIHByb2dyYW1zLCBtYWtpbmcg
dGhlIGFyZ3VtZW50IHRoYXQgdGhleSBjYW4gaW1wcm92ZSBvbiB0aGUgY3VycmVudCBzdGF0ZSBv
ZiB0aGUgYXJ0Lgo+IAo+IFRoYXQgaXMgcmlnaHQgZm9yIHZhcmlvdXMgQy1iYXNlZCBwcm9ncmFt
cyB0aGF0IGFyZSBhIHBhaW4gdG8gbWFpbnRhaW4KPiBiZWNhdXNlIG9mIEMuIE9yY2EgaXMgbm90
IGEgcGFpbiB0byBtYWludGFpbiBiZWNhdXNlIG9mIFB5dGhvbiwgaXQncyBhCj4gcGFpbiB0byBk
ZXZlbG9wIGJlY2F1c2UgdGhlIHByb2JsZW0gaXRzZWxmIGlzIGNvbXBsZXguIFJld3JpdGluZyBp
biBSdXN0Cj4gd29uJ3QgY2hhbmdlIHRoYXQuCj4gCj4+IE9uIHRoZSBvdGhlciBoYW5kLCBjaG9p
Y2VzIGFyZSBnb29kLgo+IAo+IENob2ljZXMgYXJlIGdvb2Qgd2hlbiB0aGVyZSBhcmUgZW5vdWdo
IHBlb3BsZSB0byB3b3JrIG9uIHRoZSB2YXJpb3VzCj4gY2hvaWNlcy4gU3BsaXQgdGhlIGNvbW11
bml0eSwgYW5kIGluc3RlYWQgb2YgaGF2aW5nIG9uZSBnb29kIHNvZnR3YXJlLAo+IHlvdSBoYXZl
IHR3byBwb29yIHNvZnR3YXJlLgo+IAo+PiBub3QgYSB0cmVtZW5kb3VzIGFtb3VudCBvZiBkZXZl
bG9wbWVudCBvY2N1cnJpbmcgb24gZWl0aGVyLgo+IAo+IFRoYXQncyBqdXN0IGEgbWF0dGVyIG9m
IHBlb3BsZSBqb2luaW5nIGluLgo+IAo+PiBEb2VzIE9yY2EgaGF2ZSBvYmplY3QgbmF2aWdhdGlv
bj8gTm8gZmxhdCByZXZpZXcgaXMgbm90IHRoZSBzYW1lIHRoaW5nLgo+IAo+IFdoZXJlIGlzIHRo
ZSBmZWF0dXJlIHJlcXVlc3QgZm9yIG9iamVjdCBuYXZpZ2F0aW9uPyAgV2hlcmUgaXMgdGhlIHB1
bGwKPiByZXF1ZXN0IHRvIHByb3Bvc2UgYW4gaW1wbGVtZW50YXRpb24/Cj4gCj4+IEFsc28sIEkg
Y2FuJ3QgcmVtZW1iZXIgd2hpY2gsIGJ1dCBvdGhlciB0aGUgT3JjYSBkZXYgb3Igc29tZW9uZSBv
biBNYXN0b2Rvbgo+PiByZXZpZXdpbmcgT3JjYSdzIGNvZGUgc2FpZCB0aGF0LCBJIGJlbGlldmUg
dGhlIFRlcm1pbmFsLWFjY2VzcyBjb2RlIGlzCj4+ICJibGFjayBtYWdpYyIuCj4gCj4gRm9yIHRl
cm1pbmFsIGFjY2VzcywgaXQnbGwgYmUgbXVjaCBtb3JlIGludGVyZXN0aW5nIHRvIHJ1biBicmx0
dHksIHdoaWNoCj4gaGFzIGRlY2FkZXMgb2YgZXhwZXJpZW5jZS4KPiAKPiBicmx0dHkgLWIgYmEg
LXggYTIgLU4KPiAKPiBOb3RlIHRoYXQgdGhlICJibGFjayBtYWdpYyIgaW5zZXJ0ZWQgaW4gT3Jj
YSBpcyBtb3N0IG9mdGVuIGJlY2F1c2UgaXQncwo+IHRoZSBhcHBsaWNhdGlvbiBpdHNlbGYgd2hp
Y2ggZXhwb3NlcyBib2d1cyBpbmZvcm1hdGlvbi4KPiAKPiBTYW11ZWwKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

