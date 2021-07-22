Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 71A9C3D2372
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 14:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626957645;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RsTFmdHxY8cukydwqteU42Gv0k7UdBFas7XqDfktmlw=;
	b=b1tE53duI9oiE0GeJy0YVjcZy3P4ZtdREsCcTyGQDNO/LA+Md18nOwhZL0Y69vn9m4OReZ
	Ctx06Fvn/+kLNzwayojIwdbaOomQhzgBoNfuwc3FZ6QpBI4Y0R5lDFzvEsZAa1sgrjdl0i
	sBK2WbJrGfAvxlcP8OLwNjhYFVQARao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-u_NQdN2TMcKk9jxfUQVkvQ-1; Thu, 22 Jul 2021 08:40:44 -0400
X-MC-Unique: u_NQdN2TMcKk9jxfUQVkvQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1E0F1005D4F;
	Thu, 22 Jul 2021 12:40:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 840E060936;
	Thu, 22 Jul 2021 12:40:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 112364BB7C;
	Thu, 22 Jul 2021 12:40:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MCeM1v002827 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 08:40:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4802A208C19A; Thu, 22 Jul 2021 12:40:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 420DF207AD25
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:40:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B7DB89C7DD
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:40:19 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-409-S_NlxWT_Ncq1OO2xHXo9Ug-1; Thu, 22 Jul 2021 08:40:17 -0400
X-MC-Unique: S_NlxWT_Ncq1OO2xHXo9Ug-1
Received: by mail-ed1-f46.google.com with SMTP id ca14so6632924edb.2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 05:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BlUAHoYEvh206M6hCpdSge6p9y5z9jM9fR6lbz8DU7M=;
	b=s3xEFF55AF3UluESyhTwGQJqXIEWI3nxSYZKRUovP2LTQ/7fmi8/Jqk2rnSB6+pa8u
	LBFIxMvop1hxVHzPC1+49UVtQZW2ULX32MVzUnzZxbeEBM/2ARhQL1Ve/OioOH/MZJJk
	bh3QCQ7CNG9yOUrlNfjsEmvgGLy9P4xc9Vg/EBgdbgV8RccZ3hsYqchTDkyI5Q3v/f+d
	p04O/h5/atNLiw5/kzGP4a040zQOg3SfFnoqlYNBUz0NV72hF9uKyKYYSnLkm2T10pyY
	8jtYh+ap4G9u9fN5tHFhP541kfo6jGBTsdeeQi2BujtWdM4PjGNtw2EcrLKwx0Vkmpws
	wV+Q==
X-Gm-Message-State: AOAM532OvRvWEJHvFi3xA3dcJ0pCfcvxEjW10Y1MDetQ2oWliIVsOW6A
	fzPQD2HEGaiBxFcr/M8gd2fFlfRwYYNK+w==
X-Google-Smtp-Source: ABdhPJxKBqFENGHA9P1bhxvyPWaQ2vb4HvdgEkjrdcI7Bq65cR2Dkkyn+4odcVaZ1WH1t3L4dMI79A==
X-Received: by 2002:a50:9b06:: with SMTP id o6mr55119452edi.284.1626957615745; 
	Thu, 22 Jul 2021 05:40:15 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	c28sm9457704ejc.102.2021.07.22.05.40.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 05:40:15 -0700 (PDT)
Subject: Re: A question on speakup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
Message-ID: <d8126558-ed6e-87cd-bac9-1a8bd4390fef@gmail.com>
Date: Thu, 22 Jul 2021 14:40:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

SGkgYWdhaW4sCgoKRm9yIHNvbWUgcmVhc29uIGVzcGVha3VwIGNvbWVzIHVwIHRhbGtpbmcgd2l0
aCBhIHJhdGhlciBiYWQgVVMgYWNjZW50LiAKSXMgdGhlcmUgYSB3YXkgdG8gY2hhbmdlIHRoZSAi
bGFuZ3VhZ2UiIHdpdGhvdXQga2lsbGluZyBlc3BlYWt1cD8gRXZlcnkgCnRpbWUgSSBkbyBzbywg
U3BlYWt1cCB3aWxsIHJlc3RvcmUgbXkgcHJldmlvdXMgc2V0dGluZ3MsIHdoaWNoLCAKdW5mb3J0
dW5hdGVseSBpbmNsdWRlcyB0aGUgYmFkIFVTIHZvaWNlLgoKCldhcm0gcmVnYXJkcywKCkJyYW5k
dCBTdGVlbmthbXAKClNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSBTbGludAoKT24gNy8yMi8y
MSAxMjozMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBI
aSBCcmFuZHQsCj4KPiBmb3IgU2xpbnQ6Cj4KPiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sI19jb25maWd1cmVfYV9jb25zb2xlX3NjcmVlbl9yZWFkZXIKPgo+IEkgZG9uJ3Qga25v
dyBhIHNwZWNpZmljIHNvZnR3YXJlIHN5bnRoZXNpemVyIGZvciBEZWN0YWxrLCBidXQganVzdCAK
PiB0eXBlIGFzIHJvb3Q6Cj4gc3BlYWstd2l0aAo+Cj4gVG8ga25vdyBtb3JlOgo+IGh0dHBzOi8v
c2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjX2Nob29zZV9hX2NvbnNvbGVfc2NyZWVuX3JlYWRl
cgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tIAo+IERpZGllciBTcGFpZXIKPgo+IExlIDIyLzA3
LzIwMjEgw6AgMTI6MDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNy
aXTCoDoKPj4gSGkgYWxsLAo+Pgo+Pgo+PiBJIHVzZSB0byBrbm93IGhvdyB0byBzdG9yZSBhbmQg
dGhlbiByZXN0b3JlIG15IHNwZWFrdXAgc2V0dGluZ3MsIAo+PiBob3dldmVyLCB0byBteSB1dHRl
ciBzaGFtZSwgSSBmb3Jnb3QgaG93IHRvIGRvIHRoaXMuCj4+Cj4+Cj4+IEkgYWxzbyByZWFkIHNv
bWV3aGVyZSB0aGF0IHRoZXJlIGlzIGEgc29mdHdhcmUgRGVjdGFsayBzeW50aGVzaXplciAKPj4g
YXZhaWxhYmxlLiBJZiBhbnlvbmUga25vd3MgaG93IHRvIGluc3RhbGwgYW5kIGNvbmZpZ3VyZSB0
aGlzIHRvIHdvcmsgCj4+IHdpdGggc3BlYWt1cCwgaXQgd291bGQgcmVhbGx5IGJlIGFwcHJlY2lh
dGVkLgo+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

