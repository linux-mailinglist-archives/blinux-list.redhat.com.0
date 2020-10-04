Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 26F10282D51
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 21:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601840383;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0Voe3937oMwkzNgsk6CpU+IT50RlTsKeCuMSeetKqGk=;
	b=EskGx6izSQZgZUD4kogFq8y5iIxPsx1WbNvRb7GGN70cTwb9OQ8G/QHdscS8qqLCdLuZd1
	r5xX3zjm5S/iPfpC6sbyq1BNcWIa4cb4ghO9urTi8jytWxJe5jLvtgo7Jwd6SsoN751RlW
	oGriRNq6iFqAo2HRGVtDPfdOdXO44vQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-DLhPKAEpNkajP_cLuWHlOw-1; Sun, 04 Oct 2020 15:39:41 -0400
X-MC-Unique: DLhPKAEpNkajP_cLuWHlOw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBE591868403;
	Sun,  4 Oct 2020 19:39:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09FCE78811;
	Sun,  4 Oct 2020 19:39:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4E8344A47;
	Sun,  4 Oct 2020 19:39:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094JYUJR015031 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 15:34:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D0DD71111439; Sun,  4 Oct 2020 19:34:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC39E1111438
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 19:34:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2696803913
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 19:34:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-132-njzVtgObMbezoUTpH69fzw-1;
	Sun, 04 Oct 2020 15:34:25 -0400
X-MC-Unique: njzVtgObMbezoUTpH69fzw-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1F157BE27E
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 20:33:38 +0200 (CEST)
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
	<e034b2f1-bfc5-d766-da46-5d14bbc587f4@slint.fr>
	<20201003131142.GC2173@rednote.net>
Message-ID: <b9ca7f9c-ae39-997f-d0bb-16a326a3e322@slint.fr>
Date: Sun, 4 Oct 2020 21:34:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201003131142.GC2173@rednote.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 094JYUJR015031
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgp0aGFua3MgSmFuaW5hLAoKYWN0dWFsbHkgSSBjb3VsZCBidWlsZCBTQkwgb24gU2xpbnQs
IGJ1dCBhcyBpdCB3b3VsZCBuZWVkIHRpbWUgdG8KbWFrZSBhIGdvb2QgcGFja2FnZSB3aXRoIHRo
ZSBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gaW5jbHVkaW5nCmluZGVlZCB0aGUga2V5IGJpbmRp
bmdzIGFuZCBhcyBJIGFscmVhZHkgc2hpcCAzIGNvbnNvbGUgc2NyZWVuCnJlYWRlcnMgaW4gU2xp
bnQgKGZlbnJpciwgZXNwZWFrdXAvc3BlYWt1cCBhbmQgc3BlZWNoZC11cCkKdGhpcyB3aWxsIGhh
dmUgdG8gd2FpdCBhZnRlciB0aGUgcmVsZWFzZSBvZiB0aGUgbmV3IFNsaW50IGluc3RhbGxlci4K
Ckhvd2V2ZXIsIHBsZWFzZSBzZW5kIG1lIHByaXZhdGVseSBNYXJjbydzIGVtYWlsIGFkZHJlc3Mu
CkkgcmVtaW5kIHlvdSB0aGF0IG1pbmUgaXMgZGlkaWVyYXRzbGludGRvdGZyLiAKCkNoZWVycywg
RGlkaWVyCgpQUyBJIGFsc28gcmVhZCBpbiB0aGUgQVVUSE9SUyBmaWxlIG9mIHNwZWVjaC1kaXNw
YXRjaGVyOgoiVGhhbmtzIHRvIE1hcmNvIFNrYW1icmFrcyBmb3IgdGhlIGxpYmFvIGF1ZGlvIG91
dHB1dCBtb2R1bGUuIgoKUFBTIFRoZXJlIGlzIHNvbWUgZG9jdWxlbnRhdGlvbiBhbHNvIGF2YWls
YWJsZSBoZXJlOgpodHRwOi8vd3d3Lm9wZW5ibGludXguZGUvZW4vaW5kZXgucGhwP3BhZ2U9c2Js
ZG9jCkkgaGF2ZSBubyBpZGVhIGlmIGl0cyB1cCB0byBkYXRlLgoKCkxlIDAzLzEwLzIwMjAgw6Ag
MTU6MTEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJ
IHdhcyBwcmVzZW50IG9uY2Ugd2hlbiB0aGUgZGV2ZWxvcGVyIG9mIFNCTCwgTWFyY28gU2thbWJy
YWtzLCBkaWQgYQo+IGRlbW8uIEhlIHNob3dlZCBob3cgU0JMIGNvdWxkIGxldCB5b3Ugd29yayB3
aXRoIE1pZG5pZ2h0IENvbW1hbmRlci4gSQo+IHdhcyBqZWFsb3VzIHRvIHRyeSBTQkwgYWZ0ZXIg
dGhhdCwgYnV0IEkgbmV2ZXIgZ290IGl0IGdvaW5nIGF0IHRoZSB0aW1lLgo+IAo+IEphbmluYQo+
IAo+IFBTOiBEaWRpZXIsIEkgaGF2ZSBhbiBlbWFpbCBhZGRyZXNzIGZvciBoaW0sIHNob3VsZCB5
b3UgbmVlZC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

