Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDC4496E25
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jan 2022 23:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642889592;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rEOtZrV4wwNUb9dHPvhtejyZuAG1LwSfvgwN3IzKYOg=;
	b=MTfchVGCvyAJBoeU7HEqhRR3NP5i9GmmGd6Zuy1hCYbGe1xxC/nvWfrgF7L4RjbCokCc2C
	U8iFTDcJMo0zuBT3CX3Kyt24jGVRRz9p5xMlubpnnwmmAKEGyIZjzY7qiYv843HU/9avfu
	rtPlF6xXDN5WJYBN3A5qlrMt+hsUfH8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-InM3c_jxNhurQx8uanX9EQ-1; Sat, 22 Jan 2022 17:13:11 -0500
X-MC-Unique: InM3c_jxNhurQx8uanX9EQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7123814243;
	Sat, 22 Jan 2022 22:13:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 468A41037F53;
	Sat, 22 Jan 2022 22:13:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A22D1809CB8;
	Sat, 22 Jan 2022 22:12:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20MMCpE9012455 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Jan 2022 17:12:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C1D6EC1D38B; Sat, 22 Jan 2022 22:12:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD7D2C07F5C
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 22:12:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1AC785A5AA
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 22:12:49 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-221-JyqF00XFPvSVDcAhVo3OYA-1; Sat, 22 Jan 2022 17:12:47 -0500
X-MC-Unique: JyqF00XFPvSVDcAhVo3OYA-1
Received: by mail-pl1-f182.google.com with SMTP id d7so11998549plr.12
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 14:12:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=FbQR2xLnE2A+1Y19GEnAN122qLSXM398gapQV5ZqOTg=;
	b=mIyi1+6W5vMLSrs2QB6Wh9vDRJJ3nZqMoSGMYVQn8P/ckj1ecjTb9A/Pz5ZmKYooJH
	ahAqHQHb9A0XyeIoa3Uc8W+lTb+aYeKXsCalVvtYrVbxyN2XVnnQuL3Vcz2oGHmA5gdK
	6rgRdHT8c1gY3CRVio/HxcgP3cporoQW5JnxfrdN0E2nJ3028u465FuaZOffcpnok7Sf
	h/kUNQD254L6MqApayDEbz6E1B67FLh8I7y+mQ8uZRUby+1r5jG5lGHqtVjXrLOc74nG
	M3t4S2AIXmgFz5nJ+pP+s8kqeGvljYl50uOPquELtMkXKNOqIESUQbESJ5SwmObZ6Bf+
	r5uQ==
X-Gm-Message-State: AOAM531Mdk7hcvQ06ySk93r346KAkXMbDOmAeUzUVngc4J5H/rx5RWYq
	l9WFhRCyGfquOGtSsFdSU1iMFV6nQgo=
X-Google-Smtp-Source: ABdhPJykapSUxXSMqdg+jru5zPa3nSeFUmaQAbiyQ6T9yGB3u2U+QhT7PUl4xqavtCbjYiByyNJxiQ==
X-Received: by 2002:a17:90a:aa84:: with SMTP id
	l4mr6695206pjq.121.1642889566343; 
	Sat, 22 Jan 2022 14:12:46 -0800 (PST)
Received: from [192.168.1.8] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	h9sm11098993pfi.124.2022.01.22.14.12.45 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Jan 2022 14:12:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
Date: Sat, 22 Jan 2022 15:12:42 -0700
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
Message-Id: <469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20MMCpE9012455
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwKRm9yIG1lIGl0IHdhcyBhbHdheXMgZWl0aGVyIHRoZSBIUCBQYXZpbGxpb24gb3IgdGhl
IERlbGwgU2F0ZWxsaXRlIG1vZGVscy4gUmVsYXRpdmVseSBlYXN5IHRvIHVzZSwgY29tZSB3aXRo
IHN0YW5kYXJkIG9wdGlvbnMgYW5kIGEgbmljZSBiaWcga2V5Ym9hcmQuIFllcywgSSBoYXZlIGxh
cmdlIGhhbmRzLiBBbmQgeWVzLCBsaWtlIHlvdSwgc2NyZWVuIHNpemUgaXNu4oCZdCBpbXBvcnRh
bnQgdG8gbWUuIFN0aWxsLCB3aXRoIGEgbGFyZ2VyIHNjcmVlbiB0aGVyZSBpcyB2aWRlbyBjYXBh
YmlsaXR5IHRoYXQgY2FuIGJlIHJldGFza2VkIGVhc2lseSBlbm91Z2guIEFsc28sIHNpbmNlIG1v
c3QgbGFwdG9wcyBvZnRlbiB1c2Ugc2NyZWVuIHNpemUgYXMgYSBkZXBlbmRpbmcgZmFjdG9yLCBh
IGxhcmdlciBvbmUgd2lsbCBoYXZlIHRoZSBhZHZhbnRhZ2Ugb2YgYSBsYXJnZXIga2V5Ym9hcmQu
CgotRXJpYwoKCj4gT24gSmFuIDIyLCAyMDIyLCBhdCAxOjE2IFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBJ
IGFtIGxvb2tpbmcgZm9yIGEgTGludXggbWFjaGluZSB0byB1c2UgaW4gZ3JhZHVhdGUgQ1MgY291
cnNlcy4gSSBwcm9iYWJseQo+IHdhbnQgVWJ1bnR1IG9yIGFub3RoZXIgY29tbW9uIGRpc3RybyB0
aGF0IGNvbWVzIHdpdGggdGhlIHNjcmVlbiByZWFkZXIgKEkKPiBhc3N1bWUgT3JjYSkgYW5kIG90
aGVyIGExMXkgc3R1ZmYgYWxyZWFkeSBpbnN0YWxsZWQuIEkgbGlrZSBzbWFsbCwgbGlnaHQKPiBs
YXB0b3BzIChzaW5jZSBJIGRvbid0IHVzZSB0aGUgc2NyZWVuKSB0aGF0IGhhdmUgZGVjZW50IG1l
bW9yeSBhbmQgYmF0dGVyeQo+IGxpZmUuIFdoaWNoIG1hY2hpbmVzIGFyZSB5b3VyIGZhdm9yaXRl
cy4KPiAKPiBUaGFua3MgZm9yIHRoZSB0aXAgb24gVm1XYXJlIHRoZSBvdGhlciBkYXksIEJUVy4K
PiAKPiBBbWFuZGFbMF0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

