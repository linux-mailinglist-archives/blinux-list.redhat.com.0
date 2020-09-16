Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9201626C75A
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 20:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600280727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OV5hngY8w0ZDMaAJXyJK7XmN3adCGOM4O9RrW+o0/ZY=;
	b=G0wvbIgfyNnN9eXwlVIrILy1Xx9engTXHckQiTwogeM69eX0pdMEneccLZBJ0qyGu9Je8J
	YATvG3WhwQDZcbTVkUqyS6vMA4g0N0fzvdD5nGqFtjTfBWQbKPr/SPEdPV0TYZ4F8phDzG
	cHdWscHynxlQw0PEopdDT60M5fRhdV8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-_p5aANQDOzCMO_GM86hHwg-1; Wed, 16 Sep 2020 14:25:24 -0400
X-MC-Unique: _p5aANQDOzCMO_GM86hHwg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BED53801AC4;
	Wed, 16 Sep 2020 18:25:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DC8E19D61;
	Wed, 16 Sep 2020 18:25:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB56344A6C;
	Wed, 16 Sep 2020 18:25:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GIP4DM009863 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 14:25:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6C76FF641D; Wed, 16 Sep 2020 18:25:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6664EF641C
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 18:24:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02D6B80029D
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 18:24:58 +0000 (UTC)
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
	[192.185.50.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-337-wPce8zEfNByhMrDSyC5ulw-1; Wed, 16 Sep 2020 14:24:53 -0400
X-MC-Unique: wPce8zEfNByhMrDSyC5ulw-1
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id E2C9A400C74AC
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 11:39:23 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id Ibmsk56smXp2AIbmsk8zyW; Wed, 16 Sep 2020 13:04:10 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-152.inter.net.il ([84.229.96.152]:33448
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1kIbms-003RMT-8Z
	for blinux-list@redhat.com; Wed, 16 Sep 2020 13:04:10 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 97059260050
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 21:04:07 +0300 (IDT)
Date: Wed, 16 Sep 2020 21:04:07 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Question; was Strange Happenings in mpv?
Message-ID: <20200916210407.0b35a36e@telaviv1.shlomifish.org>
In-Reply-To: <alpine.OSX.2.23.453.2009160932160.4379@dans-mac-mini.home>
References: <alpine.OSX.2.23.453.2009160932160.4379@dans-mac-mini.home>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.152
X-Source-L: No
X-Exim-ID: 1kIbms-003RMT-8Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-152.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.152]:33448
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08GIP4DM009863
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgWFIsCgpPbiBXZWQsIDE2IFNlcCAyMDIwIDA5OjM0OjMwIC0wNDAwIChFRFQpCkxpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
OgoKPiBBcyBmb3IgbXB2LCBkb2VzIGFueW9uZSBrbm93IG9mIGEgbWFpbGluZyBsaXN0IGZvciB1
c2Vycz8KCkkgd2FzIG9ubHkgYWJsZSB0byBmaW5kIHRoaXM6IGh0dHBzOi8vbXB2LmlvL2NvbW11
bml0eS8gKElSQyBhbmQgYW4gaXNzdWUKdHJhY2tlciBhbmQgYSB3aWtpKS4KCj4gT24gVHVlLCAx
NSBTZXAgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiAK
PiA+IFdlbGwsIGp1c3QgZm9yIHRoZSByZWNvcmQsIEkgYW0gcnVubmluZyBEZWJpYW4gc2lkLCBh
cyBJIGNlcnRhaW5seSBsb3ZlCj4gPiBnZXR0aW5nIHRoZSBsYXRlc3QgcGFja2FnZXMuIFNvLCAx
IG9mIG15IExpbnV4IGV4cGVydHMgY3JlYXRlZCBhbiBhdWRpbwo+ID4gZWRpdG9yIHdoaWNoIEkg
Y2FuIHVzZSBhZnRlciByaXBwaW5nIHN0cmVhbXMuIEp1c3QgcmVjZW50bHkgYW55IGZpbGVzLAo+
ID4gZXNwZWNpYWxseSBkb3QgYWFjLCBidXQgcmVhbGx5IGFueXRoaW5nLCBub3cgd2hlbiBJIHBs
YXkgdGhlbSBpbiBtcHYsIEkKPiA+IGNhbm5vdCBhcnJvdyB0aHJvdWdoIHRvIHNhbXBsZSBhdWRp
by4gSSBjYW4gYXJyb3cgd2hlbiBwbGF5aW5nIHRoZXNlIGluIG0KPiA+IHBsYXllci4gU28sIGhl
cmUncyBhbiBldmVuIHN0cmFuZ2VyIGFzcGVjdC4gSWYgSSBtb3ZlIGFueSBvZiB0aGVzZSBmaWxl
cwo+ID4gb3IgdGhlaXIgZGlyZWN0b3J5LCBJIGNhbiB0aGVuIGFycm93LiBBdCB0aGF0IHBvaW50
LCBldmVuIGlmIEkgY2hhbmdlIGEKPiA+IG5hbWUgb2YgYSBmaWxlLCBidXQgaWYgSSBtb3ZlIGl0
IGJhY2sgdG8gaXRzIG9ycmlnaW5hbCBsb2NhdGlvbiwgYWdhaW4gSQo+ID4gY2Fubm90IGFycm93
LiBGaXJzdCB3ZSB0aG91Z2h0IHRoZXJlIHdhcyBzb21lIGxpYnJhcnkgYnVnIGluIG1wdiwgYnV0
IHRoZQo+ID4gZmFjdCBJIGNhbiB3b3JrIHdpdGggdGhlc2UgZmlsZXMgaWYgdGhleSBhcmUgbW92
ZWQsIHNheXMgaXRzIG5vdCB0aGF0LiBNeQo+ID4gZXhwZXJ0IGlzIHVzZWluZyBhIHZsYyBsaWJy
YXJ5IHRvIGVuYWJsZSBtZSB0byBlZGl0LiBDYW4gYW55MSBwbGVhc2UKPiA+IGluZm9ybSBpZiB5
b3UndmUgZXZlciBzZWVuIHRoaXMgb3Igd2hhdCBJIGNhbiBkbyB0byBmaXhpdD8gQnkgdGhlIHdh
eSB2bGMKPiA+IHNlZW1zIHRvIG5ldmVyIGxldCBtZSBhcnJvdyB0aHJvdWdoIGEgZmlsZS4KPiA+
IENoaW1lCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+ID4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPgo+ID4gIAo+IAoKCgotLSAKClNobG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNo
bG9taWZpc2gub3JnLwpodHRwczovL2dpdGh1Yi5jb20vc2hsb21pZi93aGF0LXlvdS1zaG91bGQt
a25vdy1hYm91dC1hdXRvbWF0ZWQtdGVzdGluZwoKVGhlIGZpcnN0IHBocmFzZSB0aGF0IG5lZWRz
IHRvIGJlIHRhdWdodCB3aGVuIHRlYWNoaW5nIGEgbmV3IGxhbmd1YWdlIGlzIGhvdyB0bwpzYXkg
4oCcRG8geW91IHNwZWFrIEVuZ2xpc2g/4oCdLiBUaGUgZmlyc3QgdGhpbmcgdGhhdCBuZWVkcyB0
byBiZSB0YXVnaHQgd2hlbgp0ZWFjaGluZyBhIG5ldyBjb21wdXRlciB0b29sIGlzIGhvdyB0byBl
eGl0IGl0LgogICAg4oCUIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL2h1bW91ci5odG1sCgpQ
bGVhc2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3QgLSBodHRwczov
L3NobG9tLmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

