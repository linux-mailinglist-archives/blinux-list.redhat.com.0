Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A8CA13CBAE6
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 19:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626455005;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TE1DN9nem8C2IU1SPDfCQsNHg83aE3kS4mxw9MIEP8g=;
	b=MUJlRTgTG7mVETdTJAN32FE1JxrNOUn23Oa0MWNJRtoKAMJA32TFObzehr0kaOGwyCPv+Z
	9MT0spT6ql6hCSq6z8preZWUDqZU504sLhxEYLT3TzTQTIp2mF1s0FYJZ0xT4ge5nqPaf+
	ICbo1Wv/qwSF45Z3nSoCe1nBecxVs5Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-FvP5_r_LN8OOH5lthAMyTw-1; Fri, 16 Jul 2021 13:03:23 -0400
X-MC-Unique: FvP5_r_LN8OOH5lthAMyTw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94734804141;
	Fri, 16 Jul 2021 17:03:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0950110074F8;
	Fri, 16 Jul 2021 17:03:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CB344EA2F;
	Fri, 16 Jul 2021 17:03:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GH34Dv009400 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 13:03:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B467020C15B6; Fri, 16 Jul 2021 17:03:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF9E220C15B4
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 17:03:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9AFA18A01A9
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 17:03:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-286-0H0QmuZ7PJ2gn1-MJpt-mQ-1;
	Fri, 16 Jul 2021 13:02:59 -0400
X-MC-Unique: 0H0QmuZ7PJ2gn1-MJpt-mQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 40892A009B
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:02:26 +0200 (CEST)
Subject: Re: audio cutting and exporting
To: blinux-list@redhat.com
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
Message-ID: <a4ae7732-5978-ea5e-bc8e-6e5e6da3537a@slint.fr>
Date: Fri, 16 Jul 2021 19:02:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16GH34Dv009400
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgppbiBhZGRpdGlvbiB0byB3aGF0IEt5bGUgbWVudGlvbmVkIHRoZXJlIGlzIGFsc28gZGFl
IChEaWdpdGFsIEF1ZGlvIEVkaXRvciksCm11Y2ggc2ltcGxlciBpbmRlZWQgYXMgaXQncyBhIFB5
dGhvbiBzY3JpcHQgdGhhdCBpdHMgYXV0aG9yIFdpbGxlbSB2YW4gCmRlciBXYWx0Cm1hZGUgcmVj
ZW50bHkgY29tcGF0aWJsZSB3aXRoIFB5dGhvbjMuCgpOb3Qgc291cmNlIFVSTCBidXQgaGVyZSBp
cyB0aGUgc291cmNlIGRpcmVjdG9yeSBpbiB0aGUgU2xpbnQgcmVwbyAodGhlIG5ldwp2ZXJzaW9u
IGlzIG5ld2RhZSwgbm90IGRhZSBpbiB0aGUgYXJjaGl2ZSk6CgpodHRwOi8vc2xhY2t3YXJlLnVr
L3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvc291cmNlL2RhZS8KCllvdSBjb3VsZCBhbHNvIGNv
bnRhY3QgdGhlIGF1dGhvcjoKd3Zkd2FsdGF0Y3Npci5jby56YQpyZXBsYWNlIGF0IGJ5IHRoZSBh
dCBzaWduLgoKQWxkbyB0aGlzIG5lZWRzIGEgUHl0aG9uMyBweWVjYSBtb2R1bGUgc2hpcHBlZCBp
biBhIHJlY2VudCBlY2Fzb3VuZCBwYWNrYWdlCgpDaGVlcnMsCkRpZGllcgoKLkxlIDE2LzA3LzIw
MjEgw6AgMTY6MjcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPiBIaSwKPiAKPiBJIGFtIGxvb2tpbmcgZm9yIGFjY2Vzc2libGUgYW5kIGVhc3kgdG8gdXNl
IGF1ZGlvIGFwcGxpY2F0aW9uLCB3aGljaCAKPiBhbGxvd3MgbWUgdG86Cj4gCj4gLSBzZWxlY3Qg
c291bmQgZnJvbSBwb2ludCBhIHRvIHBvaW50IGIKPiAKPiAtIGRlbGV0ZSwgbW92ZSBvciBleHBv
cnQgc2VsZWN0ZWQgc2VjdGlvbgo+IAo+IC0gZXhwb3J0IHRoZSByZXN1bHQgaW4gbXVsdGlwbGUg
Zm9ybWF0cy4KPiAKPiBJIGtub3cgYWJvdXQgQXVkYWNpdHksIGJ1dCBtYXliZSB5b3Uga25vdyBz
b21lIG1vcmUgYWNjZXNzaWJsZSBhbmQgbW9yZSAKPiBlYXN5IHRvIHVzZSBlZGl0b3IuCj4gCj4g
TXkgZW52aXJvbm1lbnQgaXMgRmVkb3JhIDM0IHdpdGggTWF0ZSBkZXNrdG9wIGFuZCB3aXRoIGFs
bCBhMTF5IAo+IHZhcmlhYmxlcyBlbmFibGVkLgo+IAo+IFRoYW5rcywKPiAKPiBQYXZlbAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

