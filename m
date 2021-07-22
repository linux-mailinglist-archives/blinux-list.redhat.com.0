Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7676E3D2775
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 18:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626970860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=plxYyOABSAKpqm1JqSgq1hodjg45Bp0APy0dXeqztdM=;
	b=Vae+vmqyHj8D/R7fvoRqUhANAj4NHaMkKqPgQjFG12QzPqsU3LDbQ/sJefJgFPa4p42Bqo
	7jQ88Vu0reVB4pnIrcSVilAo7uGGQUqIbWiiU/Cr9vPAMiEDwhYQZUGeY0PpHpO+PZd4nZ
	44kQg0sNwOZZh02hjfC9Gblz1Czuxkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-l0wfdAWoMWqtolzT9xYing-1; Thu, 22 Jul 2021 12:20:58 -0400
X-MC-Unique: l0wfdAWoMWqtolzT9xYing-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26EBA46632;
	Thu, 22 Jul 2021 16:20:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D86D47D51F;
	Thu, 22 Jul 2021 16:20:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B67854BB7C;
	Thu, 22 Jul 2021 16:20:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MGKGrm029459 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 12:20:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4847106265; Thu, 22 Jul 2021 16:20:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F5BA10F022
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:20:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6AB3185A79C
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:20:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-309-6eEvT8XjP_W3hBKkzSsjIQ-1; Thu, 22 Jul 2021 12:20:09 -0400
X-MC-Unique: 6eEvT8XjP_W3hBKkzSsjIQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVyN871pKz45kp
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:20:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVyN86by8zcbc; Thu, 22 Jul 2021 12:20:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVyN86K0bzcbW
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:20:08 -0400 (EDT)
Date: Thu, 22 Jul 2021 12:20:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archinstall and espeak-ng
In-Reply-To: <e78d6b25-7a86-06d3-b930-27bac68e17dd@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2107221217550.4527@panix1.panix.com>
References: <alpine.NEB.2.23.451.2107212115390.1346@panix1.panix.com>
	<20210722140602.m3jk7hjrw74gix65@alex-pc>
	<e78d6b25-7a86-06d3-b930-27bac68e17dd@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MGKGrm029459
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIERpZGllciwgdGhhdCBzaG91bGQgbWFrZSB0aGluZ3MgZWFzaWVyLgoKCk9uIFRodSwg
MjIgSnVsIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+
IExlIDIyLzA3LzIwMjEgPyAxNjowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhID9jcml0wqA6Cj4gPiBpZiB5b3UgZG9uJ3Qgd2FudCB0byB1c2UgZ3VpLCB5b3UgZG9uJ3Qg
bmVlZCBzcGVlY2gtZGlzcGF0Y2hlci4KPgo+IFVubGVzcyB5b3Ugd2FudCB0byB1c2UgdGhlIHNw
ZWVjaGQtdXAgYXMgY29uc29sZSBzY3JlZW4gcmVhZGVyLi4uCj4gQXMgc29vbiBhcyBzb21lb25l
IHdpbGwgaGF2ZSBwYWNrYWdlZCBpdCBmb3IgQXJjaCA7KQo+Cj4gTm90IGEgZGF1bnRpbmcgdGFz
azoKPiBodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvc291cmNl
L3NwZWVjaGQtdXAvU0xLQlVJTEQKPgo+IENoZWVycywKPiBEaWRpZXIKPgo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

