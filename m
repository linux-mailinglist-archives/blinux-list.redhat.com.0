Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 519C31D6896
	for <lists+blinux-list@lfdr.de>; Sun, 17 May 2020 17:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589729140;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7bHMIEn/WJpW1mm2tv18EtXfDsVKZ2ogByh4R/zrkec=;
	b=WTNOI+sXVzaF6ti8+Wkf9Kt+Rfe4U4c2owStyrW15RiL2+Dg6o8vMxR3rsggDL4j9jtbIv
	+e6jrF1zQ0bIck04QpRP6BD5FFIpo0fXCLMIssHmZLuoRtdufbHTm03OWGwNnjspacX4jD
	3yvK/Y2m9+yyusi02guWG4l+Tg4zThc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-h3m6ablnM8y1UL0GiZ8NIA-1; Sun, 17 May 2020 11:25:37 -0400
X-MC-Unique: h3m6ablnM8y1UL0GiZ8NIA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3A16460;
	Sun, 17 May 2020 15:25:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B25CB6292F;
	Sun, 17 May 2020 15:25:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F0A84EA21;
	Sun, 17 May 2020 15:25:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04HFPDG2032194 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 May 2020 11:25:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4CF82166BA2; Sun, 17 May 2020 15:25:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0E422157F25
	for <blinux-list@redhat.com>; Sun, 17 May 2020 15:25:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35A12811E77
	for <blinux-list@redhat.com>; Sun, 17 May 2020 15:25:10 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-365-PhlCH2hdOr2QDwxFCAzWMA-1; Sun, 17 May 2020 11:25:07 -0400
X-MC-Unique: PhlCH2hdOr2QDwxFCAzWMA-1
Received: by mail-ot1-f67.google.com with SMTP id q11so5937323oti.6
	for <blinux-list@redhat.com>; Sun, 17 May 2020 08:25:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=d7dSU4hiKzewtif3SJeljUwZvnGXmemITHurjYg6KRY=;
	b=NaDn+Q4APgAZEcRkx8iPpyzvnyc004sljJiMCiKNtn79JxcvL3nlEFtksN/G89tZ2Y
	jbEw/hL63uhxo1joPXE+uyb6fJn9JfOHZlXZ3o2cxi2i0CbhJj/QHmeSbjPCmS4bcnu7
	bPY6kFBiDjOao1bSEtKT4YIMmmZIjJkJJ/Qt08T1wwJFKyCQuSdsoZnGCFgN/4GzwOWE
	y0yhkByNUrP5yHwS0Z7un2d5W7mVx0oEUGoq3Msl354P+yuOrQvYv15ottGlmkfGnQ9O
	zQjrTfiwzXFQ/7skl96K9F1E+zlUWgAZgF/s70dkjmOUGfpu9ix1uXa97eTV0rvkFXh4
	x/Nw==
X-Gm-Message-State: AOAM533CjHrPTwrnIgUMQ5J33zIGsfJTQ8ovsvAO/8EaJQ+aUroE1GHX
	6wF3Z34RZvqPr+M8GAH90x9pzfQD
X-Google-Smtp-Source: ABdhPJzh0DKdXSXePP4H8C5LXkZlksb5gOKkjJOCPSBhkFLK1QPTs8X8pDcTDjw5t2oSTFhrgZ936g==
X-Received: by 2002:a9d:ec3:: with SMTP id 61mr9380235otj.286.1589729106242;
	Sun, 17 May 2020 08:25:06 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:bcba:e64:8986:4eab?
	([2601:3c2:8200:9360:bcba:e64:8986:4eab])
	by smtp.gmail.com with ESMTPSA id
	m65sm2338442oib.49.2020.05.17.08.25.04 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 May 2020 08:25:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Sun, 17 May 2020 10:25:03 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<D5BAA36E-584B-40B2-9968-7D103EC14B12@gmail.com>
	<40889145-3DE2-4F3B-8F0F-9F3A4DDA61D6@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <40889145-3DE2-4F3B-8F0F-9F3A4DDA61D6@gmail.com>
Message-Id: <F52683B8-35C3-4F17-8C64-1E7B24A9DD83@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04HFPDG2032194
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGtleSB3b3VsZCBiZSBpZiBvcmNhIGNhbiB3b3JrIHdpdGggdGhlIGluc3RhbGxlci4KSSBo
YWQgdGhvdWdodCBvZiB0cnlpbmcgbGludXggbWludCwgYnV0IG9yY2Egc3RhcnRzLCB0aGVuIHN0
b3BzLgpJIGhlYXIgb3JjYSB3aWxsIHdvcmsgd2l0aCBzb21lIGRpc3RyaWJ1dGlvbnMgb2YgbGlu
dXgsIGJ1dCB0aGF0IG9yY2EgY2Fubm90IHdvcmsgaW4gZWFjaCBpbnN0YWxsZXIuCgo+IE9uIE1h
eSAxNywgMjAyMCwgYXQgMToyNSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gV2VsbCwgdGhhdOKAmXMgbmV3
LiBVcCB0byBsYXN0IHllYXIsIEkga2VwdCBnZXR0aW5nIHRvbGQgaW4gVGhlb+KAmXMgbW9yZSBm
YW1vdXMgcmV0b3J0OiDigJxOb3Qgc3VwcG9ydGVk4oCdLgo+IAo+IC1FcmljCj4gCj4gCj4+IE9u
IE1heSAxMywgMjAyMCwgYXQgNzowMCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+PiBBY2NvcmRpbmcgdG8g
QHNvbGVuZUBic2QubmV0d29yayA8bWFpbHRvOnNvbGVuZUBic2QubmV0d29yaz4gKE1hc3RvZG9u
KSBPcmNhIGlzIGF2YWlsYWJsZSBvbiBPcGVuIEJTRC4gVGhleSBkbyBzZWVtIHdpbGxpbmcgdG8g
aGVscCwgYXMgd2VsbC4gSSBkb27igJl0IGtub3cgaWYgdGhpcyBpcyB0aGUgVGhlbyB5b3UgbWVu
dGlvbmVkLCBidXQgaXQgZG9lcyBzZWVtIHRoYXQgYXQgbGVhc3Qgb25lIEJTRCBwZXJzb24gd291
bGQgaGVscC4KPj4gCj4+PiBPbiBNYXkgMTMsIDIwMjAsIGF0IDEyOjQ2IEFNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4+IAo+Pj4gRG9u4oCZdCBjb3VudCBvbiBpdCBldmVyIGJlaW5nIHVzYWJsZSBvbiBPcGVuQlNE
LiBUaGVvLCBpbiBoaXMgaW5maW5pdGUgd2lzZG9tLCBoYXMgcHJldHR5IG11Y2ggYmxvd24gb2Zm
IGFueSByZXF1ZXN0cyBmb3IgYWNjZXNzaWJpbGl0eSBmb3IgdGhlIGJsaW5kIG9uIHRoYXQgcGxh
dGZvcm0uIFlvdSBtaWdodCBoYXZlIGJldHRlciBsdWNrIG9uIG9uZSBvZiB0aGUgb3RoZXIgQlNE
4oCZcyAobGlrZSBGcmVlQlNEKQo+Pj4gCj4+PiBXaGF0IEkgd291bGRu4oCZdCBnaXZlIHRvIGdv
IHVwIHRvIENhbmFkYSwga25vY2sgb24gVGhlb+KAmXMgZnJvbnQgZG9vciBhbmQgc2hvdmUgYSBs
YXB0b3Agd2l0aCBPcGVuQlNEIGludG8gaGlzIGhhbmRzIGFuZCB0ZWxsIGhpbSB0byBmaXggaXQu
IEl0IHdvdWxkIGJlIGEgbGl0dGxlIGhhcmQgdG8gaWdub3JlIGF0IHRoYXQgcG9pbnQsIGRvbuKA
mXQgeW91IHRoaW5rPwo+Pj4gCj4+PiAtRXJpYwo+Pj4gCj4+PiAKPj4+PiBPbiBNYXkgMTIsIDIw
MjAsIGF0IDc6NDIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+IAo+Pj4+IEFueW9uZSBrbm93IG9mIGEgZGlz
dHJpYnV0aW9uIG9mIGIgcyBkIHdpdGggb3JjYSBpbiBpdHMgaW5zdGFsbGVyPwo+Pj4+IEkgaGFk
IG5ldmVyIHVzZWQgYiBzIGQgYmVmb3JlLCBidXQgdGhvdWdodCBvZiBnaXZpbmcgaXQgYSB0cnku
Cj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4gCj4+PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

