Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD944F5D6
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 01:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636851422;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tnu3LYSysSxm+GP/UO8pE/YH5G1PXxgTAWqffyXu2ug=;
	b=is9lSca0pI+yLT4UGPYbSNwPFtXu3ScqlV9zbqfY3cOtn8ETt8gPPY5C8RzN4s4476ZJ8K
	76cJjZOaPX5m71CP1GZI3vAtUAmV6xey/qdGe6MuLom2BqqtFb2Ja3DpGzFGIV4rarOcx2
	yfUkocIl7iywRQpeAxcMitINr53+NFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-fI-COJerMDmFUgS7AFamqg-1; Sat, 13 Nov 2021 19:56:59 -0500
X-MC-Unique: fI-COJerMDmFUgS7AFamqg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E5F815720;
	Sun, 14 Nov 2021 00:56:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88B0E10023B8;
	Sun, 14 Nov 2021 00:56:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34B35181A1CF;
	Sun, 14 Nov 2021 00:56:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AE0umOK009516 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 19:56:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AC189404727E; Sun, 14 Nov 2021 00:56:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A862A404727D
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 00:56:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F0A7100E658
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 00:56:48 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-381-GUkz9TQsOQqO2GarZQMnpw-1; Sat, 13 Nov 2021 19:56:45 -0500
X-MC-Unique: GUkz9TQsOQqO2GarZQMnpw-1
Received: by mail-qt1-f174.google.com with SMTP id t34so12120516qtc.7
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 16:56:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=/IBf7pm7vMh2F1zMufUT6gTmH5IZV28ihxh8fLw8ZRk=;
	b=1KxX5fPnCBeqCj9Oh3Wx9ERAgq2Lx33aRD65ioAuZoHcseH17AjiTfm3vLmmXMwp36
	62s98VWqeJFcplquD8zH1JkWGb7HvUzSotL53k+yqwY56H3215lcYBWpgXeOia0uToHS
	drJJIVAe98YS0rgGdRIPlS3C7+oI9Ns//uzH2zhGikBtM2vUT+36iRmdHq5x8lw/bmhc
	tXM1om9ZI29kuWgZG6LqKnfiZGnPe0z1GVlRQmWoE+ieP1p9QfXC5EVGvYS8HcVgpXXc
	Vpiecq10pPulbJxQAcQ6dJSRJb6ApTwxqDQU+ODN3FVZ4pt5Y8MvXsnev7rMBRjBS8yK
	om4w==
X-Gm-Message-State: AOAM532QOokDitHJBEiu/V8vIL01RAxIt5adzg8/0xVwwVLBn0ndzSUF
	97qlL2iz5T8sxN8E6d4kLexX3DXaEk+Lag==
X-Google-Smtp-Source: ABdhPJwpH24x1vWkYW+T3ugCnquYrA+Zne5Vqc8AGlQWSuhpEfePsEgXgk0wi0O0CWMBS8CvvG0drw==
X-Received: by 2002:a05:622a:1a14:: with SMTP id
	f20mr28997226qtb.294.1636851405100; 
	Sat, 13 Nov 2021 16:56:45 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id x6sm4956743qko.83.2021.11.13.16.56.44
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 16:56:44 -0800 (PST)
Message-ID: <ed697912-0e80-3ceb-3de4-528157bdd61a@gmail.com>
Date: Sat, 13 Nov 2021 19:56:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<Pine.LNX.4.64.2111131952300.2138967@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2111131952300.2138967@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R29vZCBmb3IgeW91IGFuZCBQaW5lO8KgIExPTC7CoCBOb3Qgc3VyZSBJIGtub3cgdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiAKUGluZSBhbmQgQWxwaW5lOyB0aGV5IGFyZSBpZGVudGljYWwgaW4gYWxs
IHJlc3BlY3RzIEkgaGF2ZSBlbmNvdW50ZXJlZCwgCmFueXdheS7CoCBNYXliZSBpdCdzIGEgcXVl
c3Rpb24gb2YgYnJhbmRzIG9yIGxpY2Vuc2luZz/CoCBFbG0gaXMgYWxzbyAKZ29vZCwgYXNzdW1p
bmcgaXQncyBzdGlsbCBhcm91bmQuCgoKLURhdmXCoCAtCgoKCk9uIDExLzEzLzIxIDE5OjU0LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IHVzaW5nIHBpbmUgcmln
aHQgbm93IHRvIGNyZWF0ZSB0aGlzIGVtYWlsLMKgIGFuZCByZWNvbW1lbmQgaXQgdmVyeSBtdWNo
IAo+IGluZGVlZC4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

