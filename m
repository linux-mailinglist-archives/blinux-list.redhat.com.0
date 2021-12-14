Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 878A8474DE8
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 23:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639520943;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xwfdeEOWOF0aATRU7X2eCnI95D0vIMncXnhC3HFwirg=;
	b=RiB2YZ7A6JiChIuX8OkHS8MYTI1JGK6sb2BAeowX4eAkV9PNvNr0TRZzrlrQ4I02djEK1z
	wy0EUtpKv1x8i1Kn6PutLNasD5kqUUjcLHjc+h12Xjz7NqHw2qh6VLtC26+Y2O9xJbkIqD
	Rx4Varcx+u25SVp5Os8X7pva4YNjLec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-kyTLrvYMOHCTZEjPphZfRw-1; Tue, 14 Dec 2021 17:29:00 -0500
X-MC-Unique: kyTLrvYMOHCTZEjPphZfRw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABBD792502;
	Tue, 14 Dec 2021 22:28:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16FD05BE0A;
	Tue, 14 Dec 2021 22:28:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2DCC1809CB8;
	Tue, 14 Dec 2021 22:28:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEMSq5Q022035 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 17:28:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 28C4B202660C; Tue, 14 Dec 2021 22:28:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24AE32026D60
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:28:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 357E93879976
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:28:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-107-KzPR2YwMMdO8sDlNHvD4Qw-1; Tue, 14 Dec 2021 17:28:47 -0500
X-MC-Unique: KzPR2YwMMdO8sDlNHvD4Qw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JDChb0l2Mz3nFn
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 17:28:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JDChb0PDgzcbc; Tue, 14 Dec 2021 17:28:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JDChb0N4bzcbC
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 17:28:47 -0500 (EST)
Date: Tue, 14 Dec 2021 17:28:46 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <443ab366-55dd-e615-ae30-f2db30bde319@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112141728030.9754@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<443ab366-55dd-e615-ae30-f2db30bde319@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BEMSq5Q022035
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

RmVucmlyIGlzIEplbnV4IGRlZmF1bHQgY29uc29sZSBzcGVlY2ggcGFja2FnZSBhbmQgdGhhdCB3
YXMgd3JpdHRlbiBpbgpweXRob24uCgoKT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGkgQnJlbnQsCj4KPgo+IFdoZW4gZmVu
cmlyIGNvbWVzIHVwIGFmdGVyIHRoZSBpbnN0YWxsZWQgc3lzdGVtIGJvb3RzLCBkbyBlaXRoZXIg
Y2Fwc2xvY2srRjPCoAo+IGZvciBsYXB0b3Agb3IgZmVucmlyIGtleStGMyB0byBkaXNhYmxlIHRo
ZSBmZW5yaXIgc291bmRzIHRoZW4gZmVuZXJpciBrZXkrRjQKPiB0byBkaXNhYmxlIGZlbnJpciBz
cGVlY2ggdGhlbiB0cnkgbG9naW5nIGluIGFuZCBzZWUgaWYgb3JjYSB3aWxsIHNwZWFrIHdoZW4K
PiB0aGUgZGVza3RvcCBjb21lcyB1cC4gVGhpcyB3b3JrcyBmb3IgbWUuCj4KPgo+IE1hdHRoZXcK
Pgo+Cj4KPgo+IE9uIDEyLzE0LzIwMjEgNDoxOCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiA+IEhpIGFsbCwKPiA+Cj4gPiBJIGRlY2lkZWQgdG8gZ2l2ZSBK
ZW51eCBhbm90aGVyIGdvLCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3aGF0IEkgdHJpZWQsIEkKPiA+
IGNvdWxkbid0IGdldCBvcmNhIHRvIGNvbWUgb24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lz
dGVtLgo+ID4KPiA+IERvZXMgYW55b25lIGhhdmUgYW55IGFkdmljZT8KPiA+Cj4gPiBBbHNvLCBp
ZiB0aGlzIGRvZXNuJ3Qgd29yayBvdXQsIGlzIHRoZXJlIGEgZ3VpZGUgZm9yIGRvaW5nIGEgTWFu
amFybwo+ID4gYXJjaGl0ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVk
IGEgbGl0dGxlIHdoaWxlIGFnbywgYW5kIGlmLAo+ID4gYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0
IHdvcmsgb3V0LCBJJ2QgbGlrZSB0byBnaXZlIHRoYXQgb25lIGEgZ28uCj4gPgo+ID4gVGhhbmtz
IHNvIGxvbmcuCj4gPgo+ID4gV2FybSByZWdhcmRzLAo+ID4KPiA+IEJyYW5kdCBTdGVlbmthbXAK
PiA+Cj4gPiBTZW50IGZyb20gbXkgTWFjQm9vayBBaXIKPiA+Cj4gPiBDb250YWN0Ogo+ID4KPiA+
IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4KPiA+Cj4gPiBF
bWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1w
QGdtYWlsLmNvbT4KPiA+Cj4gPiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3
LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPiA+Cj4gPgo+ID4KPiA+Cj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

