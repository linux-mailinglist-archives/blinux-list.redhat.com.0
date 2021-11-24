Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0869545B11C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 02:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637716946;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tC28L0zrGQEKxnkGZFC/icC5SWQ1i4HSThjO4udDKiE=;
	b=SXJOLzU53jl9Krzn/cT5SMFh5XK2iwCSXXTWfMBvDP1gofKFv5hxKM1/EwNXE8t/46Suj1
	puTUE71Avr/FUd1J87RA+EbZl1C+ToPHEgx9OeTo7bLQ8c0M8Yz0uoUY8qJslUL1l/QKNQ
	76fIaNfdie6eT4OeiU8f+oV0foJlYtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-414-d4073J-mMvuS531rtRbhSw-1; Tue, 23 Nov 2021 20:22:22 -0500
X-MC-Unique: d4073J-mMvuS531rtRbhSw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8AEEB81CCB8;
	Wed, 24 Nov 2021 01:22:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 744471059584;
	Wed, 24 Nov 2021 01:22:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5333E4A703;
	Wed, 24 Nov 2021 01:22:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AO1MD3p008803 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 20:22:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C96D42026D6A; Wed, 24 Nov 2021 01:22:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C48752026D69
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:22:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA811857D02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:22:10 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-238-5OeS-5XEP9mcWYfzNEPqxg-1; Tue, 23 Nov 2021 20:22:09 -0500
X-MC-Unique: 5OeS-5XEP9mcWYfzNEPqxg-1
Received: by mail-qk1-f180.google.com with SMTP id a11so1070658qkh.13
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:22:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=/1W1atMkkdhPBCf63MOBbbusm4W001geRmvJ7HMYdCw=;
	b=0PSN/Llod3R2So58gxQwbwRIFwiEFVChQuOnpd+IDYoVIQivZaHV8G9NR9ulbBcApC
	Uxb2fwP+79ueSwBW3UCGMishE67YT4RMghTxYFym8aO5TiUD6sYJFnVN08cmZk2gX1Et
	8lKyPtuf/A4+5Iwjl30pPE8zVt2AwXw26hbakFL8djdsr2F3UY0FRYri60sENGfunCyQ
	U8vguEF8sJs1jUqhX0E6rb1moCgRZl/W4O5SDEkvd6CTew+D9yUEWyoAprCTKSxfrary
	ciQSzQ/Lq4jnrI8mH5QF/PNnkwifXvywrqXyvprTQlWi/vM57+aqSqqzhRo1Lp5AEhkh
	K5mA==
X-Gm-Message-State: AOAM533oiImWRx5cELCVJg6zdRum7kzZybCPSgZaJ9ByeKce0q5YiwEd
	1amO9feU89FhGsnHlCNxI66W32sj8y2Lrw==
X-Google-Smtp-Source: ABdhPJzFdchvARRWe6fLkj1YkO2nCCz8kQg3iCuBuHXfnSSndsvZS7HJS5bp7ubeRnbuyks+y9qaiA==
X-Received: by 2002:a05:620a:1226:: with SMTP id
	v6mr1922690qkj.240.1637716928502; 
	Tue, 23 Nov 2021 17:22:08 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	t35sm7655450qtc.83.2021.11.23.17.22.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 17:22:08 -0800 (PST)
Message-ID: <5e0eb707-adb4-ef23-6398-4ffdd559d705@gmail.com>
Date: Tue, 23 Nov 2021 20:22:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
	<a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
	<9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
	<alpine.NEB.2.23.451.2111231652480.18399@panix1.panix.com>
	<d670e5e3-afac-2b50-e4d9-7e80bb283c9a@gmail.com>
In-Reply-To: <d670e5e3-afac-2b50-e4d9-7e80bb283c9a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF5YmUgaXQgb25seSBzaG93cyBjaXRpZXMgd2l0aCBpbnRlcm5hdGlvbmFsIGFycG9ydHM/CgoK
LURhdmUKCgoKT24gMTEvMjMvMjEgMjA6MTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gY2l0eSBsaXN0ZWQuwqAgU28gSSBoYWQgdG8gY2hvb3NlIGEgY2l0eSBm
b3VydHkgbWlsZXMgdG8gdGhlIG5vcnRoIG9mIAo+IHdoZXJlIEkgbGl2ZSwgYWx0aG91Z2ggbXkg
Y2l0eSBpcyBldmVuIGJpZ2dlciB0aGFuIHRoZSBvbmUgbGlzdGVkLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

