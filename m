Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C07B4DB6DC
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 18:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647450225;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qw8OmwslUb1xmeltdTo+CUSB9VEMOsIUkLG7Vze+55Q=;
	b=OKj1PRsLA7OfBiMAALjLAlui9GV2F5a6ihaBnJUr6k6cvmcnctzx1GtW1x1jstYe3jkn7A
	G/VT4VhyJxfdQ+5MzJUv3USgTEMLp31SXTqraBp/Hj1rf9PHT7jEqTwCSiF8DirdW0qAzC
	YK8yHvLYXaTjMwET6ch+HJS/9PUJFFk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-364-2MlpvH8gNUen_bE0o9xxlg-1; Wed, 16 Mar 2022 13:03:31 -0400
X-MC-Unique: 2MlpvH8gNUen_bE0o9xxlg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76A301066561;
	Wed, 16 Mar 2022 17:03:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 22FA840E80E2;
	Wed, 16 Mar 2022 17:03:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A80D11940356;
	Wed, 16 Mar 2022 17:03:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 13:03:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: getting started with Liblouis
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.2147.1647415850.111205.blinux-list@redhat.com>
Message-ID: <mailman.2542.1647450204.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzLCBKZWZmLsKgIEknbSB1c2luZyBTbGludC7CoCBJIGRpZG4ndCBzZWUgZWl0aGVyIG9m
IHRoZSBwcm9ncmFtcyB5b3UgCm1lbnRpb24uwqAgTWF5YmUgdGhlcmUncyBzb21ldGhpbmcgZWxz
ZS4KCgpCZXN0IQoKQWwKCgpPbiAzLzE2LzIyIDAzOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IE9uIFR1ZSwgMTUgTWFyIDIwMjIsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSSdtIHRyeWluZyB0byBmaW5kIG91dCBo
b3cgdG8gdXNlIExpYmxvdWlzIHRvIHRyYW5zbGF0ZSBkb2N1bWVudHMgCj4+IGZyb20gcHJpbnQg
dG8gQnJhaWxsZS7CoCBTcGVjaWZpY2FsbHksIG15IHdpZmUgd291bGQgbGlrZSBtZSB0byBmaW5k
IAo+PiBvdXQgaG93IHRvIHRyYW5zbGF0ZSBSdXNzaWFuIGRvY3VtZW50cyBpbnRvIEJyYWlsbGUg
b25lcy7CoCBBdCB0aGUgCj4+IG1vbWVudCwgdGhvdWdoLCBJIGhhdmVuJ3QgeWV0IGxlYXJuZWQg
YSBjb21tYW5kIHRvIHJ1biBmb3IgCj4+IHRyYW5zbGF0aW5nIGFueXRoaW5nOsKgIHRoZSBMaWJs
b3VpcyBkb2N1bWVudGF0aW9uIGxvb2tzIHRvIGhhdmUgYSBsb3QgCj4+IG9mIHVzZWZ1bCBtYXRl
cmlhbCwgYnV0IEkgY291bGQgZmluZCBub3RoaW5nIGFib3V0IHJ1bm5pbmcgYSBjb21tYW5kLCAK
Pj4gd2l0aCB3aGF0ZXZlciBhcmd1bWVudHMgYW5kIG9wdGlvbnMgSSBtaWdodCBuZWVkLCB0byBj
cmVhdGUgYSBCcmFpbGxlIAo+PiBvdXRwdXQgZmlsZSBmcm9tIGEgcHJpbnQgaW5wdXQgZmlsZS4K
Pgo+IEluIERlYmlhbiwgSSBzZWUgbGlibG91aXMtYmluIGFuZCBsaWJsb3Vpc3htbC1iaW4gcGFj
a2FnZXMgd2hpY2ggY2FuIAo+IHByb2JhYmx5IGhlbHAgeW91LsKgIE90aGVyIGRpc3RyaWJ1dGlv
bnMgcHJvYmFibHkgaGF2ZSBzb21ldGhpbmcgc2ltaWxhci4KPgo+PiBJIHJlYWQgYWJvdXQgYSBj
b21tYW5kIGNhbGxlZCBmaWxlMmJybCwgYXBwYXJlbnRseSBwYXJ0IG9mIGEgcHJvZ3JhbSAKPj4g
Y2FsbGVkIExpYmxvdWlzdXRkbWwsIGJ1dCB0aGF0IHByb2dyYW0ncyBub3Qgb24gbXkgc3lzdGVt
IGV2ZW4gdGhvdWdoIAo+PiBMaWJsb3VpcyBpdHNlbGYgaXMuCj4KPiBBcHBhcmVudGx5LCBVVERN
TCBpcyB1bmlmaWVkIHRhY3RpbGUgZG9jdW1lbnQgbWFya3VwIGxhbmd1YWdlLCB3aGNpaCAKPiBp
cyBwcmVzdW1hYmx5IHVzZWQgZm9yIG1hcHMsIGRpYWdyYW1zLCBldGMuwqAgVGhpcyBpcyBwcm9i
YWJseSBub3Qgd2hhdCAKPiB5b3UgbmVlZC4KPgo+IEhUSCwKPiBHZW9mZi4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

