Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22287388060
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 21:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621365395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YIqNCHqubgcfdACWjbqSnUWQLvqqWzq3DfM3UADUB3w=;
	b=bemRtlxGCeIHKNuGSptdmfMm9wX7rgMFMmdzyAeZrAD5/ljrjt7DKz09VAp87gLTr+8NlK
	7Sj5KbEhTdMv6a/uBTN0f1s3UMt0hL5XFGYS96DtVDgbIy38jCcwHPMt4u8Qgvm9zuP+te
	x2XPx8H7lkEHr6dBkYPK4Zs8/9XfgsA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-aCPMUrEfOFS086WtFdMURA-1; Tue, 18 May 2021 15:16:26 -0400
X-MC-Unique: aCPMUrEfOFS086WtFdMURA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED36580ED8E;
	Tue, 18 May 2021 19:16:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8F3960CCB;
	Tue, 18 May 2021 19:16:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 143D0180102A;
	Tue, 18 May 2021 19:16:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IJG2Wg020087 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 15:16:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EBB3AFA742; Tue, 18 May 2021 19:16:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E625DFA756
	for <blinux-list@redhat.com>; Tue, 18 May 2021 19:15:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5DAA185828E
	for <blinux-list@redhat.com>; Tue, 18 May 2021 19:15:59 +0000 (UTC)
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
	[80.67.18.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-428-GbSdqSWhNde1OQsMXd3Pwg-1; Tue, 18 May 2021 15:15:32 -0400
X-MC-Unique: GbSdqSWhNde1OQsMXd3Pwg-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay06.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lj5As-0004Gn-JY
	for blinux-list@redhat.com; Tue, 18 May 2021 21:14:38 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<693e6b62-9c98-4814-07ca-6f7ce8ab7d40@gmail.com>
Message-ID: <2056fbb2-d3a5-f62e-5a4d-2f27461c403f@linux-a11y.org>
Date: Tue, 18 May 2021 21:15:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <693e6b62-9c98-4814-07ca-6f7ce8ab7d40@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aG93ZHksCgp5ZWEgbG9va2luZyBmb3J3YXJkIHRvIHNlZSB5b3UgYWxsIG9uIElSQyA6KS4KCmNo
ZWVycyBjaHJ5cwoKQW0gMTguMDUuMjEgdW0gMTk6MzQgc2NocmllYiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uOgo+IEkgbGlrZSBwaWRnaW4gbWVzc2VuZ2VyIGZvciBpcmMuwqAg
T25jZSBwaWRnaW4gaXPCoCBpbnN0YWxsZWQsIG9wZW4gaXQgCj4gYW5kIGFkZCBhbiBhY2NvdW50
LsKgIFdoZW4gYXNrZWQgZm9yIGFjY291bnQgdHlwZSwgc2VsZWN0ICdpcmMnLiBZb3UnbGwgCj4g
YmUgYXNrZWQgZm9yIHRoZSBhZGRyZXNzIG9mIGEgc2VydmVyLCBkZXBlbmRpbmcgb24gaG93IHBp
ZGdpbiBpcyAKPiBjb25maWd1cmVkLCB5b3UnbGwgaGF2ZSAnaXJjLmZyZWVub2RlLm5ldCcgcHJl
LWZpbGxlZC4gSWYgdGhhdCdzIHdoYXQgCj4geW91IHdhbnQsIGdvIGFoZWFkIGFuZCBhY2NlcHQg
aXQuIFlvdSdsbCBoYXZlIGEgbWVzc2FnZSBhYm91dCAKPiBjb25uZWN0ZWQgdG8gdGhlIHNlcnZl
ci7CoCBJbiB5b3VyIGJ1ZGR5IGxpc3QsIGRvICdjdHJsK2MnLCB5b3UnbGwgYmUgCj4gYXNrZWQg
dG8gam9pbiBhIGNoYXQuIHR5cGUgdGhlIG5hbWUgb2YgdGhlIGNoYW5uZWwuwqAgVGhlIGNoYXQg
bWVzc2FnZXMgCj4gd2l0aCBzdGFydCBjb21pbmcgaW4gYW5kIGJlaW5nIHJlYWQgYnkgb3JjYS7C
oCBZb3UgY2FuIHVzZSAnb3JjYStmMSAKPiB0aHJvdWdoIG9yY2ErZjkgdG8gcmVhZCBwcmV2aW91
cywgbmV4dC10byBwcmV2aW91cywgZXRjLi4uCj4KPgo+Cj4gSFRILAo+Cj4KPgo+IERhdmXCoCBI
Lgo+Cj4KPgo+IE9uIDUvMTgvMjEgMjo1NyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4gTXkgcXVlc3Rpb24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0s
IHdoYXQgYXJlIHJlY29tbWVuZGVkIElSQyAKPj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0g
d29ya2luZz8gd2hhdCBzaG91bGQgCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

