Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9181F4260D7
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651344;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XWETQSUgCjlQ6leI6jokSdskV5rpyUp3TVKAWGp47RA=;
	b=Or9HMBxqJlNXjaODNf7OWlFTf9keTZskLFZYj5P/MrTy9s8eMj0Ficqw08aedZzD7irvQv
	Lee/DPiwbiuQy0g7r2ANCjE+swPrOQkWNw1v2MBFE9JlR+ROXwRz65Bkly6P20hXW+ug9L
	19XWFP3ugb8tdNnx1WiEiiw1qGlrpaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-FGMw4YexMXKnVjUfnl9f_g-1; Thu, 07 Oct 2021 20:02:22 -0400
X-MC-Unique: FGMw4YexMXKnVjUfnl9f_g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74BB119067F4;
	Fri,  8 Oct 2021 00:01:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 537EB5FCB2;
	Fri,  8 Oct 2021 00:01:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8D574E58F;
	Fri,  8 Oct 2021 00:01:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19801gme024873 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:01:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0700C2026D46; Fri,  8 Oct 2021 00:01:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02EAB2026D69
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:01:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE04E8038E3
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:01:41 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-5ncmnlo8O5mkdTmBJRTUng-1; Thu, 07 Oct 2021 20:01:40 -0400
X-MC-Unique: 5ncmnlo8O5mkdTmBJRTUng-1
Received: by mail-qk1-f173.google.com with SMTP id b65so7761405qkc.13
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:01:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=gZ2Jm4st9bDZFbQLQo27rcNdweFFoIFcaGHnusoddhE=;
	b=5CRfjkFgTxJiXTwotCQJwA69+b5ibKIJ90knr91a3vnFraF1UXbMz3zecwG8gkMhox
	PTqqF1srp9usGA9JE8TGYYZsbsFYdTZPzt+5bV3g3Tn8lOITyeL6W2l0jgXFnJirTwJW
	HuYC3/w5y8amVDoGke9Om+BdHdAgoAxFeORGa9Lhe6fqOhhARVioRURMpm+Ge1ogg6s5
	PU03eOM2gzcAhL7n0GRwull4/QKr+sDl5MzAkMWHcPgHhmdIdbmnqnhwiwfmgO373CZr
	9gdH1y+CKN3/vvzFWbVPJ9W7Z6QOZuuusUtBmq7XZXCfa4CdXRpxXqYZQ8nqVGd2sKCs
	Fdfw==
X-Gm-Message-State: AOAM5303O4Zaur6i4GXNvUZKU/dZN7UQTBIJtQXrxb5bJGBiQRhklIzI
	lLGvdia7uV+e9VwhGMN9m2LpSiNfazBtXw==
X-Google-Smtp-Source: ABdhPJyUA+lfAodRZB4LOqlyjXaLveuIdLlb8GNouBTFIjdVo9C+iguCJnzJ1IMfvhNEo5UoDdTp+A==
X-Received: by 2002:a37:e93:: with SMTP id 141mr289478qko.132.1633651299433;
	Thu, 07 Oct 2021 17:01:39 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9f4f:c8b4:2dce:36f7?
	([2601:192:4c80:1420:9f4f:c8b4:2dce:36f7])
	by smtp.gmail.com with ESMTPSA id d18sm767290qkk.3.2021.10.07.17.01.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:01:39 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
	<F8ADAC94-B1EA-4382-87A2-11C2363242BF@gmail.com>
Message-ID: <01878e3f-894d-fcea-5d2e-703df8f93aa4@gmail.com>
Date: Thu, 7 Oct 2021 20:01:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <F8ADAC94-B1EA-4382-87A2-11C2363242BF@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnV0LCB0aGF0IHdhcyB3aGVuIE1pbnQgb2ZmZXJlZCBvbmx5IENpbm5hbW9uLsKgIE1pbnQgTWF0
ZSdzIGxheW91dCBpcwp2ZXJ5IG5pY2U7IHRha2UgYSBsb29rLsKgIE9uZSBjYXZpYXQ6wqAgWW91
IGhhdmUgdG8gdXNlIG9yY2EncyBtb3VzZQpmZWF0dXJlcyB0byByZWFkIGFuZCBhY3RpdmF0ZSB0
aGUgYnV0dG9ucyBvbiB0aGUgYm90dG9tIHBhbmVsLCBzdWNoIGFzCmJhdHRlcnkgYW5kIHdpZmkg
c3RhdHVzLsKgIFRoZXkncmUgb24gdGhlIGJvdHRvbSBwYW5lbCwgcmlnaHQgb2YgdGhlCm5vdGlm
aWNhdGlvbiBhcmVhLsKgIFlvdSBjYW4gdGFiIHRvIHRoZSBwYW5lbC4gQSBuaWNlIGZlYXR1cmUg
b2YgdGhlIG1lbnUKc3lzdGVtOsKgIGhpdCB0aGUgJ3N1cGVyOyBrZXkgYW5kIHN0YXJ0IHR5cGlu
Zy4gWW91J2xsIGdldCBhbiBpbmNyZW1lbnRhbApzZWFyY2ggb2YgYXBwbGljYXRpb24gbmFtZXMg
YW5kIGRlc2NyaXB0aW9ucywgYW5kIHBhZ2VzIGluIHRoZSBjb250cm9sCmNlbnRlciBndWkuCgoK
CkhUSCwKCgoKRGF2ZcKgIEguCgoKClJ1bm5pbmcgVHJpc3F1ZWwgR05VL0xpbnV4IG9uIGhpcyBz
aGlueSBuZXcgbGFwdG9wLsKgCgoKCk9uIDEwLzcvMjEgNzo1NiBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBtaW50IG1hdGU/Cj4gSSB0aG91Z2h0IG1pbnQg
aGFkIG5ldmVyIGJlZW4gd29ya2FibGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

