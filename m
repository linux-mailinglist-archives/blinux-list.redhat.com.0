Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F05466D3C
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 23:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638485274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FdcsbY4A3PKhOB3A+vWZct1qUb7WRNvyFZDjuBXArmI=;
	b=frpwRfe0god9sOFYamz/ATUVO3TL5i+otYssczXdhTFHOFw1VKgfBNgYZwVUjUYNvFolkQ
	GBkP1ymlKkhn3Rz3KjNccuD7R1SKxs0veFPZfnJQ0xmPo5lfijsPPsMYqZVx3PTyoWxp9j
	OeN8GNc/GDQqRnOXEftr4R+t3pWHf10=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-443-my18_LhgMc-MJt4X4Z0Vag-1; Thu, 02 Dec 2021 17:47:50 -0500
X-MC-Unique: my18_LhgMc-MJt4X4Z0Vag-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6F981006AA3;
	Thu,  2 Dec 2021 22:47:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E063C5D9D5;
	Thu,  2 Dec 2021 22:47:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 712D84BB7B;
	Thu,  2 Dec 2021 22:47:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2MlXAp015072 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 17:47:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1E492404727A; Thu,  2 Dec 2021 22:47:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19EFE4047272
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:47:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00FB98001E9
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:47:33 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-587-Qh440_GWPE-ycZT4sl74iw-1; Thu, 02 Dec 2021 17:47:31 -0500
X-MC-Unique: Qh440_GWPE-ycZT4sl74iw-1
Received: by mail-pg1-f182.google.com with SMTP id 137so1203614pgg.3
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 14:47:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=ceI5E/nPzXDskqJ9Arr40rJeg5QlHuJFFs5mHAvLO+Q=;
	b=5Te3k6xcS+ts7OkpessgaQ+6Lk91RcKwe0IvJEWGclRPRJXapKXjzV1kPlRBDUNTaT
	N8yIFu0srQs95Xurp9WmENLtQ2cMiNm/vGFmTYg+Js9elR3haewhRizmaM4k97TPM1pX
	7yVbXPfGE0bu/dy4pl2EapnmDUNg9K3uVuyHqRr5SMkkXZKcDa1i6ddhWci+SSp+0kbb
	lRTiXmpuzR3aFFq1zj34OZ6g2lCy0J+kAzK3dmSlm6Yz7zdZWXqJgx0RrUgYEXl5hDWg
	9tfBuQ9l6zYOFZv4i1dBGlOZAFwIZjQP9M/zmGeuPpVUdFbCaQpgI9BpYxN8Uwvbe0EC
	Z27g==
X-Gm-Message-State: AOAM5328ezWGY8N15q1Iv+TGPIavR3YGgkJT1fYbdujyNcT/dDn9+y3k
	Im4rKZThar8NJJUf7GLOWSQ3KRXZ89otvAizMyxjvJjt
X-Google-Smtp-Source: ABdhPJx/5LqB6b9Iiu8WdQsXGb6IU31j96xVexQS5+pzNU/hpU/DJhaSi/F6qkFEGqj9ZVhYVOJduN8xHogwYg/H6OM=
X-Received: by 2002:a63:ee04:: with SMTP id e4mr1659402pgi.266.1638485250056; 
	Thu, 02 Dec 2021 14:47:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:518:0:0:0:0 with HTTP; Thu, 2 Dec 2021 14:47:29
	-0800 (PST)
In-Reply-To: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
Date: Thu, 2 Dec 2021 15:47:29 -0700
Message-ID: <CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
Subject: Re: Help booting live disk
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B2MlXAp015072
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9iLCB5b3UncmUgZWl0aGVyIGdvaW5nIHRvIGhhdmUgdG8gZ28gaW50byBiaW9zIHRvIGNoYW5n
ZSBzb21lCnNldHRpbmdzIGluIG9yZGVyIHRvIGJvb3QgZnJvbSBhIFVTQiBzdGljayAoZm9yIHdo
aWNoIHlvdSdsbCBuZWVkCnNpZ2h0ZWQgYXNzaXN0YW5jZSksIG9yLCBzb21ldGltZXMsIGlmIHlv
dSdyZSBsdWNreSwgeW91IGNhbiBwcmVzcyBhCmtleSBsaWtlIGVzY2FwZSBhcyB0aGUgbWFjaGlu
ZSBpcyBzdGFydGluZyB0byBnbyBpbnRvIGEgYm9vdCBtZW51Cih0aGF0IGRvZXNuJ3Qgc3BlYWsp
IGZyb20gd2hpY2ggeW91IGNhbiBzZWxlY3QgeW91ciBkZXNpcmVkIGJvb3QKZHJpdmUuIFlvdSds
bCBuZWVkIHRvIGNvbnN1bHQgeW91ciBjb21wdXRlcidzIG1hbnVhbCB0byBzZWUgaWYgaW4gZmFj
dAp0aGF0IGZhY2lsaXR5IGV4aXN0cy4gVGhhdCB0b28gaXMgcHJvYmxlbWF0aWMsIGJlY2F1c2Ug
c29tZXRpbWVzIHlvdQpnZXQgaXQgcmlnaHQgYW5kIG90aGVycyB5b3UgZG9uJ3QuIFRoaXMgaXMg
bm90IHN0YW5kYXJkaXplZCBhdCBhbGwsIHNvCnlvdSdsbCByZWFsbHkgbmVlZCB0byBjb25zdWx0
IHlvdXIgY29tcHV0ZXIncyBtYW51YWwgb24gaG93IHRvCmFjY29tcGxpc2ggdGhpcy4KCk9uIDEy
LzIvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+IEhpLAo+IEkgd2FzIHNvIGV4Y2l0ZWQgdG8gcmVjZWl2ZSBteSBu
ZXcgTGFwdG9wLgo+IEJ1dCBJIGNhbuKAmXQgZ2V0IGl0IHRvIGJvb3QgZnJvbSBVU0IsIG9yIGZy
b20gdGhlIGV4dGVybmFsIFVTQiBEVkQgZHJpdmUuCj4gSXQgYWx3YXlzIGJvb3QgdG8gV2luZG93
cy4KPiBJcyB0aGVyZSBhbnl0aGluZyBJIGNhbiBkbywgb3IgZG8gSSBuZWVkIHNpZ2h0ZWQgaGVs
cD8KPiBIZXJlIGFyZSB0aGUgc3BlY3MuCj4gR2F0ZXdheSAxNC4xIiBVbHRyYSBTbGltIE5vdGVi
b29rLAo+IEZIRCwgSW50ZWwgQ29yZSBpNS0xMTM1RzcsIFF1YWQgQ29yZSwKPiAxNkdCIFJBTSwg
NTEyR0IgU1NELCBUdW5lZCBieSBUSFggQXVkaW8sCj4gIEZpbmdlcnByaW50IFNjYW5uZXIsIDEu
ME1QIFdlYmNhbSwgSERNSSwgQ29ydGFuYSwgV2luZG93cyAxMCBIb21lCj4KPiBUaGFua3MsCj4g
Um9iCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgot
LSAKU3Vic2NyaWJlIHRvIGEgV29yZFByZXNzIGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBz
ZW5kaW5nIGEgbWVzc2FnZSB0bzoKd3A0bmV3YnMtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGgg
J3N1YnNjcmliZScgaW4gdGhlIFN1YmplY3QgZmllbGQgT1IgYnkKdmlzaXRpbmcgdGhlIGxpc3Qg
cGFnZSBhdCBodHRwOi8vd3d3LmZyZWVsaXN0cy5vcmcvbGlzdC93cDRuZXdicwomIGNoZWNrIG91
dCBteSBzaXRlcyBhdCB3d3cuYnJpZ2h0c3RhcnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFj
a2VkLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

