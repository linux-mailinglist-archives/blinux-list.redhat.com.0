Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77847530562
	for <lists+blinux-list@lfdr.de>; Sun, 22 May 2022 21:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653246820;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7QQkDyRiP7I86xYRPWAa2xbZyJpFUSkmc2i3VCvJC7M=;
	b=JThSlZOr9lAOKUFHXwqR3TtFNf5q/z1kWs23ueXWzSrDIxjHG5m6K+s2WDs+zfOkBeQiLs
	AiOb+UsLECztVNw69973v46VyvQczq4sQ38MnmwhctdisWv9KRuD9gpgLNl/EcbqmNpgnF
	G/oaQJ8re2U0ItLkcP3xOuZ6Wp+lhsw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-Rp1QTn-CNDaK1y5lqZXY5g-1; Sun, 22 May 2022 15:13:37 -0400
X-MC-Unique: Rp1QTn-CNDaK1y5lqZXY5g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9AD03C02B62;
	Sun, 22 May 2022 19:13:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 651BA1410DD7;
	Sun, 22 May 2022 19:13:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CFA81194705B;
	Sun, 22 May 2022 19:13:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 May 2022 21:13:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Installing the sam package on Ubuntu?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.17535.1653243154.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.17535.1653243154.111206.blinux-list@redhat.com>
Message-ID: <mailman.17364.1653246811.111208.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aGVyZTogaHR0cDovL3d3dy5zYW5vdGUuY28uemEvZG93bmxvYWRzL3NhbS1sYXRlc3QudGFyLmJ6
MgpOb3Qgc3VyZSB0aGlzIHZlcnNpb24gaGFzIGJlZW4gcG9ydGVkIHRvIFB5dGhvbjMKClVubGVz
cyBoZSBkaWQgcmVjZW50bHksIFdpbGxlbSBoYXMgbm90IHNldCB1cCBhIGdpdCByZXBvc2l0b3J5
LgoKQUZBSUsgaXQgaGFzIG5vdCBiZWVuIHBhY2thZ2VkIGJ5IG90aGVyIGRpc3RyaWJ1dGlvbnMg
dGhhbiBTbGludC4KCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKCgpMZSAyMi8wNS8y
MDIyIMOgIDIwOjEyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
wqA6Cj4gSGkgYWxsLAo+IAo+IEkgYW0gbG9va2luZyBmb3IgdGhlIHNhbSBwYWNrYWdlIHdyaXR0
ZW4gYnkgV2lsbGVtIHZhbiBkZXIgV2FsdCAoU3BlbGxpbmcpLgo+IAo+IEkgdHJpZWQgdGhyZXcg
JyNzdWRvIGFwdC1nZXQgaW5zdGFsbCBzYW0nIGJ1dCBubyBsdWNrIGF0IGFsbC4KPiAKPiBJIGtu
b3cgdGhlIHBhY2thZ2UgY29tZXMgYnkgZGVmYXVsdCBvbiBTbGludCwgYnV0IGV2ZW4gZHIuIEdv
b2dsZSBjYW5ub3QgaGVscCBtZQo+IGhlcmUuCj4gCj4gSWYgeW91IGtub3cgd2hlcmUgdG8gZmlu
ZCBpdCwgcGxlYXNlIGxldCBtZSBrbm93Lgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo=

