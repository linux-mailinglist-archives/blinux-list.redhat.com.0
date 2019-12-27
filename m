Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id EED1C12BB48
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 22:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577482482;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0jyP1p1f5IQc9FKgvu2je2yC4rLEzoTI2/tuOVxYDSU=;
	b=a0/GbO/iMrR4XSKbllNRSLNtkAVSWfZBeIgiabbdfr1lXAlXUHCcZ/Sgf6zxMlOF66i9sW
	ALUz1Baq67ovUW9bQwJFdOeglrV6P+EBw0DOff+3F8umgtvCnjKALUxVB9frb2FU+cdbAy
	ZM2i3zSX/CTR+KMgYEeoHC25BqM0PaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-txmGkTbKP_CC3hH2-VN1kg-1; Fri, 27 Dec 2019 16:34:40 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A63DD107ACC4;
	Fri, 27 Dec 2019 21:34:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D277D81740;
	Fri, 27 Dec 2019 21:34:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DDE584E172;
	Fri, 27 Dec 2019 21:34:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBRLYJ6p017706 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Dec 2019 16:34:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 83B2110B2241; Fri, 27 Dec 2019 21:34:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EAD810B2240
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 21:34:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EA6585A33E
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 21:34:17 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-365-Eq-P712lPPm1OT9ZPV3CEQ-1; Fri, 27 Dec 2019 16:34:15 -0500
Received: by mail-wm1-f50.google.com with SMTP id p17so9336970wma.1
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 13:34:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=J3H2GBwN4p86LkP0REnD5UEeXVbu2sKVMV3MeDWBW4A=;
	b=QZgVrjuMp4uf7fIIEW+eT7hc5qMSJHdT/sicQaK/u1LgRvlrzrsoPSU/UAP6h9z3jV
	vVAtri/19xjXXu1hFHf95jBNsYKduXpptFU1P/FPqiTkKTgVcbfQrBhs7ajnYQd4R2Yr
	oqrG1YFXjTHQkH9k55vvACc+wvxC+rZg2NIKpHeStyXskAERIr9ZdO9axWPruWk3TOyC
	WPgiM3Wy9emAWfsVChNqQx9xJye8QpY4YBw0oFRpVyKkCU5W+oohDDk1M+gdrZQLY6MP
	U4FYAD54BGPIJhpgL5sZKgkRA8faXAoqXGFGNhPRYBsqSjM2bhvfzcswLN/xCLIdZWUk
	BAhA==
X-Gm-Message-State: APjAAAXPJ6svlmyJWhDFgiRPYD4nFOjqkNRT0hb5hlIw3l4F5FWkKsOt
	o7aaVr1+poNSZsmYiJRGVo4EQk7J1BOVpHLZGYgHJYq1
X-Google-Smtp-Source: APXvYqwIuuTTytgdZwrt5h3H9F8STeTG2I8wmlmynam4muV4JOcXkqY37XaLf6/Q5Mzelqld7K80FTjVQJWAMlSh6xc=
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr20498127wmj.100.1577482453925;
	Fri, 27 Dec 2019 13:34:13 -0800 (PST)
MIME-Version: 1.0
References: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
	<b0cf008e-d9f3-fbd0-9ee5-ce42204852b7@gmail.com>
In-Reply-To: <b0cf008e-d9f3-fbd0-9ee5-ce42204852b7@gmail.com>
Date: Fri, 27 Dec 2019 16:34:02 -0500
Message-ID: <CAJKfDDE9nrWQAXsWiKph0uc+23SvgRG5_5JjvBm09Vne_X6Uxg@mail.gmail.com>
Subject: Re: I question about how does a blind person get speech going on a
	Ubentu System.
To: blinux-list <blinux-list@redhat.com>
X-MC-Unique: Eq-P712lPPm1OT9ZPV3CEQ-1
X-MC-Unique: txmGkTbKP_CC3hH2-VN1kg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VWJ1bnR1IG1hdGUgMTkuMTAgaXNuJ3QgdGhlIHNhbWUgYXMgVWJ1bnR1LCBpdCB1c2UgTWF0ZSB3
aGlsZSBkZWZhdWx0ClVidW50dSB1c2UgVW5pdHkgb3IgR25vbWUuCgpNaWNoYcOrbCBDYXJvbiBD
b3V0dXJpZXIKCgpMZSBqZXUuIDI2IGTDqWMuIDIwMTksIMOgIDIxIGggMTksIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiBhIMOpY3Jp
dCA6Cgo+IERvIHlvdSBtZWFuIFVidW50dSAxOC4wNC4zPyBJIGhhdmVuJ3QgdHJpZWQgdGhpcyB2
ZXJzaW9uIHlldCwgYnV0IEkgZ290Cj4gT3JjYSBnb2luZyBvbiBhbiAxOC4wNC4xIGluc3RhbGwg
YSB3aGlsZSBhZ28gYnkganVzdCBoaXR0aW5nIHRoZSBrZXkKPiBzZXF1ZW5jZSB0byBzdGFydCBP
cmNhLCBuYW1lbHkgYWx0K3N1cGVyK3MuIEJUVywgdGhpcyBpcyB0aGUgc2FtZSBhcwo+IGFsdCt3
aW5kb3dzK3MuCj4KPgo+IE9uIDEyLzI2LzE5IDU6NTggUE0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBIZWxsbyBteSBzdWJqZWN0IGxpbmUgc2F5cyBpdCBh
bGwsIEkgYW0gdG90YWxseSBibGluZC4gSSBkb3dubG9hZGVkIGEKPiA+IGNvcHkgb2YgRGVza3Rv
cCBVYmVudHUgMTguMy4gVGhpcyBkaXN0cmlidXRpb24gaGFzIGJlZW4gaW5zdGFsbGVkIGluIGEK
PiA+IHZpcnR1YWwgTWFjaGluZS4gQWZ0ZXIgaW5zdGFsbGF0aW9uIHRoZSBzeXN0ZW0gaXMgcnVu
bmluZyB0aGUgR1VJCj4gPiBJbnRlcmZhY2UuIEkgd291bGQgbGlrZSB0byB1c2UgT3JjYSBmb3Vy
IHNjcmVhbSBSZWFkaW5nIGFjY2Vzcz8gSG93Cj4gPiBjYW4gSSBkdWUgdGhpcz8KPiA+Cj4gPiBT
aW5jZXJlbHkgTWF1cmljZSBNaW5lcy4KPiA+Cj4gPiBQUyB0aGlzIGVtYWlsIGhhcyBiZWVuIGRp
Y3RhdGVkIHRvIG15IE1hYyBCb29rIHByby4gUGxlYXNlIGZvcmdpdmUgYW55Cj4gPiBtaXN0YWtl
cz9JIGhvcGUgdGhhdCB0aGlzIGlzIHJlYWRhYmxlPwo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gLS0KPiBDaHJpc3RvcGhlciAo
Q0opCj4gQ2hhbHRhaW4gYXQgR21haWwKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

