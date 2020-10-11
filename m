Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4AEB528A813
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 17:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602431657;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9IV9nQcLGdmz8F39v9ClnI7e2zKvoYECoUWk8cnQo4s=;
	b=b3JrLr9ihQZxVZX7DaHsWXZ8YD+BwlmJb+DSU0rzAZgBBxrop7JQUxXxnEFkXMOSz0jZyc
	JuME7wce0lPgpy747f1J5ABcASb/J+fxFAlEh60d7CVyLcd3xA2wIdi2cWk548NcOOkGGP
	hiTztCBuJJiLtoKMtDFjwF6Ja9gn6Mg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-VdMf8K_uOnmYOrK9TVfL_Q-1; Sun, 11 Oct 2020 11:54:15 -0400
X-MC-Unique: VdMf8K_uOnmYOrK9TVfL_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A0AD107ACF8;
	Sun, 11 Oct 2020 15:54:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 400835C1DA;
	Sun, 11 Oct 2020 15:54:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8819592307;
	Sun, 11 Oct 2020 15:54:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BFs6DE013194 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 11:54:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7D4EF2157F24; Sun, 11 Oct 2020 15:54:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78CCC2157F23
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:54:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8620858289
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:54:03 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-325-Xf9jK2eUMviTV2BvvIsO9w-1; Sun, 11 Oct 2020 11:54:01 -0400
X-MC-Unique: Xf9jK2eUMviTV2BvvIsO9w-1
Received: by mail-ed1-f44.google.com with SMTP id v19so14360483edx.9
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 08:54:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qXQNH6TiOj2oHEIro/HQoCJ3PCkGqBeL2KPhd/Kl0fM=;
	b=Fn3Y52xVx6P7HlIAp51kcPcAJ1GzT8XH33C5Q2tJ4awVQQ3Yw8cQ4Prn6ANvhYFTV3
	ZS7IEcRhEPvXreK9Uq1zdbFbu+P8mBAoPfkwFjd6xu6Mcyko7vwjt1JFzUv8OpGha81i
	8YGE1zKdFVAuKedaQEQ9i3ghVLtCJfzORL5q4I7UEAma7fLGLEs6731nxX2C7YMAObKR
	WLq4lKrhZU+p06EvDyaK/QrG0kYnSJDLPhYfS0jXJAa/mXUMraUrGw6D2YiFzi5/xF1k
	97vW80HASw+jX3u92LMG56U6z6B2BYj103dnN4td/4s1PGprPe2YFPlOdlm4EB+2nv29
	um7A==
X-Gm-Message-State: AOAM531ukktkEiforbZsU/y+cUYhoQGzDfjB8p0tyOlbd4yl4FYyxCRg
	ZtBRXTXP4eGQ+ryAOoYP9cjUhvrthJVptA==
X-Google-Smtp-Source: ABdhPJzveKungC2we1W3Fc02CCjYRDwl88DsBbIuHWpUsJK4Jlx7gI3Ef9fdLcBXXannm1mD+wFZ0g==
X-Received: by 2002:a05:6402:1c10:: with SMTP id
	ck16mr9890098edb.7.1602431640020; 
	Sun, 11 Oct 2020 08:54:00 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	q14sm9463289ejo.53.2020.10.11.08.53.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Oct 2020 08:53:59 -0700 (PDT)
Subject: Re: have we any irc experts on the list?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010111148340.24507@panix1.panix.com>
Message-ID: <6d2584bb-0d22-a423-9588-5181c6d6d3b3@gmail.com>
Date: Sun, 11 Oct 2020 18:53:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010111148340.24507@panix1.panix.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

b2sgbm93IGkgdW5kZXJzdGFuZC4gZm9yIHRoaXMgeW91IG5lZWQgSVJDIGJvdW5jZXIuIApodHRw
czovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9CTkNfKHNvZnR3YXJlKSNJUkMKaSB1c2UgWk5DIGZv
ciB0aGF0LgoKMTEuMTAuMjAyMCAxODo1MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiDQv9C40YjQtdGCOgo+IFN1YmplY3Qgd2FzIHdyb25nIG9uIGxhc3QgbWVzc2FnZSBJIHNl
bnQgdG8gYmxpbnV4LWxpc3QuCj4gRm9yIGlyYyBkb2VzIGEgd2F5IGV4aXN0IHRvIHJlYWQgc29t
ZSBvZiB0aGUgcGFzdCB0cmFmZmljIHRoYXQgaGFwcGVuZWQKPiBpbiBhIHJvb20gYmVmb3JlIHRo
ZSB1c2VyIGVudGVyZWQgdGhlIHJvb20/Cj4KPiBPbiBTdW4sIDExIE9jdCAyMDIwLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+IERhdGU6IFN1biwgMTEgT2N0
IDIwMjAgMTE6NDI6MjIKPj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gU3ViamVjdDogaGF2ZSB3ZSBhbnkgZXhwZXJ0cyBvbiB0aGUgbGlzdD8KPj4KPj4gSWYgeWVz
LCBkb2VzIGEgd2F5IGV4aXN0IGZvciBhIHVzZXIgZW50ZXJpbmcgYSByb29tIHRvIGxpc3QgdHJh
ZmZpYyB0aGF0Cj4+IGhhcHBlbmVkIGluIHRoZSByb29tIGJlZm9yZSB0aGUgdXNlciBlbnRlcmVk
IHRoZSByb29tPwo+Pgo+Pgo+PiAtLQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4KPj4KLS0gClNpbmNlcmVseSwgQWxleGFuZGVyLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

