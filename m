Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id F235F255381
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 06:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598588275;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PphYCUn6JRIxbaacDlPiV/8gPTcb6uOdqFlbL+lyqhY=;
	b=Gi4+Ssq7Op4VZcu88TmCJdPjwVucP5giO93c+mA5Ozgg5ozm2khF7GSuxZQyz/7lyME3JW
	8Ije10mtDxL9VzZRR57FaM/uGqTshjJU6pEoTROZ9Xf59xHUDbxCmFGgFfsPXq69sh1UKc
	5sxg87GrZNklKTXEIYGT5h/sx5ZDqqE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-MNe3ml9PPWeabJvT3iuqbQ-1; Fri, 28 Aug 2020 00:17:53 -0400
X-MC-Unique: MNe3ml9PPWeabJvT3iuqbQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51BFC1DDE3;
	Fri, 28 Aug 2020 04:17:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27CC95C1C2;
	Fri, 28 Aug 2020 04:17:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0806CA21F2;
	Fri, 28 Aug 2020 04:17:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07S4G7mt022618 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Aug 2020 00:16:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5568C10073B9; Fri, 28 Aug 2020 04:16:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5142911753E5
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 04:16:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5040E185A78B
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 04:16:05 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-559-kA4L6lZdNq6NVoVLfLs9fw-1;
	Fri, 28 Aug 2020 00:16:02 -0400
X-MC-Unique: kA4L6lZdNq6NVoVLfLs9fw-1
Received: from ici.slint.fr (static-176-175-66-67.ftth.abo.bbox.fr
	[176.175.66.67])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B69FBBE7E3
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 05:15:21 +0200 (CEST)
Subject: Re: braille display question
To: blinux-list@redhat.com
References: <159857735399.6.4830934744852641473.711949@slmail.me>
Message-ID: <e64dbe53-f39e-5166-cc7d-162b34b4aff1@slint.fr>
Date: Fri, 28 Aug 2020 06:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <159857735399.6.4830934744852641473.711949@slmail.me>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07S4G7mt022618
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Content-Language: en-US

SGksCgp0byBnZXQgYW4gYW5zd2VyIGZyb20gU2xpbnQgdXNlcnMgSSBzdWdnZXN0IHRvIHBvc3Qg
b24gdGhlIFNsaW50IG1haWxpbmcgbGlzdC4KCj5Gcm9tIHRoaXMgcGFnZTogaHR0cDovL21pZWxr
ZS5jYy9icmx0dHkvZGV0YWlscy5odG1sCnRoZSBQYWMgTWF0ZSAyMC80MCBmcm9tIEZyZWVkb20g
U2NpYW50aWZpYyBkbyBzZWVtIHRvIGJlIHN1cHBvcnRlZCB0aGVuIHRoaXMgc2hvdWxkIGJlIHRo
ZSBjYXNlIGZvciBTbGludCBhcyBpdCBpbmNsdWRlcyB0aGUgbW9zdCByZWNlbnQgc3RhYmxlIHJl
bGVhc2UsIGJybHR0eSA2LjEuCgpUbyBtYWtlIHN1cmUgYSBkZXZpY2UgaXMgc3VwcG9ydGVkIGJ5
IGJybHR0eSBpbiBnZW5lcmFsIGl0J3MgYmVzdCB0byBhc2sgb24gdGhlIGJybHR0eSBsaXN0LgoK
VGhlcmUgaXMgYSBCcmFpbGxlIFZveWFnZXIgc3VwcG9ydGVkIGluIHRoZSBsaXN0LiBPcHRlbGVj
IGlzIG5vdCBtZW50aW9uZWQsIGJ1dCB0aGUgZGV2aWNlIHNlZW0gdG8gYmUgdGhlIHNhbWUgdW5k
ZXIgdGhlIGJyYW5kcyBUaWVtYW4gb3IgT3B0ZWxlYz8KCkNoZWVycywKCkRpZGllcgoKCgpMZSAy
OC8wOC8yMDIwIMOgIDAzOjE1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gSGkgZXZlcnlvbmUsCj4gSSBoYXZlIGEgcXVpY2sgcXVlc3Rpb24gYWJvdXQg
YnJhaWxsZSBkaXNwbGF5cy4KPiBIYXZlIGFueSBvZiB5b3UgdXNlZCB0aGUgUGFjbWF0ZSA0MCBj
ZWxsIGRpc3BsYXkgd2l0aCBMaW51eD8gRXNwZWNpYWxseSB0aG9zZSBvZiB5b3Ugd2hvIHVzZSBT
bGludCBhcyBJIGFtIHJlYWxseSBpbnRlcmVzdGVkIGluIHRoYXQgRGlzdHJvLgo+IEkgd2FzIHRo
aW5raW5nIG9mIHVzaW5nIGFuIE9wdGVsZWMgQnJhaWxsZSBWb3lhZ2VyIDQwIGJ1dCBJIGRvbid0
IHNlZSBpdCBzdXBwb3J0ZWQgb24gdGhlIEJSTFRUWSBsaXN0Lgo+IFBhY21hdGUgNDAgZG9lcyBh
Y3R1YWxseSBzZWVtIHRvIGJlIHN1cHBvcnRlZCBvbiB0aGUgQlJMVFRZIGxpc3Qgc28gSSdtIHRo
aW5raW5nIG9mIGdldHRpbmcgdGhhdCBvbmUsIGFuZCBqdXN0IHdhbnRlZCB0byBrbm93IGlmIGFu
eSBvZiB5b3UgdXNlIFBhY21hdGUgNDAsIHBhcnRpY3VsYXJseSB3aXRoIFNsaW50Pwo+IFRoYW5r
cywKPiBTTAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

