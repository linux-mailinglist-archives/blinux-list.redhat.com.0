Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA4E19B13D
	for <lists+blinux-list@lfdr.de>; Wed,  1 Apr 2020 18:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585758892;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yhxeicP+WaA9yaj7D1+DoSZ/WAchDGhm3AyGkNd2BjE=;
	b=NK6NMKpJ0RtG5RYif62WJgO6tz4OzO6LK3FrqdAJNlZSOFBrb7AquHprvqFQXxPDBAoQJJ
	yBlqs7QfDiEBANdxze0CTvZ3XvG/nafhuxQqXRGZsE2friolI/Pa6/4Lv2TxuASi/aQCzf
	xjo0So9U+CpeG2n0defxH5FySNDv3i8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-_5GXGRWWM0SZtbkct5eFdw-1; Wed, 01 Apr 2020 12:34:50 -0400
X-MC-Unique: _5GXGRWWM0SZtbkct5eFdw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A5868017F5;
	Wed,  1 Apr 2020 16:34:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89C1BA63A6;
	Wed,  1 Apr 2020 16:34:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 56A5386C1E;
	Wed,  1 Apr 2020 16:34:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 031GUkxp017075 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Apr 2020 12:30:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4F2E9103F265; Wed,  1 Apr 2020 16:30:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1A0103F261
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 16:30:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95DF28FF67A
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 16:30:42 +0000 (UTC)
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
	[192.185.149.4]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-15-8w0J0Mn7PgWx6AfnFTwsZg-1; Wed, 01 Apr 2020 12:30:39 -0400
X-MC-Unique: 8w0J0Mn7PgWx6AfnFTwsZg-1
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id 1C87410F881
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 11:30:39 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id JgGFjb4Be1s2xJgGFjHCLq; Wed, 01 Apr 2020 11:30:39 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:44574
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jJgGE-0012B4-MZ
	for blinux-list@redhat.com; Wed, 01 Apr 2020 11:30:38 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 518252610F2
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 19:30:36 +0300 (IDT)
Date: Wed, 1 Apr 2020 19:30:36 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Alien::SVN
Message-ID: <20200401193036.22b07575@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.21.2004011156190.9118@panix1.panix.com>
References: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
	<20200401090427.3839f720@telaviv1.shlomifish.org>
	<alpine.NEB.2.21.2004011156190.9118@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.230
X-Source-L: No
X-Exim-ID: 1jJgGE-0012B4-MZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:44574
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 031GUkxp017075
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

SGkhCgpPbiBXZWQsIDEgQXByIDIwMjAgMTE6NTk6MzcgLTA0MDAKTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IERpc3Ry
aWJ1dGlvbiBzbGludC4gU1ZOOjpDb3JlIGNhbWUgdXAgYXMgdW5wYXJzZWFibGUgaW4gY3BhbnAg
d2l0aCB1c2Ugb2YKPiBvIGNvbW1hbmQgdG8gY2hlY2sgZm9yIG91dCBvZiBkYXRlIG1vZHVsZXMu
IEknbSB1c2luZyBjcGFucCB0byBpbnN0YWxsCj4gdGhpcyBhbmQgdGhlIHBhY2thZ2UgY2xhaW1z
IHRvIHN0aWxsIGJlIGJ1aWxkaW5nIGFuZCBieSAyOjAwUE0gdG9kYXkgaXQKPiB3aWxsIGhhdmUg
dGFrZW4gMjQgaG91cnMgdG8gYnVpbGQuIEkgY291bGQganVzdCB0cmFzaCB0aGUgYnVpbGQgYXMg
SSd2ZQo+IGRvbmUgYmVmb3JlIGJ1dCBhbSBjdXJpb3VzIGFzIHRvIHBvc3NpYmxlIGJlbmVmaWNp
YWwgZWZmZWN0cyBvZiBoYXZpbmcKPiBTVk46OkNvcmUgdW5wYXJzZWFibGUgZ28gYXdheSBhbmQg
aGF2ZSB0aGF0IHVwZGF0ZWQuIE9uIFdlZCwgMSBBcHIgMjAyMCwKPiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAoKU2luY2Ugc2xpbnQgaXMgYmFzZWQgb24gc2xh
Y2t3YXJlIHRoZW4gYWNjb3JkaW5nIHRvCmh0dHBzOi8vc2xhY2t3YXJlLnBrZ3Mub3JnL2N1cnJl
bnQvc2xhY2t3YXJlLXg4Nl82NC9zdWJ2ZXJzaW9uLTEuMTMuMC14ODZfNjQtMy50eHouaHRtbAot
IHN1YnZlcnNpb24gdGhlcmUgKGFuZCBTVk4vQ29yZS5wbSApIGlzIGF0IHRoZSBsYXRlc3QgdmVy
c2lvbi4gTm8gbmVlZCB0bwp1cGdyYWRlIGFuZCBJIHN1Z2dlc3QgeW91IGtpbGwgdGhlIGJ1aWxk
LgoKPiA+IERhdGU6IFdlZCwgMSBBcHIgMjAyMCAwMjowNDoyNwo+ID4gRnJvbTogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiA+IFRv
OiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPgo+ID4gU3ViamVjdDogUmU6IEFsaWVuOjpTVk4KPiA+Cj4gPiBIaSEKPiA+Cj4gPiBPbiBU
dWUsIDMxIE1hciAyMDIwIDE5OjM4OjIxIC0wNDAwCj4gPiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+ICAKPiA+ID4g
aXMgQWxpZW46OlNWTiBzdXBwb3NlZCB0byB0YWtlIHNldmVyYWwgaG91cnMgdG8gaW5zdGFsbD8K
PiA+ID4gSWYgbm8sIHRoYXQncyB3aGF0J3MgaGFwcGVuaW5nIG92ZXIgaGVyZS4KPiA+ID4gSWYg
SSBldmVyIHJ1biB0aGlzIGFnYWluIEkgdGhpbmsgSSB3YW50IHRvIHdhdGNoIHBlcmwgY29kZSBl
eGVjdXRpb24gYXMgaXQKPiA+ID4gaGFwcGVucyB3aGVuIHRoaXMgb25lIGluc3RhbGxzLgo+ID4g
PiAgCj4gPgo+ID4gRGlkIHlvdSBtYW5hZ2UgdG8gc29ydCBpdCBvdXQgYnkgbm93PyBJZiBub3Qs
IGNhbiB5b3UgcHJvdmlkZSBtb3JlIGRldGFpbHMKPiA+IGFib3V0Ogo+ID4KPiA+IDEuIHlvdXIg
ZGlzdHJvK3ZlcnNpb24KPiA+Cj4gPiAyLiB3aHkgZG8geW91IG5lZWQgQWxpZW46OlNWTj8KPiA+
Cj4gPiAzLiBIb3cgYXJlIHlvdSBpbnN0YWxsaW5nIGl0Pwo+ID4KPiA+IFNlZSBodHRwczovL2dp
dGh1Yi5jb20vc2hsb21pZi93cml0aW5nLXRoZS1wZXJmZWN0LXF1ZXN0aW9uIC4KPiA+Cj4gPiBU
aGFua3MhCj4gPgo+ID4gIAo+ID4gPgo+ID4gPgo+ID4gPiAtLQo+ID4gPgo+ID4gPgo+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiBo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4g
IAo+ID4KPiA+Cj4gPgo+ID4gLS0KPiA+Cj4gPiBTaGxvbWkgRmlzaCAgICAgICBodHRwczovL3d3
dy5zaGxvbWlmaXNoLm9yZy8KPiA+IGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL2h1bW91ci93
YXlzX3RvX2RvX2l0Lmh0bWwKPiA+Cj4gPiBDaHVjayBOb3JyaXMgd2lsbCBraWxsIHlvdSBqdXN0
IGZvciB0aGUgZnVuIG9mIGtpY2tpbmcgeW91ciBEZWF0aCdzIGFzcwo+ID4gdGlsbCBpdCBydW5z
IGF3YXksIHRoZW4gYmVhdGluZyB5b3VyIHNvdWwgYmFjayBpbnRvIHlvdXIgY29ycHNlLiAoYnkK
PiA+IGUtbmVrbykuID8gaHR0cDovL3d3dy5zaGxvbWlmaXNoLm9yZy9odW1vdXIvYml0cy9mYWN0
cy9DaHVjay1Ob3JyaXMvCj4gPgo+ID4gUGxlYXNlIHJlcGx5IHRvIGxpc3QgaWYgaXQncyBhIG1h
aWxpbmcgbGlzdCBwb3N0IC0gaHR0cDovL3NobG9tLmluL3JlcGx5IC4KPiA+Cj4gPgo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0ICAKPiAKCgoKLS0gCgpT
aGxvbWkgRmlzaCAgICAgICBodHRwczovL3d3dy5zaGxvbWlmaXNoLm9yZy8KaHR0cHM6Ly9jY21p
eHRlci5vcmcvZmlsZXMvZGVzdGluYXppb25lX2FsdHJvdmUvNDk5OTcgLSDigJxQYWludCBUaGUg
U2t54oCdCgpHb2QgY3JlYXRlZCB0aGUgd29ybGQgaW4gNiBkYXlzIGFuZCByZXN0ZWQgb24gdGhl
IDd0aC4gQ2h1Y2sgTm9ycmlzIGNyZWF0ZWQKdGhlIHdvcmxkIGluIG9uZSBkYXksIGFuZCBoYXMg
YmVlbiBpbmNyZW1lbnRhbGx5IGRlc3Ryb3lpbmcgaXQgZXZlcnkgZGF5IHNpbmNlLAp3aXRob3V0
IHJlc3QuCgpQbGVhc2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3Qg
LSBodHRwOi8vc2hsb20uaW4vcmVwbHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

