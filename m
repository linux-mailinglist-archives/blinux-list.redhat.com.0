Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7ED27EFF0
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 19:07:33 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601485652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sl2DNi9Y4zsUYmRErDQNsNwYGd6smSP/uQ+znIlzrVY=;
	b=JeWuscrXJfsEpppdKC/cx9Vs9yri50PFfhm/XRWghB+35J00Pg/d7L1aMM28cqm0vyHXEX
	blhsSnvnMNDA2n/wxGa2HSSjsg5selxNh+klIumSBv+6GFRNUWDPW1xJavLJ2mhDRYM1HS
	n2+buOyK9FTuZ0rGJgmci7wbQ2pnyy8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-ycKgZJOrO--wB1cy8YEp7g-1; Wed, 30 Sep 2020 13:07:29 -0400
X-MC-Unique: ycKgZJOrO--wB1cy8YEp7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F33E1DE00;
	Wed, 30 Sep 2020 17:07:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 980665D9DC;
	Wed, 30 Sep 2020 17:07:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44BC7183D021;
	Wed, 30 Sep 2020 17:07:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UH7GRE014164 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 13:07:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1A8C42156A3D; Wed, 30 Sep 2020 17:07:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 161252156A3C
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:07:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 032F6804C9D
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:07:13 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-413-idgR1R5bOZS7GSqh-V3YXw-1;
	Wed, 30 Sep 2020 13:07:10 -0400
X-MC-Unique: idgR1R5bOZS7GSqh-V3YXw-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BC221BE27E
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:06:23 +0200 (CEST)
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
Message-ID: <5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
Date: Wed, 30 Sep 2020 19:07:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08UH7GRE014164
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgMzAvMDkvMjAyMCDDoCAxODo0OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IFNvLi4uLndoYXQncyB0aGUgY29uc2Vuc3VzIG9uIGNvbnNvbGUgc2Ny
ZWVucmFkZXJzPyBJJ3ZlIGEgZmV3IHRoaW5ncyBJIHdhbnQgdG8gZG8gaW4gYSBUVFksIHNvIHdo
YXQncyB0aGUgZ2VuZXJhbCByZWNvbW1lbmRlZCBUVFkgc2NyZWVucmVhZGVyLCBvciBjb25zb2xl
IG9uZT8KClRoZXJlIGlzIG5vIGNvbnNlbnN1cy4uLiBLbm93biB0byBtZSBhcmUgc3BlYWt1cC9l
c3BlYWt1cCwgc3BlZWNoZC1lbCwgZmVucmlyLCBTQkwgKGluaXRpYWxseSBmcm9tIFN1U2UpLgpB
cyBmYXIgYXMgSSBrbm93IGFsbCB3b3JrIG9uIGEgY29uc29sZSwgZmVucmlyIGFsc28gaW4gYSB0
dHkuCi0tLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKaHR0cHM6Ly9zbGludC5mcgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

