Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D25F8DD6
	for <lists+blinux-list@lfdr.de>; Sun,  9 Oct 2022 22:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665346908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sHV8s+H7Y1MCSjfzznH0UX1LYgF3mSY45i77sYbPcqE=;
	b=hB1yOyVPYSJrgnNtmxjiyyVO6ODQz60G9lO4as/BjTt550YL4jxJg7uW08yz/6BvKU4dLN
	EfiywWTs7GQSNtZ3njdJx9fKQCmftCoouVJsZitKfig12p93LrPjnAXfocpIXu2LQseuro
	h0U+SjYG745wzCxGlq98WDlIlrDJJyI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-215-j-pAIKjTPUGEYyEpplnrJQ-1; Sun, 09 Oct 2022 16:21:46 -0400
X-MC-Unique: j-pAIKjTPUGEYyEpplnrJQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AD0F811E87;
	Sun,  9 Oct 2022 20:21:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 96B9640C95A2;
	Sun,  9 Oct 2022 20:21:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1C73019465A3;
	Sun,  9 Oct 2022 20:21:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 9 Oct 2022 22:21:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Is there a Fedora Espeakup Package?
To: blinux-list@redhat.com
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6276.1665342112.6083.blinux-list@redhat.com>
 <mailman.6652.1665345960.6080.blinux-list@redhat.com>
In-Reply-To: <mailman.6652.1665345960.6080.blinux-list@redhat.com>
Message-ID: <mailman.6428.1665346902.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjaGVja2VkLCBKdWRlOiBubyB0ZHNyLCBubyBmZW5yaXIuCgpJICB3ZXJlIGJsaW5kLCBJIHdv
dWxkIGp1c3QgdXNlIGEgZGlzdHJpYnV0aW9uIGFjY2Vzc2libGUgZnJvbSB0aGUgY29uc29sZS4K
CkNoZWVycywKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRpaWRlcmF0c2ludGRvdGZyCgpMZSAw
OS8xMC8yMDIyIMOgIDIyOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gV2h5IG5vdCBsb29rIGZvciBlc3BlYWstbmcgdG9vLiAgSWYgdGhhdCBmYWls
cywgeW91IGNvdWxkIHByb2JhYmx5IHNlYXJjaAo+IGZvciB0ZHNyIGFuZCBhbHNvIGZlbnJpci4K
PiBJZiBmZW5yaXIgaXNuJ3QgdGhlcmUsIHlvdSBtYXkgYmUgYWJsZSB0byBpbnN0YWxsIHRoYXQg
d2l0aCBwaXAgb25jZSBwaXAKPiBpcyBpbnN0YWxsZWQuCj4gCj4gCj4gCj4gSnVkZSA8amRhc2hp
ZWwgYXQgcGFuaXggZG90IGNvbT4KPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBp
biBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBs
ZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDAp
Cj4gCj4gLgo+IAo+IE9uIFN1biwgOSBPY3QgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiAKPj4gVGhhbmtzIERpZGllciBmb3IgdGhlIGNvbmZpcm1hdGlv
bi4KPj4KPj4KPj4gVGlnaHQuIFRoaXMgbWFrZXMgbWUga25vY2sgaXQgb2ZmIGZyb20gYWNjZXNz
aWJsZSBkaXN0cm9zIG9uIHRoZSBjb25zb2xlLgo+Pgo+Pgo+PiBDaGVlcnMsCj4+Cj4+Cj4+Cj4+
Cj4+IHQKPj4KPj4gT24gMTAvOS8yMiAyMDo1MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IEkgaGFkIGEgbG9vayB0aHJvdWdoIHRoZSBG
ZWRvcmEgcGFja2FnZSBzZWFyY2ggd2VicGFnZToKPj4+IGh0dHBzOi8vcGFja2FnZXMuZmVkb3Jh
cHJvamVjdC5vcmcvCj4+PiBhbmQgZm91bmQgbm90aGluZy4KPj4+IE1vcmVvdmVyLCBubyBjb25z
b2xlIHNjcmVlbiByZWFkZXIgYXQgYWxsIGluIEZlZG9yYS4KPj4+Cj4+PiBEaWRpZXIKPj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+Pgo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

