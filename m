Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60E233CC018
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 02:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626481738;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xqVZ1cWVa5+xWUyhhRLfnJ/OqLy0ZE8w/26f9Jh+RZg=;
	b=BB5I8dCc9HrRmp7zYLiRZ2/YgsDt0/ImTVIv+a+oeZdlbtjNN3CieL8jzH3xiXAhNWET6f
	1Unt8WIP2juCci4ZwOUJtZYWQHnaCzemr+T6ZVQg/QFhzvA6tfaoLVeZ/oZmerhkhF/faW
	5AcphqFZsLY43LwmKdDFBpc8exvOdBg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-LLigfEXnNl-QOyXUVSYj5Q-1; Fri, 16 Jul 2021 20:28:56 -0400
X-MC-Unique: LLigfEXnNl-QOyXUVSYj5Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EF151084F53;
	Sat, 17 Jul 2021 00:28:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBD5E5DAA5;
	Sat, 17 Jul 2021 00:28:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A501A1809C9A;
	Sat, 17 Jul 2021 00:28:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H0RlXv012376 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 20:27:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1A0F11D2BE; Sat, 17 Jul 2021 00:27:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C51B119022
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:27:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29DEE1064E69
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:27:45 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
	[209.85.216.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-kWcaORjwMdyIcd7dBLdi5w-1; Fri, 16 Jul 2021 20:27:42 -0400
X-MC-Unique: kWcaORjwMdyIcd7dBLdi5w-1
Received: by mail-pj1-f41.google.com with SMTP id p9so7361265pjl.3
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 17:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=vnlpaA/Vbx4KRhDuafO1nutRgR6xGjAVsj6geaobYYU=;
	b=DW7mcPqUs9w9WSZpup0/mPy2xAc0BO/N1PSS39Sku9YIbrUeRBJUQgT6d+zxsRpkKA
	0+XcotCjcxTe/fDxi6ZbCzsaXXWmbn2QwRRFpD/FT1c9roj0wxkQdhZtQa0K05RDyGdc
	uhL4fkE3+Wi2C0Ux5WuYN7rvwZM/q8Bcw1QIiSTv/P2JfkXCtgNM7iiVgwk47lAD+AlR
	qiGwQssoRyYBp9Hzj4d9OIRtCcdwrGlJWHtOZCzEgoQ57l6BxkVXeSjLFlze1pD0tftn
	hcfGa2vEK4gSCZqKk3F3eXFWo0gzidGUYvQ2frNIS16B3BSoDvrkVJWYGj+xMiSm4IqJ
	Ln6g==
X-Gm-Message-State: AOAM532XRFfe524RKfbqrY2mAPl+7NylF/rXOe10Aiip1M8loKGFIW8U
	ftUzR8E0YAjobkcAQDXXJBKZzyNBHAA=
X-Google-Smtp-Source: ABdhPJx3Ae2zmG96A6CZjYYhGdhqVfA7U9+EwvYr4CaHQH+k1gSkxSOn/xNPWPD6Zz4eby5QuRlwzA==
X-Received: by 2002:a17:90a:4205:: with SMTP id
	o5mr17577892pjg.131.1626481661268; 
	Fri, 16 Jul 2021 17:27:41 -0700 (PDT)
Received: from smtpclient.apple ([2603:9005:401:e2d3:d07b:41f6:209a:4457])
	by smtp.gmail.com with ESMTPSA id
	v31sm5134769pgl.49.2021.07.16.17.27.40 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jul 2021 17:27:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Fedora pros and cons
Date: Fri, 16 Jul 2021 19:27:38 -0500
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
Message-Id: <115A2311-0474-4D35-A52C-D085DE176D7B@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

SSB3YXMga2luZGEgd29uZGVyaW5nIHRoYXQgdG9vLCBidXQgSSBndWVzcyBieSBBcHBsZSB0aGV5
IG1lYW4g4oCcaW50ZWdyYXRlZCBhbmQgY29uZmlndXJlZOKAnSByYXRoZXIgdGhhbiBNaWNyb3Nv
ZnTigJlzIG1vcmUgbG9zZSBhcHByb2FjaCwgd2hpY2ggaXMga2luZGEgd2VpcmQgc2luY2UgTmFy
cmF0b3IgaXMgbW9yZSBvZiBhIHRoaW5nIG5vdywgYW5kIE1pY3Jvc29mdCBpcyBldmVuIHRyeWlu
ZyB0byBiZSBsaWtlIEFwcGxlIGJ5IGJ1bXBpbmcgYSAqbWlub3IqIFdpbmRvd3MgMTAgdmVyc2lv
biB1cCB0byAxMS4KRGV2aW4gUHJhdGVyCnIuZC50LnByYXRlckBnbWFpbC5jb20KCkh0dHBzOi8v
ZGV2aW5wcmF0ZXIuZmxvdW5kZXIub25saW5lCgo+IE9uIEp1bCAxNiwgMjAyMSwgYXQgNzowNSBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gCj4gRG1peCBpcyBhIHByZXR0eSBiaWcgY2FuIG9mIGNyZWFtIGNvcm4g
dGhhdCBJIG9ubHkgb3BlbmVkIG9uY2UgYW5kIHF1aWNrbHkgdGhyZXcgYXdheS4gVGhleSBuZXZl
ciBkaWQgZml4IHRoYXQgc3BlZWNoIGlzc3VlIHdoZXJlYnkgdHdvIHZvaWNlcyB0YWxrIGF0IG9u
Y2UgYW5kIHRoZSBmaXJzdCB2b2ljZSBqdXN0IHdvbid0IHNodXQgdXAgZm9yIGZhciB0b28gbG9u
Zy4gRmVzdGl2YWwgYW5kIEVzcGVhayBkaWQgdGhlIHNhbWUgdGhpbmcuCj4gCj4gCj4gQ2FuIHNv
bWVvbmUgZXhwbGFpbiBpbiBwbGFpbiBFbmdsaXNoIHdoYXQgaXMgYW4gYXBwbGUgYXBwcm9hY2gg
dG8gYWNjZXNzaWJpbGl0eSB2cyBhIG1pY3Jvc29mdCBhcHByb2FjaCB0byBhY2Nlc3NpYmlsaXR5
PyBJIGRvbid0IGxpa2UgZWl0aGVyLCBidXQgbWF5YmUgdGhhdCdzIGJlY2F1c2UgZm9yIG1hbnkg
eWVhcnMgSSBoYXZlIGp1c3QgdXNlZCBMaW51eCB3aXRoIE9yY2EsIHdoaWNoIEkgaGF2ZSBzcGVh
a2luZyBvbiBteSBkZXNrdG9wIG9mIGNob2ljZSwgd2hpY2ggb25jZSB3YXMgR05PTUUgMi54IGFu
ZCBub3cgaXMgTUFURS4gTm9uZSBvZiB0aGUgY29ycG9yYXRlIGJlaGVtb3RocyB0YWtlIHRoaXMg
YXBwcm9hY2gsIGFsbG93aW5nIG1lIHRvIGNob29zZSB0aGUgaW50ZXJmYWNlIEkgbGlrZSB0aGUg
YmVzdCwgdGhlIG9uZSB0aGF0IHdvcmtzIGZvciBtZSB0aGUgYmVzdC4KPiAKPiB+S3lsZQo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

