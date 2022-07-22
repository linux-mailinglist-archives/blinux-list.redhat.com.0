Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE057E621
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jul 2022 19:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658512726;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=npLgtueM5NIauhB/l0OoERfVbaUHsTMOGRwYEAX4K8o=;
	b=gXKCi341QzsEGrRfdnx6o5jgwE348yC+0V+mfZe0196oecjp6+AseMn4gW+aMcwzBOkfH/
	IosfZTaxCmO2oDtY1DLNa+THlm5jk8t8hXtfhJLCSmsWijgrmJgww/UW/NAIt0l9eSD5wr
	fh0UC0xsFBiiHqLbtEEoP7MGmZjxULY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-M9TVCoj0NSma94r7ZK8A5A-1; Fri, 22 Jul 2022 13:58:43 -0400
X-MC-Unique: M9TVCoj0NSma94r7ZK8A5A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3B86395AFE1;
	Fri, 22 Jul 2022 17:58:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D13891121314;
	Fri, 22 Jul 2022 17:58:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 493831947057;
	Fri, 22 Jul 2022 17:58:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 22 Jul 2022 19:58:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [slint] Re: The Register: Tavis Ormandy ports WordPerfect for
 UNIX to Linux (fwd)
To: blinux-list@redhat.com
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
 <mailman.36108.1658511328.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.36108.1658511328.111208.blinux-list@redhat.com>
Message-ID: <mailman.35873.1658512716.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8KRGlkaWVyCgoKTGUgMjIvMDcvMjAyMiDDoCAxOTozNSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFRoYW5rcyBhbG90IERpZGllci4gSXMgdGhlaXIg
YW4gZWFzeSB3YXkgb2YgY29udmVydGluZyBhbiBpMzg2IHRvIGFuIGFtYjY0PyBkcGtnCj4gZGlk
bid0IGxpa2UgdGhpcyBvbmUuCj4gQ2hpbWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cg==

