Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D1BC327F0AF
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 19:47:12 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601488031;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dzHWrSnChZj0VoxpTLtuFAcP04mhGhV9lNq51lGPq2Q=;
	b=YTW3u11m+rrrLV+nj1nP0hMm3wR53fhKEe3BeSd9bAxiINKUB0LEa2BMXvhZioG3Ka1OD2
	glIgaMM5WvmeZ6j1Crq1JgcAvC0kzO2uX+GJN3TIyoHfOfzmDq1Ug3eaAHgtE91GRe1GI6
	6P3/r1DUY7RLQrhOWxx9aozuosfQBDE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-429-uUEQwLv7Ntmx_Xutg2dvkg-1; Wed, 30 Sep 2020 13:47:09 -0400
X-MC-Unique: uUEQwLv7Ntmx_Xutg2dvkg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B9C3802B7C;
	Wed, 30 Sep 2020 17:47:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A33B119D7D;
	Wed, 30 Sep 2020 17:47:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC1DE183D021;
	Wed, 30 Sep 2020 17:47:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UHkxkS019273 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 13:46:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4CA02F49AC; Wed, 30 Sep 2020 17:46:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48040F49AA
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:46:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E082800CAF
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:46:57 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-481-BcVgW7vTODawrHLOPmNkkw-1; Wed, 30 Sep 2020 13:46:54 -0400
X-MC-Unique: BcVgW7vTODawrHLOPmNkkw-1
X-Halon-ID: eb540eb0-0344-11eb-bc4f-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from [192.168.50.196] (unknown [185.176.246.98])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id eb540eb0-0344-11eb-bc4f-005056917149;
	Wed, 30 Sep 2020 19:46:51 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: Console screenreaders
Date: Wed, 30 Sep 2020 19:46:50 +0200
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
Message-Id: <5020B8B5-1BFE-41FF-A496-337F64D6FE77@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08UHkxkS019273
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhClNwZWFrdXAsIEZpbnJlYXIgYW5kICBicmx0dHkuClRoYXTigJlzIHRoZSBzY3JlZW5yZWFk
ZXJzIHRoYXQgY29tZXMgdG8gbWluZC4KL0EKCj4gMzAgc2VwLiAyMDIwIGtsLiAxODo0OSBza3Jl
diBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPjoKPiAKPiBTby4uLi53aGF0J3MgdGhlIGNvbnNlbnN1cyBvbiBjb25zb2xlIHNjcmVlbnJh
ZGVycz8gSSd2ZSBhIGZldyB0aGluZ3MgSSB3YW50IHRvIGRvIGluIGEgVFRZLCBzbyB3aGF0J3Mg
dGhlIGdlbmVyYWwgcmVjb21tZW5kZWQgVFRZIHNjcmVlbnJlYWRlciwgb3IgY29uc29sZSBvbmU/
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

