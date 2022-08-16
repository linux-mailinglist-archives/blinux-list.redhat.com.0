Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E76DF595B08
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 13:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660651190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DRVWN5BBq7DvjB189cP5JHJl/lvPB4jWd1A3/WX8bOo=;
	b=VLTyTXqGrfUMkwWZ5mWNG4Q14SWp3uxj93n8YJ1F2S8J0uft9AMXzJ2NJZD6xMwkMa1OF7
	atABP1zD6sROHXk1CgOFmlwwjgOI8YvdFEMVBFr2RGUBH0B1Z9wHcbNYgF8IsYYvAWfpSZ
	CWjKfhj2jWtWIWtUSh7bcwZqJvPyTwE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-513-mxNVl4wzPiK4QDbLYkISZw-1; Tue, 16 Aug 2022 07:59:46 -0400
X-MC-Unique: mxNVl4wzPiK4QDbLYkISZw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4410299E770;
	Tue, 16 Aug 2022 11:59:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 76113C15BA6;
	Tue, 16 Aug 2022 11:59:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E903C1940356;
	Tue, 16 Aug 2022 11:59:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 07:59:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: Impossible to know sender info
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
 <mailman.750.1660608876.10499.blinux-list@redhat.com>
 <mailman.792.1660609999.10506.blinux-list@redhat.com>
In-Reply-To: <mailman.792.1660609999.10506.blinux-list@redhat.com>
Message-ID: <mailman.848.1660651179.10499.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCdzIGEgcG9pbnQuwqAgSSB0aGluayBJJ20gdGhlIG9ubHkgQWwgaGVyZSBhdCB0aGUgbW9t
ZW50LCBidXQgdGhhdCAKd2FzIG5ldmVyIG15IHRoaW5raW5nLsKgIEkgYWx3YXlzIHNpZ24gbXkg
Zmlyc3QgbmFtZSB0byBtZXNzYWdlcywgYnV0IApleGNlcHQgZm9yIGhlcmUsIHRob3NlIG1lc3Nh
Z2Ugc2hvdWxkIGluY2x1ZGUgbXkgbmFtZSBpbiB0aGUgImZyb20iIApmaWVsZC7CoCBJIHRoaW5r
IEt5bGUsIFNhbXVlbCwgYW5kIEthcmVuLCBhbW9uZyBvdGhlcnMsIGRvIHRoZSBzYW1lIApoZXJl
LsKgIEFzIHdpdGggcGFwZXIgbGV0dGVycyBvZiB0aGUgb2xkIGRheXMsIEkgdGVuZCB0byB1c2Ug
bXkgZnVsbCBuYW1lIAp3aGVuIEkgbmVlZCB0byBiZSBtb3JlIGZvcm1hbCwgb3Igd2hlbiB3cml0
aW5nIHRvIGEgc3RyYW5nZXIgYWJvdXQgCnNvbWV0aGluZy4KCgpBbCBTdGVuLUNsYW50b24KCgpP
biA4LzE1LzIyIDIwOjMzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEp1c3QgaW4gdGhpcyB0aHJlYWQsIEkndmUgcmVjZWl2ZWQgbWVzc2FnZXMgd2l0aCBzaWdu
YXR1cmVzIHN1Y2ggYXMgIkFsIiwgIkpvZWwgUm90aCIsICJKb8W+ZWYiLCAiU2FtdWVsIiwgYW5k
ICJUaW0iLiAgQWx0aG91Z2ggSSBhcHByZWNpYXRlIHRoZSBmYWN0IHRoYXQgdGhlIG1lc3NhZ2Vz
IGFyZSBzaWduZWQsIEknZCBsaWtlIHRvIHBvaW50IG91dCB0aGF0IGZpcnN0IG5hbWVzIGFyZSBo
YXJkbHkgdW5pcXVlLiAgU28sIG9uZSBjb3VsZCBlYXNpbHkgZ2V0IGNvbmZ1c2VkIGFzIHRvIF93
aGljaF8gIkFsIiB3YXMgc2VuZGluZyB0aGUgbWVzc2FnZS4gIFNvLCBJIGFsd2F5cyB0cnkgdG8g
aW5jbHVkZSBteSBsYXN0IG5hbWUsIGFzIHdlbGwuCj4KPiAtIFJpY2ggTW9yaW4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

