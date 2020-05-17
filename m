Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 704671D6656
	for <lists+blinux-list@lfdr.de>; Sun, 17 May 2020 08:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589696752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n2z9Y4Qm+iW0JF6q5VR8EG37eGeAJEklhsmi9demKa8=;
	b=PZZJcd0Cn/ckrsLcdl2m4AgLalKIVPhWCqdpCPzrwAD8Oi+K0NkNUQqkaDRVHV4ST9lXS+
	Ld6RLSaLz5FRwNvoPg0x0ktR72cpFYowdr20Tqsp3ubSZKA+LVnegOWSV2lin+4wMPPQGg
	GUBmwIxmonHYYx+k3E579yF7Hr+tKb8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-mMJ4J2nJOJSGz5QGto8bGw-1; Sun, 17 May 2020 02:25:49 -0400
X-MC-Unique: mMJ4J2nJOJSGz5QGto8bGw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C49080B700;
	Sun, 17 May 2020 06:25:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B880B6062D;
	Sun, 17 May 2020 06:25:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CAB44CAA8;
	Sun, 17 May 2020 06:25:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04H6PFYs000306 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 May 2020 02:25:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2692E30BB2; Sun, 17 May 2020 06:25:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2272730BBF
	for <blinux-list@redhat.com>; Sun, 17 May 2020 06:25:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33DCC101A525
	for <blinux-list@redhat.com>; Sun, 17 May 2020 06:25:13 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
	[209.85.216.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-358-nhTEmCz2M-WqYAckpXnH2w-1; Sun, 17 May 2020 02:25:08 -0400
X-MC-Unique: nhTEmCz2M-WqYAckpXnH2w-1
Received: by mail-pj1-f66.google.com with SMTP id hi11so3149877pjb.3
	for <blinux-list@redhat.com>; Sat, 16 May 2020 23:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=lKg8wO7DCq3NQ5e5EZr05ZnIF5+ok59O4rDXUT+FHz4=;
	b=J8FRopLzaFzMAXexrgTueq2DC54wkRevE4d8swB9TfJf7YwSAavBwDd64rDKA4dgQ8
	JKbuSVk05bnvgmO4WFWcuqz38Sr+UxV2djcN3BqBOg4R58nPNzAvz8XMMXDg0uj9168t
	qnPZ0JGhCt+FQClQ7Ax8VFzBp5MOxzIP9PdJ0nwK0ktTUWt5eeKidWW7VjDC8D9KC/Tw
	c4R23gIDXonFWmWe60RS2XzOLP4M25JFUIbVK2dTnNkxErEr7NxQPFvoxqitdb8RDWxV
	gJL050S4mJ9rwLvV2lTySD2b8W2TBC+bXpK9vTkfS+ggIaAW6ozoHMLjgZtfGoi6DrQl
	e8og==
X-Gm-Message-State: AOAM53300F9QE7qaju9LaQxriOkXn/qdzvqevU0JDSxDEtxqZ4oNSHyh
	8Irjo1q8TV6bE6CGFVWu8dYeIN3i
X-Google-Smtp-Source: ABdhPJyO7rZaOZ4z2rLNbw1m4EWwgQIqp8pNuUl/L76R43PVwCWsSnrq/5I3o0fs3e2CR57lc5ZOIA==
X-Received: by 2002:a17:902:7609:: with SMTP id
	k9mr11339000pll.56.1589696707151; 
	Sat, 16 May 2020 23:25:07 -0700 (PDT)
Received: from [192.168.0.165] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	t20sm5273360pjo.13.2020.05.16.23.25.06 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 May 2020 23:25:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: b s d and orca
Date: Sat, 16 May 2020 23:25:04 -0700
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<D5BAA36E-584B-40B2-9968-7D103EC14B12@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <D5BAA36E-584B-40B2-9968-7D103EC14B12@gmail.com>
Message-Id: <40889145-3DE2-4F3B-8F0F-9F3A4DDA61D6@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04H6PFYs000306
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgdGhhdOKAmXMgbmV3LiBVcCB0byBsYXN0IHllYXIsIEkga2VwdCBnZXR0aW5nIHRvbGQg
aW4gVGhlb+KAmXMgbW9yZSBmYW1vdXMgcmV0b3J0OiDigJxOb3Qgc3VwcG9ydGVk4oCdLgoKLUVy
aWMKCgo+IE9uIE1heSAxMywgMjAyMCwgYXQgNzowMCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gQWNjb3Jk
aW5nIHRvIEBzb2xlbmVAYnNkLm5ldHdvcmsgPG1haWx0bzpzb2xlbmVAYnNkLm5ldHdvcms+IChN
YXN0b2RvbikgT3JjYSBpcyBhdmFpbGFibGUgb24gT3BlbiBCU0QuIFRoZXkgZG8gc2VlbSB3aWxs
aW5nIHRvIGhlbHAsIGFzIHdlbGwuIEkgZG9u4oCZdCBrbm93IGlmIHRoaXMgaXMgdGhlIFRoZW8g
eW91IG1lbnRpb25lZCwgYnV0IGl0IGRvZXMgc2VlbSB0aGF0IGF0IGxlYXN0IG9uZSBCU0QgcGVy
c29uIHdvdWxkIGhlbHAuCj4gCj4+IE9uIE1heSAxMywgMjAyMCwgYXQgMTI6NDYgQU0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+PiAKPj4gRG9u4oCZdCBjb3VudCBvbiBpdCBldmVyIGJlaW5nIHVzYWJsZSBvbiBPcGVu
QlNELiBUaGVvLCBpbiBoaXMgaW5maW5pdGUgd2lzZG9tLCBoYXMgcHJldHR5IG11Y2ggYmxvd24g
b2ZmIGFueSByZXF1ZXN0cyBmb3IgYWNjZXNzaWJpbGl0eSBmb3IgdGhlIGJsaW5kIG9uIHRoYXQg
cGxhdGZvcm0uIFlvdSBtaWdodCBoYXZlIGJldHRlciBsdWNrIG9uIG9uZSBvZiB0aGUgb3RoZXIg
QlNE4oCZcyAobGlrZSBGcmVlQlNEKQo+PiAKPj4gV2hhdCBJIHdvdWxkbuKAmXQgZ2l2ZSB0byBn
byB1cCB0byBDYW5hZGEsIGtub2NrIG9uIFRoZW/igJlzIGZyb250IGRvb3IgYW5kIHNob3ZlIGEg
bGFwdG9wIHdpdGggT3BlbkJTRCBpbnRvIGhpcyBoYW5kcyBhbmQgdGVsbCBoaW0gdG8gZml4IGl0
LiBJdCB3b3VsZCBiZSBhIGxpdHRsZSBoYXJkIHRvIGlnbm9yZSBhdCB0aGF0IHBvaW50LCBkb27i
gJl0IHlvdSB0aGluaz8KPj4gCj4+IC1FcmljCj4+IAo+PiAKPj4+IE9uIE1heSAxMiwgMjAyMCwg
YXQgNzo0MiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+IEFueW9uZSBrbm93IG9mIGEgZGlzdHJpYnV0
aW9uIG9mIGIgcyBkIHdpdGggb3JjYSBpbiBpdHMgaW5zdGFsbGVyPwo+Pj4gSSBoYWQgbmV2ZXIg
dXNlZCBiIHMgZCBiZWZvcmUsIGJ1dCB0aG91Z2h0IG9mIGdpdmluZyBpdCBhIHRyeS4KPj4+IAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4g
Cj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

