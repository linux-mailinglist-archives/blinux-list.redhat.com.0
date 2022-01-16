Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B48748FD9A
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 16:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642346641;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Flne22hEUNkouOEPPNBF9hq6PahDwX0/AZSYHFwoLPs=;
	b=cUKFkaZRs64MVYOajKGAYmQCTYoVKCSDwacU8GYHQU4yfNp/PrmbWty3pUMZthnk6J5OyJ
	4Li0yEV+Np8vWWTaYAcqYDCej23P4axDlDUdFaSM4zkzgSeN1XIObdnPXrmZlzIGEnxJO8
	Ds5SBs3HKdrwvKe5ay6xmkFq2pt1t3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-qa_jDp1vPAC8ijHskFeP4Q-1; Sun, 16 Jan 2022 10:23:57 -0500
X-MC-Unique: qa_jDp1vPAC8ijHskFeP4Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 708FC100C660;
	Sun, 16 Jan 2022 15:23:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A98137D3D2;
	Sun, 16 Jan 2022 15:23:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 799C04BB7C;
	Sun, 16 Jan 2022 15:23:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GFJf5h026304 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 10:19:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3A83340D1B9F; Sun, 16 Jan 2022 15:19:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3605640C1242
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:19:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E70C1C05AF6
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:19:41 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-570-zACh61zjMIylWguzVHRQjg-1; Sun, 16 Jan 2022 10:19:39 -0500
X-MC-Unique: zACh61zjMIylWguzVHRQjg-1
Received: by mail-io1-f51.google.com with SMTP id f24so12590944ioc.0
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 07:19:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Lem5/W+Y8GnirGhKAXUzl0Ccte+YG9CBw6rkLdVfno0=;
	b=OKTYU/LWPsB+o1bDVa1mMT4ZhM4+drCb8ftujxwn/B9eIVrn5WRfFYtQ347pEeoRLU
	t8Xi46On5w48tvzdvTrS0iuT74845cw34GEr6DWdO+G/zILSGqq1HGbm1UHdQAsnZsgZ
	J8y5YA5u9lpAMlmV7hcjmigJJisGQzVLsxC3ZQmLVVUI8pJEw0HEfKmqAPVlF2LwFTJz
	LliTcGjJusdXHpflnJR5ql4BIHL4tjla0U1JYiT7xEOv1pVGiwcXPk5n+VrO1Vy+E013
	Blp+yx94wnoSiu9Ctx3VNtZb8a30PMlPDIMSbcLayyBeisWV/mK6mLJAP1MpvR2rKGXW
	aHUA==
X-Gm-Message-State: AOAM530JtakvOl/lXUj3J5nq+1ZRgf5aHyBRHeH6fMlsZhoPJ/DsH69h
	eYeuXJ0bR53+uZZzOLo+dfKXkdg6LME=
X-Google-Smtp-Source: ABdhPJxFAzTTdNLb7lO4ikKUx0wHoChw3slTLQYQ5YnJ83l3EULFQCXpnVIMDol7IyXIuCZa0G/Tpw==
X-Received: by 2002:a05:6602:1409:: with SMTP id
	t9mr8394244iov.166.1642346378302; 
	Sun, 16 Jan 2022 07:19:38 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:5d30:9953:1365:e208?
	([2600:1700:9434:2a00:5d30:9953:1365:e208])
	by smtp.gmail.com with ESMTPSA id s9sm8145430iow.40.2022.01.16.07.19.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 07:19:38 -0800 (PST)
Subject: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
Message-ID: <cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
Date: Sun, 16 Jan 2022 09:19:37 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2VsbCwgaXQgc291bmRzIGxpa2UgeW91J3JlIHRlbGxpbmcgbWUgdG8gcnVuIGxpbnV4IHVuZGVy
IHdpbmRvd3M/IFRoYXQgCmlzbid0IHdoYXQgSSBoYWQgaW4gbWluZC7CoCBIZXJlJ3Mgd2hhdCBJ
J3ZlIGxlYXJuZWQgdGh1cyBmYXI6CkkgbmVlZCB0byBkb3dubG9hZCBhIGxpbnV4IE9TOyB0aGVu
IG1ha2UgYSBib290YWJsZSBtZWRpYSBhbmQgaW5zdGFsbCAKdGhlIGxpbnV4IElTTyB0byBpdC4K
CldlbGwsIEkgZGlkIHRoYXQ6CmRvd25sb2FkZWQgdWJ1bnR1LTIwLjA0LjMtZGVza3RvcC1hbWQ2
NC5pc28KYW5kIChmb3IgZmxhc2hpbmcgaXQgdG8gdGhlIHRodW1iIGRyaXZlKSBiYWxlbmFFdGNo
ZXItUG9ydGFibGUtMS43LjMuZXhlCm1hZGUgYSBib290YWJsZSB0aHVtYiBkcml2ZSBhbmQgaW5z
dGFsbGVkIHVidW50dSBvbiBpdC4KCgpOb3cgSSBuZWVkIHRvIGxlYXJuIGhvdyB0byBpbnN0YWxs
IHVidW50dSBmcm9tIHRoZSB0aHVtYiBkcml2ZS7CoCBJIG11c3QgCnNlYXJjaCBmb3IgaW5zdHJ1
Y3Rpb25zIHRvIGdvIG9uIGZyb20gaGVyZS4KClRoYW5rcy4KSG93YXJkCgoKT24gMS8xNS8yMDIy
IDU6NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gVWJ1
bnR1IG9yIEZlZG9yYSBjb3VsZCBkbyB0aGF0IGZvciB5b3UuICBhbHQtd2luZG93cy1zIHRvZ2ds
ZXMgc3BlZWNoIG9uCj4gYW5kIG9mZiBhbmQgeW91IHdhbnQgdG8gY2hvb3NlIHRyeSB1YnVudHUg
b3IgdHJ5IGZlZG9yYSBidXR0b25zIG9uIHRoZQo+IGRlc2t0b3Agc2NyZWVuLiAgRGVza3RvcCBz
Y3JlZW4gaXMgd2luZG93cy1kIG9uY2Ugc3lzdGVtIGJvb3RzIGFuZCB5b3UKPiBoYXZlIHNwZWVj
aC4KPgo+Cj4gT24gU2F0LCAxNSBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPgo+PiBIZWxsbyBhbGwsCj4+Cj4+IEkndmUgYmVlbiB3YW50aW5nIHRv
IHRyeSBvdXQgbGludXggYnV0IGhhdmVuJ3Qgd2FudGVkIHRvIGdpdmUgdXAgb3IgbWVzcyB1cAo+
PiBhbnkgb2YgbXkgd29ya2luZyB3aW5kb3dzIHN5c3RlbXMuwqAgV291bGQgaXQgYmUgcG9zc2li
bGUgdG8gaW5zdGFsbCBzb21lCj4+IHZlcnNpb24gb2YgbGludXggb24gYSBDRCBvciBhIERWRDsg
dGhlbiBqdXN0IGJvb3QgYSBjb21wdXRlciBmcm9tIHRoYXQgZGlzawo+PiBieXBhc3Npbmcgd2lu
ZG93cyBhbHRvZ2V0aGVyP8KgIElmIHNvLCBJJ2QgaGF2ZSB0byBtYWtlIGl0IGVpdGhlciB0YWxr
IG9yIGRyaXZlCj4+IGEgQnJhaWxsZSBkaXNwbGF5Lgo+Pgo+PiBXb25kZXIgaWYgYW55b25lIHdv
dWxkIGhhdmUgYW55IHN1Z2dlc3Rpb25zP8KgIFRoYW5rIHlvdS4KPj4KPj4gSG93YXJkCj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

