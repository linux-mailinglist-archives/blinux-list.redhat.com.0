Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id E427218CBB3
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 11:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584700501;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+3yANdMvhaAOrfkuMi7cIh5UoY5Th9F0tTLhL2BSwb4=;
	b=QqG2PWJOQOyiNP5LQyJhWYZ0eClofYsllwD10CHRpyIkRzksA9ynCKX4cEiRbm8I1UQsEX
	/nItnCiM9enfQY9n3xdoWoyiRdk74u5+kOU1MsCqZPUYgAL98/wTPumgwK4Ym1UKJSp3dX
	/J8Tkau2NJtDTTmu0SCLKjrBH0Rqrzo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-fhV632V0PSS1Egd4EWZZkA-1; Fri, 20 Mar 2020 06:34:59 -0400
X-MC-Unique: fhV632V0PSS1Egd4EWZZkA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AE75107ACC9;
	Fri, 20 Mar 2020 10:34:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 715CA6EFBA;
	Fri, 20 Mar 2020 10:34:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AEF1A18089C8;
	Fri, 20 Mar 2020 10:34:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02KAYTjV013296 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Mar 2020 06:34:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5EBA4104CDB5; Fri, 20 Mar 2020 10:34:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AEDC104CDB7
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 10:34:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 525A28CC925
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 10:34:25 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-74-jtIWKIqHOFmSlx5a31WrBA-1; Fri, 20 Mar 2020 06:34:22 -0400
X-MC-Unique: jtIWKIqHOFmSlx5a31WrBA-1
X-Halon-ID: 5b1e187b-6a96-11ea-93b4-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from [10.5.0.2] (unknown [185.65.135.164])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id 5b1e187b-6a96-11ea-93b4-005056917149;
	Fri, 20 Mar 2020 11:34:19 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: What distribution will work with the virtual machine on a Mac?
Date: Fri, 20 Mar 2020 11:34:19 +0100
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
Message-Id: <822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02KAYTjV013296
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

SGkhCkFueSBkaXN0cm8gdGhhdCBhcmUgYWNjZXNzaWJsZSBpIHRoaW5rLgpJIHVzZSBhbiBvbGQg
dmludXggNS4xIHN5c3RlbSBidXQgaSB0aGluayB1YnVudHUgb3IgZmVkb3JhIG1pZ2h0IHdvcmsg
YXMgd2VsbC4KVm13YXJlIEZ1c2lvbiBmb3IgbWFjIGlzIHByaXR0eSBzdHJhaWdodCBmb3J3YXJk
LgovQQoKPiAxOSBtYXJzIDIwMjAga2wuIDIzOjEwIHNrcmV2IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IEkgY2FuJ3Qgc3Bl
YWsgdG8gYSBNYWMsIGJ1dCB5b3UgY2FuIGRlZmluaXRlbHkgdXNlIExpbnV4IGluIGEgdmlydHVh
bCBtYWNoaW5lIHdpdGggc3BlZWNoLiBJJ3ZlIHVzZWQgaXQgd2l0aCBWTXdhcmUsIHdoaWNoIGhh
cyBhIHByb2R1Y3QgZm9yIHRoZSBNYWMsIGFuZCB3aXRoIFFFTVUvS1ZNLiBPdGhlcnMgaGF2ZSB1
c2VkIGl0IHdpdGggVmlydHVhbCBCb3ggYXMgd2VsbC4KPiAKPiAKPiBPbiAzLzE5LzIwIDE6NTkg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+ICBIZWxsbywg
bXkgc3ViamVjdCBsaW5lIHByZXR0eSBtdWNoIGV4cGxhaW5zIHRoZSBiaWcgc2l0dWF0aW9uLiAg
V2hhdCBJ4oCZbSB3b25kZXJpbmcgaXMgIHdpbGwgRmVkb3JhIHdvcmsgYmV0dGVyIHRoYW4gVWJ1
bnR1PyAgVGhlIG90aGVyIHRoaW5nIHRoYXQgSSBhcHBhcmVudGx5IGEgYmFuayBtdXN0IGNvbnNp
ZGVyLCAgd2lsbCBhbnkgb2YgdGhpcyB3b3JrIHdvdWxkIHNwZWVjaCBpbiBhIHZpcnR1YWwgbWFj
aGluZSBlbnZpcm9ubWVudD8gIEFueSB0aG91Z2h0cyBmcm9tIGFueW9uZT8KPj4gCj4+IFNpbmNl
cmVseSBNYXVyaWNlIE1pbmVzLgo+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+IAo+IC0tIAo+IENocmlzdG9waGVyIChDSikKPiBDaGFsdGFpbiBh
dCBHbWFpbAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

