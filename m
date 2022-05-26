Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA23535307
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 19:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653587975;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XHIP1yJt6hj+Bf8I+UfcDEe8/uNj3ElCMqvI6CzObXA=;
	b=RxK5mDcHEcNA+1EsD+mLPsM8T+JoOWNh0zxCacOsVY4xHxv6wKGtwKuyGQqr3WMcwi3mQD
	TXR0Y6qDewCIjFx9RN5x+TwmTFGu2kBo1rPltltTHsixARQ11MpbpjtTu1Y/0yMVizcwzM
	jZQBROyUV4TxGYRzV2uu3WTv0Uebheg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-137-6x3ULI_jMZqorOgPWyvcfg-1; Thu, 26 May 2022 13:59:33 -0400
X-MC-Unique: 6x3ULI_jMZqorOgPWyvcfg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BF39801228;
	Thu, 26 May 2022 17:59:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7CFDB2166B26;
	Thu, 26 May 2022 17:59:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A637E193212D;
	Thu, 26 May 2022 17:59:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 19:58:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: alpine and Gmail future changes?
To: blinux-list@redhat.com
References: <4e42aba7-4da4-8e33-0968-b7492da81094@gmail.com>
 <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
 <mailman.18876.1653584281.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.18876.1653584281.111206.blinux-list@redhat.com>
Message-ID: <mailman.18894.1653587968.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLAoKUGxlYXNlIHRyeSB0aGUgaW5zdHJ1Y3Rpb25zIHRoZXJlOgpodHRwczovL2FscGlu
ZS54MTBob3N0LmNvbS9hbHBpbmUvYWxwaW5lLWluZm8vbWlzYy94b2F1dGgyLmh0bWwjU2V0dGlu
Z1VwR21haWwKdGhlbiByZXBvcnQgaGVyZS4KVGhpcyBpcyBzdXBwb3J0ZWQgc2luY2UgQWxwaW5l
IHZlcnNpb24gMi4yMgoKQWxzbywgdG8ga25vdyBob3ctdG8gc3Vic2NyaWJlIHRvIGhlIEFscGlu
ZSBEaXNjdXNzaW9uIGZvcnVtIChhY3R1YWxseSBhIG1haWxpbmcKbGlzdCk6CkFscGluZSBEaXNj
dXNzaW9uIEZvcnVtCgpDaGVlcnMKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFpbnRh
aW5lcgoKCkxlIDI2LzA1LzIwMjIgw6AgMTg6NTcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBmb2xrcywKPiBJIGFtwqAgYm90aCBzdGFydGluZyB0
aGlzIHRocmVhZCwgYW5kIGluY2x1ZGluZyB0aGUgbGlzdCB3aGVyZSB0aGUgcXVlc3Rpb24gaXMK
PiByYXRoZXIgaW1wb3J0YW50Lgo+IE15IGdvYWwgYmVpbmcgaGVscGluZyB0aG9zZSBibGluZCBM
aW51eCB1c2VycyB3aG8gcmVseSBvbiBhbHBpbmUgdG8gbWFuYWdlIHRoZWlyCj4gZ21haWwgYWNj
b3VudCwgYW5kIGxldHRpbmcgdGhlbSBrbm93IGhvdyB0byByZWFjaCB0aGUgYWxwaW5lIGxpc3Qg
dG9vLgo+IEkgcmVjYWxsPyB0aGVyZSBtaWdodD8gYmUgYSBzb2x1dGlvbiBhbHJlYWR5IGluIHBs
YWNlLCBidXQganVzdCBpbiBjYXNlIGNhbgo+IHNvbWVvbmUgYXJ0aWN1bGF0ZSBob3cgdG8ga2Vl
cCBhbHBpbmUgd29ya2luZyB3aXRoIGdtYWlsIGluIGxpZ2h0IG9mIGFudGljaXBhdGVkCj4gY2hh
bmdlcyBieSBnb29nbGU/Cj4gYmVzdCwKPiBrYXJlbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

