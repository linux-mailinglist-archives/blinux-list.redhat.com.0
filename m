Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E733851180D
	for <lists+blinux-list@lfdr.de>; Wed, 27 Apr 2022 14:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651063878;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ux2hquvY5CqlOOwXwK39l4dYgt83pl2UHhhkuw+fNCg=;
	b=Gfbru8A2M/mYSndI6oMYGjM7MbDuzgrDV2kWnmtUCyDpWUpOGSXjvjufktbQTTo/ssQYyC
	DrbgwNHesld8gO9CJtRvcwe4fZTDuQjKSEkkghvp4MZVpaeZp7mIrhHdbOesZVVHOvLmX+
	srP6SrjCBkQ4VjaatNb35cVml0Q+EVQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627-Tt6yq4hKP9qWgsRrWKHZBA-1; Wed, 27 Apr 2022 08:51:16 -0400
X-MC-Unique: Tt6yq4hKP9qWgsRrWKHZBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5ED391884986;
	Wed, 27 Apr 2022 12:51:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2456714A5061;
	Wed, 27 Apr 2022 12:51:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7C2DF1947049;
	Wed, 27 Apr 2022 12:51:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 27 Apr 2022 14:38:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: BackSpace Beep in Debian Testing?
To: blinux-list@redhat.com
References: <mailman.10438.1650760093.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.10438.1650760093.111207.blinux-list@redhat.com>
Message-ID: <mailman.11441.1651063865.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QW0gMjQuMDQuMjIgdW0gMDI6Mjcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uOgo+IEhpIEFsbDogSSBoYXZlIGEgbmV3ZXIgbGFwdG9wLiBBbiBvbmx5IHdheSBvZiBo
YXZpbmcgY29uc2lzdGFudCBzb3VuZCAKPiBpcyBieSBydW5uaW5nIERlYmlhbiBUZXN0aW5nIGlu
c3RlYWQgb2YgU2lkIHdoZXJlIEkgaGFkIGxpdHRsZSBvciBubyAKPiBzb3VuZC4gSG93ZXZlciwg
SSBoYXZlIG5vIGJhY2tzcGFjZSBvciB0YWItY29tcGxldGlvbiBiZWVwIGluIGVpdGhlciAKPiB0
Y3NoIG9yIGJhc2guIEkgaW5zdGFsbGVkIGJlZXAuIFN1cHBvc2VkbHkgdGhlcmUgaXMgYSB3YXkg
b2YgCj4gaW5zdGFsbGluZyAicGNzcGtyIiBidXQgSSBjYW5ub3QgZmluZCBpdC4gQ2FuIGFueTEg
cGxlYXNlIGluZm9ybSBhYm91dCAKPiBob3cgdG8gZW5hYmxlIGJlZXAgaW4gY29uc29sZT8gSW4g
c2VhcmNoaW5nLCB0aGVyZSBhcmUgcmVmZXJlbmNlcyB0byBhIAo+IGJlbGwgd2hpY2ggaXMgbm93
IGRpc2FibGVkLCBidXQgaXMgZm91bmQgaW4gYWNjZXNzaWJpbGl0eT8gSWYgdGhpcyBpcyAKPiBh
Y2N1cmF0ZSwgcGxlYXNlIGluZm9ybSB3aGF0IEkgZG8gbmV4dD8gVHlwaW5nIGEgY29udHJvbGwr
ZyBkb2VzIAo+IG5vdGhpbmcuIFRoYW5rcyBzbyBtdWNoIGluIGFkdmFuY2UKCgpJIGhhdmUgYSBu
ZXcgRGVsbCBMYXRpdHVkZSA1NDIxIGxhcHRvcCBhbmQgdGhlcmUgY29uc29sZSBiZWVwIGlzIGFs
c28gCm5vdCB3b3JraW5nLiBBbGwgSSB0cmllZCBkaWQgbm90IHdvcmsgYW5kIEkgZ2F2ZSB1cCwg
bm8gY2hhbmNlIHRvIGdldCAKY29uc29sZSBiZWVwIGJhY2sgOi0oLiBTdHJhbmdlbHkgdGhlIGdy
dWIyIGJvb3Rsb2FkZXIgaXMgYmVlcGluZywgc28gCnRoZXJlIG11c3QgYmUgYSBwYyBzcGVha2Vy
IGluIHRoZSBsYXB0b3AuIEFsc28gdGhlIHBjc3BrciBrZXJuZWwgbW9kdWxlIAppcyBsb2FkZWQu
IEJ1dCBJIGhhdmUgbm90IGZvdW5kIGFueXRoaW5nIHRvIGFjdGl2YXRlIHRoZSBiZWVwIGluIGEg
CnJ1bm5pbmcgc3lzdGVtLCBubyB2b2x1bWUgY29udHJvbCwgZS5nLiwgbWF5YmUgaXQgaXMgYW5v
dGhlciBwcm9ibGVtIAp3aXRoIHB1bHNlYXVkaW8sIEkgZG9uJ3Qga25vdy4KCgpDaGVlcnMsCgoK
IMKgIFNjaG9lcHAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

