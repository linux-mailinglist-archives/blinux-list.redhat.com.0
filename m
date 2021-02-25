Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 75D1D324902
	for <lists+blinux-list@lfdr.de>; Thu, 25 Feb 2021 03:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614221627;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k9bCNbs+/ot2/t4j0LMgcGYm2t2p9yRzrz95TgZCZEs=;
	b=S4eCyy+Fyuq/YYc77V5KUvPG/CawcRLg8TcLcVOF3jF0QGsmQLi7ft/GMF5l6l3WTMjnC5
	0mZiTjymzOe5JE0k7ACybZPZBBQeV62gtXdyvuDDrMHAlMc9F6mMDEBHIkI8Tti9gd8HlZ
	Li12n32IgJUUFsNzD+nfkIaXbpKrvdo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-yDMF_7fPNzS1Ju6TZpbh1w-1; Wed, 24 Feb 2021 21:53:45 -0500
X-MC-Unique: yDMF_7fPNzS1Ju6TZpbh1w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 089B5107ACF2;
	Thu, 25 Feb 2021 02:53:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17C4E5C23E;
	Thu, 25 Feb 2021 02:53:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38E2D4E58E;
	Thu, 25 Feb 2021 02:53:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11P2rYM4002662 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Feb 2021 21:53:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 75705202A422; Thu, 25 Feb 2021 02:53:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70D2D2026D48
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 02:53:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 267BD9988E0
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 02:53:31 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-202-NR5RPf1EOmKkz7eUf2Q5LA-1; Wed, 24 Feb 2021 21:53:29 -0500
X-MC-Unique: NR5RPf1EOmKkz7eUf2Q5LA-1
Received: by mail-qt1-f171.google.com with SMTP id f17so3138420qth.7
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 18:53:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=vTmfiDxOa5plrGhDhyLLm50rDuVN7w8mBUg+CQ6yVKg=;
	b=uZ/WOs20phpH/5MipVif3QOtQo3gFaw2WNVmlCFk0jgUbi9S3I2NB1nlqcAx/PAY/O
	Idg0eYdBciBZ2ANXXvhkcfntKndfCENAwd8imP50PBp61BsOzvuBC6PCYjBY0QXX8qS8
	5ikg0c6OwfpFATS+oAWPADm/IItpv+C63rhaaDVOWWemuF9Kzkoo/0Dr5xz2Bb5lGM8J
	loCA57dwMrUK4jBMZUBZqDGv6eVRAmx4Uvw0SFtejxYgc8fHkBkLdoRzO04lNbhx44NR
	lA0/7Yc+8zfWbgud7p15jh14/GZzz5J3BguRoj1tFH/FBLKJomOWDM++VYO7D6BczBSo
	hjRw==
X-Gm-Message-State: AOAM532yejSuuzzuJYKne3PUGdJ7HcQFou7Byr4EbCFreBK5rpgxXC4F
	pMfjafjGcfybywYIFwbRkE0++01J99GjKpoJzL5BQHNRUqChwg==
X-Google-Smtp-Source: ABdhPJxQd8wcoMJxcFy6ynjhv1il2gAFubJrJf3UUQcDIZGzXOvRISRpI35DPnu8zNo7CAs4Y8+M3V/xD2mOa31v+rM=
X-Received: by 2002:aed:2e42:: with SMTP id j60mr725258qtd.189.1614221608712; 
	Wed, 24 Feb 2021 18:53:28 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
Date: Wed, 24 Feb 2021 18:53:18 -0800
Message-ID: <CAJ1g4g8wBF270d7E1xg+MY1yB_SvnqBdhkbzYPc0PrWGQf7q4A@mail.gmail.com>
Subject: Re: cut or similar utility
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11P2rYM4002662
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgNjo0NiBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPgo+IGlzIGN1dCBvciBh
IHNpbWlsYXIgdXRpbGl0eSBvbmNlIHBhc3NlZCBhIGZpbGUgYWJsZSB0byBhbmFseXplIHRoZSBm
aWxlCj4gYW5kIHJldHVybiB0aGUgbnVtYmVyIG9mIGZpZWxkcyBpbiB0aGF0IGZpbGUgaXQgY291
bGQgZmluZD8KCjxodHRwczovL3d3dy5nb29nbGUuY29tL3NlYXJjaD9xPUxpbnV4K2hvdyt0bytj
b3VudCtmaWVsZHMraW4rYStmaWxlJnJsej0xQzFHRVdHX2VuVVM5MzRVUzkzNCZvcT1MaW51eCto
b3crdG8rY291bnQrZmllbGRzK2luK2ErZmlsZSZhcXM9Y2hyb21lLi42OWk1N2o2OWk2NC4xMDU0
MmowajQmc291cmNlaWQ9Y2hyb21lJmllPVVURi04TD4KCi0tIApbTm90aWNlIG5vdCBpbmNsdWRl
ZCBpbiB0aGUgYWJvdmUgb3JpZ2luYWwgbWVzc2FnZTogIFRoZSBVLlMuIE5hdGlvbmFsClNlY3Vy
aXR5IEFnZW5jeSBuZWl0aGVyIGNvbmZpcm1zIG5vciBkZW5pZXMgdGhhdCBpdCBpbnRlcmNlcHRl
ZCB0aGlzCm1lc3NhZ2UuXQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICDCr1xfKOODhClfL8KvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

