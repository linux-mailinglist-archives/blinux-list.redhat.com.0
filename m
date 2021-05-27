Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 49CEC3936D6
	for <lists+blinux-list@lfdr.de>; Thu, 27 May 2021 22:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622146195;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+cVxlSOt6Tl0LLUYjdx1hfAeyZSXT0hrZ6RabZVosLU=;
	b=EhlE4djrqeVq4G0YBaj2Ux9P3nhClGmsPJkgnncZutD5qGl4uI9nrgRlB0PqrYQ4IeEYmN
	oHtvv2lkILa+cvVFv3yTn4tmxNQKUMcndoWsExqX9P6sFVG19NPFPbVkSWISaCl5VT6j/x
	mjw1drmUXuEobFphVz3X2ndR8eAT5OI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-3rbUT45aPfSsbzVVSSMtEw-1; Thu, 27 May 2021 16:09:52 -0400
X-MC-Unique: 3rbUT45aPfSsbzVVSSMtEw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C3C780623B;
	Thu, 27 May 2021 20:09:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AA465D9DC;
	Thu, 27 May 2021 20:09:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8390355348;
	Thu, 27 May 2021 20:09:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RK9Xt0022759 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 16:09:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6339820ED7EB; Thu, 27 May 2021 20:09:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ED1D20BB912
	for <blinux-list@redhat.com>; Thu, 27 May 2021 20:09:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8549380014A
	for <blinux-list@redhat.com>; Thu, 27 May 2021 20:09:29 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-518-l9jtt_ZCM4WzoZZcdUJbvw-1; Thu, 27 May 2021 16:09:27 -0400
X-MC-Unique: l9jtt_ZCM4WzoZZcdUJbvw-1
Received: by mail-lj1-f172.google.com with SMTP id f12so2474735ljp.2
	for <blinux-list@redhat.com>; Thu, 27 May 2021 13:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=vefTgZ8evKLiXDPr8WpiVEuT3o+6TVSAvFboaHQuKhY=;
	b=QbnajAo2olvyXw1zywHGQU+BKr1S3JkJYjP5xEk/fTJH6gT2BxAxdRM9iIvmCJrjua
	NupDHtI2DKIfxeOCL2nhA7BCAvbvCqtRVZ1XJIExbvHtcAfOMzB9WJGr8+c5VD1AbMdv
	R2yiquAYBKKsUSspG4gGGEEEZ+8wkBj5Sdo/OrKRZ61mLYMGM6c3DcilgAfRUYxCHVxT
	vtCnT3lJJSYRhj7PtNqH5KBc/ZolKlVo+snlC4XM7IP7FYYVcPvnkmPE2jYZHokeLtlM
	GTlMDxQNmeMYhqIDe27PXKCncqHr95jj/Ttr8XGbEacER+BJOnEAjzEXuAXUFGb9FlOu
	BYXw==
X-Gm-Message-State: AOAM532RNeT3WF8D1JcCPOVdWEB/WGnGta8z3a/mnndXq5xpAW3KzpV+
	87/cu5yXJFmmmPwIb/t9N/nX7AjXjgiwxQ==
X-Google-Smtp-Source: ABdhPJx6djtYND0OCCnpXXCLsRPFU53DVm5m+vO1xLdWS4ykC3qG18C2TZ8BYgr7s5JiJ+UK4Uu/5g==
X-Received: by 2002:a2e:9f44:: with SMTP id v4mr3949100ljk.475.1622146165745; 
	Thu, 27 May 2021 13:09:25 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	u14sm277118lft.164.2021.05.27.13.09.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 May 2021 13:09:25 -0700 (PDT)
Subject: Re: delay local file system mounting
To: blinux-list@redhat.com
References: <20210527.182025.331.1@[192.168.1.100]>
Message-ID: <b2def5d7-23fc-47b4-4348-0a9f9a9154eb@gmail.com>
Date: Thu, 27 May 2021 23:09:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210527.182025.331.1@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjcuMDUuMjAyMSAyMToyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEkgaGF2ZSBhIHJhaWQgYXJyYXkgdGhhdCBJIHVzZSBmb3Igc3RvcmFnZSwgYW5k
IGl0IHRha2VzIGEgd2hpbGUgZm9yIGl0IHRvIGJlIG1vdW50ZWQuIFRoaXMgY2F1c2VzIGEgZGVs
YXksIHNvbWV0aW1lcyBxdWl0ZSBzaWduaWZpY2FudCwgYmVmb3JlIHRoZSBsb2dpbiBwcm9tcHQg
YXBwZWFycy4KPiBJcyB0aGVyZSBhIHdheSB0byBjYXVzZSBhCj4gL2V0Yy9mc3RhYgo+IGVudHJ5
IHRvIGJlIGRlbGF5ZWQ/IEkga25vdyBJIGNvdWxkIGFsd2F5cyBtb3VudCB0aGUgYXJyYXkgbWFu
dWFsbHkgYWZ0ZXIgbG9naW4sIGJ1dCBJJ2QgcmF0aGVyIG5vdCBpZiBJIGNhbiBhdm9pZCBpdC4K
Pgo+Cml0J3Mgbm90IGhhcmQgdG8gZG8gaWYgeW91ciBkaXN0cmlidXRpb24gdXNlcyBzeXN0ZW1k
IGFzIGluaXQuCgp5b3UgbmVlZCB0byBhZGQgdGhlIHgtc3lzdGVtZC5hdXRvbW91bnQgb3B0aW9u
IHRvIHRoZSBtb3VudHBvaW50IGVudHJ5IAppbiB5b3VyIGZzdGFiLgp0aGVuIHRoZSBkaXNrIHdp
bGwgYmUgYXV0b21hdGljYWxseSBtb3VudGVkIHdoZW4gc29tZSBwcm9jZXNzIHdyaXRlcyB0byBp
dC4KeW91IGNhbiBhbHNvIHNldCB0aGUgdGltZSB0byB1bm1vdW50IHdpdGggdGhlIHgtc3lzdGVt
ZC5pZGxlLXRpbWVvdXQgPSAKYnkgZGVmYXVsdCB0aGUgZGlzayB3aWxsIG5vdCBiZSB1bm1vdW50
ZWQuCgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

