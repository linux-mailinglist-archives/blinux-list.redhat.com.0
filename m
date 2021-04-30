Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 43FF336F3FE
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 04:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619749217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RKVzltkAPlPe7ndZ7N2OfAVCu+3Qwo09aFSnXAzcviw=;
	b=MCAgFSO2KmCeQwzUido/IxZJWU6/JW7W0CMpAduz/+jLR+337+h+MMJiiM/BenCjRZOzbE
	JALHGOH5RIyhVAyQv49LZxr0xsAPk/yVMVMF08gA+hzKxsTAa8ETWi56IPYcnqvVsaHDsP
	Nhabj8lckLFBLtZu52fWmZzE80w33L0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-2if-_SvTOUaSPAmvKIosSw-1; Thu, 29 Apr 2021 22:20:15 -0400
X-MC-Unique: 2if-_SvTOUaSPAmvKIosSw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6F610054F6;
	Fri, 30 Apr 2021 02:20:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 479372BFF7;
	Fri, 30 Apr 2021 02:20:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C504844A68;
	Fri, 30 Apr 2021 02:20:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13U2K44q005018 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Apr 2021 22:20:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0CD1711E5AB; Fri, 30 Apr 2021 02:20:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0802C7AE0
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 02:20:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6A838001E8
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 02:20:01 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-335-Uw8CPTVkNmadAF7VG9qEkg-1; Thu, 29 Apr 2021 22:19:58 -0400
X-MC-Unique: Uw8CPTVkNmadAF7VG9qEkg-1
Received: by mail-qk1-f169.google.com with SMTP id v23so17294670qkj.13
	for <blinux-list@redhat.com>; Thu, 29 Apr 2021 19:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pxG+9nSA5ED843cu3sEjalGP9V8qAqFZ4iA5whODFcs=;
	b=Pv+580eIobuOMVrvs1jEy+1MltKsU2HFRo2cho1+5Uj/+Qc54LRyARNIy8pcB/YP9/
	4WDLMX3roOFud6y0YBg7aO3jrCK6/h5+lPknoDTi6en4q1xp8o0vy8bLGqp4wDj1kk2J
	RSC8P36LXq4sPpgGZyUem40zh393M/Lmk78vaFUDgRYD6qrf88tgVm9ecJbvYtUYlpA9
	/C4oHyzo7mGDEQQW4MZE4fkiG501n3gTqbBS941DORqthVHvIeAddUmIloh+v5SwBc2f
	Y9fIxudr/B4rJbY7+5ddVimIBExrGOtUGmqNH69+BBAky2+/qsH37xSqJESzkttoIxeC
	kyTg==
X-Gm-Message-State: AOAM531kBhAdz4OeOPeQQCVD4cUQ8I91OSOvzph/PX6qquwaL/AEn8Us
	ouKP8ntizFbxaOjn9Kp9SQP3Zj3C3WxMoUqx8bqDJNJryQ9nCg==
X-Google-Smtp-Source: ABdhPJwXK71pj5W7x3WIn9YUw4Het2hjyiU1oCVhwb65cO2LvAaCTzfD0ODPtWvs0ShyOAwhDJherva9Sli4d3k0ZtY=
X-Received: by 2002:a37:71c1:: with SMTP id m184mr1186760qkc.166.1619749197736;
	Thu, 29 Apr 2021 19:19:57 -0700 (PDT)
MIME-Version: 1.0
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
	<alpine.NEB.2.23.451.2104292200070.23508@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2104292200070.23508@panix1.panix.com>
Date: Thu, 29 Apr 2021 19:19:46 -0700
Message-ID: <CAJ1g4g_Zr6s9d2tfL3+DufE7xJgpWAnhhRZsR3TPQkfoSG6kkw@mail.gmail.com>
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QCAiV2hlbiB5b3UgZ2V0IGV2ZXJ5dGhpbmcsIHB1bGwgdGhlIGhhcmQgZHJpdmVzIG91dCBvZiB0
aGUgY29tcHV0ZXIgYW5kCnJlcGxhY2UgdGhlbSB3aXRoIHRoZSBsYW5rIGhhcmQgZHJpdmVzIHlv
dSBib3VnaHQuIFRoZW4geW91IHByb2JhYmx5IHdpbGwKaGF2ZSBhIHBsYXRmb3JtIG9uIHdoaWNo
IGxpbnV4IGNhbiBiZSBpbnN0YWxsZWQuIgoKVGhhdCB3aWxsIHN0aWxsIGxlYXZlIHlvdSB3aXRo
IHRoZSBiYXJyaWVyIG9mIHRoZSBVRUZJIHNldHRpbmdzIGlmIHlvdSB3YW50CnRvIGluc3RhbGwg
ZnJvbSBEVkQuIFRoaXMgY2FuIGJlIHN1YnN0YW50aWFsLiBJIHN0aWxsIGhhdmUgdHdvIGxhcHRv
cHMKYXdhaXRpbmcgc29tZSBleHBlcnRpc2UgSSBoYXZlIG5vdCBmb3VuZCBvbiB0aGUgd2ViIHRv
IGJ5cGFzcyB0aGlzIGJhcnJpZXIuCgpUaGVyZSBhcmUgcXVpdGUgYSBmZXcgcGxhY2VzIHRoYXQg
c2VsbCBjb21wdXRlcnMgd2l0aCBMaW51eCBwcmUtaW5zdGFsbGVkLgpTZWUgZS5nLiwgdGhpcyBs
aXN0OiA8aHR0cHM6Ly9saW51eHByZWxvYWRlZC5jb20vPgoKQmVzdCByZWdhcmRzLAoKUGF1bAot
LSAKW05vdGljZSBub3QgaW5jbHVkZWQgaW4gdGhlIGFib3ZlIG9yaWdpbmFsIG1lc3NhZ2U6ICBU
aGUgVS5TLiBOYXRpb25hbApTZWN1cml0eSBBZ2VuY3kgbmVpdGhlciBjb25maXJtcyBub3IgZGVu
aWVzIHRoYXQgaXQgaW50ZXJjZXB0ZWQgdGhpcwptZXNzYWdlLl0KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgwq9cXyjjg4QpXy/CrwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

