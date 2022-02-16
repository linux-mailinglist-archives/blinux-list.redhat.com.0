Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9C84B8CA5
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 16:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645026019;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G53ZGX0webdWd8MRPk50R+4Vv5PBlKKdQq2pcLc+RNg=;
	b=URvv5NHqUDS4FulwFdw98loBmHC9bkh5aEha94gPGHRKpBgsod3650wCBzH35iLaK1O6qP
	L4IWKw8awd8KoBLpPmKr9Fu325GstMRVLbbHVqGhS/LWaNiN6URamdFGqvmxmNtIWJ9crz
	+MweMWFzrxLnbN6/apevSqYyZddUPOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-_UlnQf8rOZuTeeoSeYjlaQ-1; Wed, 16 Feb 2022 10:40:15 -0500
X-MC-Unique: _UlnQf8rOZuTeeoSeYjlaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 602F98144E1;
	Wed, 16 Feb 2022 15:40:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D65F972FA6;
	Wed, 16 Feb 2022 15:40:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9A181806D2C;
	Wed, 16 Feb 2022 15:40:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GFVF1s019371 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 10:31:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C15E740E7F13; Wed, 16 Feb 2022 15:31:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD08C40E7F0A
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 15:31:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A504610665A0
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 15:31:15 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-244-GOx12PxaM7Wt8gC__sqyXQ-1; Wed, 16 Feb 2022 10:31:12 -0500
X-MC-Unique: GOx12PxaM7Wt8gC__sqyXQ-1
Received: by mail-qv1-f48.google.com with SMTP id p7so2515713qvk.11
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 07:31:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Ab1dyYPglZawU7yPW0m53RsQe6XswmeJDJHyskNbOQI=;
	b=L8/Weqf9Yw+6rNciwllKje3fcjctGo1hWaUrYqmsOjP3OFTo1/zacyQV/WXyQvPEN5
	eX9MZnIBb9BTnGOWp8tRLX9Fgs676jtHZ/+mC9WDTjg2hzq/tkYcxHDz7T0zc8m37I9J
	+ELPESCNFpXx0zWbfutIfbPeDtCX2vaZ4GnRxsShxoOPg++RsdJJ/Qk6/75XdneGen74
	fSFICO7yaH+8F1wRFoo0qN04hEK4hT9CrEoKodUrqeHQbImMeBqtVT+DPw+VdbD9upmN
	qIZYKgruN3M3Idj/QJTCI+6O6sXUxaJ0F1u6uo44OoLsdPggG3BaFj+rBcvD4Urwk8qt
	EKoQ==
X-Gm-Message-State: AOAM5307DghQautW2FwgQD1j+0ADAeUgBQvuEByxphe9P382K4x+ZykE
	bEKX82ZCvhgQTvmaQ81ZoAaaIJ5gdHlCbw==
X-Google-Smtp-Source: ABdhPJzIuJ/rTs8RT32lPdcItmx40JChgxDkxfM6CCBulzkPPxiHcNL46P+khQQ68kHTCiS1Gr7D6A==
X-Received: by 2002:a05:622a:1a9e:b0:2cd:3f59:3a70 with SMTP id
	s30-20020a05622a1a9e00b002cd3f593a70mr2365019qtc.590.1645025471316;
	Wed, 16 Feb 2022 07:31:11 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:614:8803:74:b729?
	([2601:192:4c80:1420:614:8803:74:b729])
	by smtp.gmail.com with ESMTPSA id
	e9sm22887364qtx.37.2022.02.16.07.31.10 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 16 Feb 2022 07:31:10 -0800 (PST)
Message-ID: <35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
Date: Wed, 16 Feb 2022 10:31:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
In-Reply-To: <c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RGViaWFuIGFsc28gc2hpcHMgYW4gaXNvIHdpdGggdGhlIG5vbmZyZWUgZmlybXdhcmU7IGxvb2sg
Zm9yIHRoZSAKInVub2ZmaWNpYWwiIHNldC7CoCBOb3Qgc3VyZcKgIHdoYXQncyBzbyAibm9uLW9m
ZmljaWFsIiBhYm91dCB0aGVtLCBzaW5jZSAKdGhleSdyZSBwYWNrYWdlZCBieSB0aGUgRGViaWFu
IGlzbyB0ZWFtLgoKCkRldnVhbidzIGxpa2UgRGViaWFuLCBidXQgaXQgaW5jbHVkZXMgdGhlIG5v
bi1mcmVlIGZpcm13YXJlIGluIGl0cyAKa2VybmVsLsKgIEl0IHNob3VsZCBpbnN0YWxsIGp1c3Qg
ZmluZS7CoCBEZXZ1YW4gaXMgZGViaWFuIHdpdGhvdXQgU3lzdGVtRCAKKHRoZSBpbml0aWFsaXph
dGlvbiBzeXN0ZW0gYW5kIHNlcnZpY2VzIG1hbmFnZXIgZm91bmQgaW4gbW9zdCBtb2Rlcm4gCmRp
c3Ryb3MgZXhjZXB0IFNsaW50KS7CoCBXaGF0IGJyYW5jaCBvZiBGZWRvcmEgZGlkIHlvdSBnZXQs
IHRoYXQncyBmcmVlIApzb2Z0d2FyZS1vbmx5P8KgIHRoZSBzdGFuZGFyZCByZWxlYXNlIGhhcyB0
aGUgbm9uLWZyZWUga2VybmVsIGJsb2JzIGZvciAKdGhpbmdzIGxpa2UgdGhlIG5vbi1mcmVlIElu
dGVsIHdpZmkgcmFkaW8uCgoKU2luY2Ugd2UncmUgdGFsa2luZyBhYm91dCB0aGUgYWNjZXNzaWJp
bGl0eSBvZiB2YXJpb3VzIGRpc3Ryb3MsIHdoYXQgb2YgClZvaWQgYW5kIEplbnRvbz/CoCBUaGUg
aW5zdGFsbGVyIGZvciBWb2lkIGlzbid0IGFjY2Vzc2libGUsIGJ1dCBhIGZyaWVuZCAKbWFuYWdl
ZCB0byBib290c3RyYXAgaXQgYW5kIG5vdyBoZSBwYWNrYWdlcyBmb3IgaXQuIEkgdGhpbmsgdGhl
cmUgYXJlIApzb21lIGZvbGssIGxpc3RlbmluZywgd2hvIG1heSBjaGltZSBpbiBhYm91dCB0aGUg
YWNjZXNzaWJpbGl0eSwgYnV0IApzdGVlcCBsZWFybmluZyBjdXJ2ZSwgb2YgdGhlaXIgZmF2b3Jp
dGUsIEplbnRvby4gSW4gY2FzZSBpdCBtZWFucyAKYW55dGhpbmcsIEplbnRvbyBoYXMgYSAicG9y
dHMgdHJlZSIsIGxpa2UgdGhlIEJTRC4gQmFzaWNhbGx5LCB5b3UgYnVpbGQgCm1vc3Qgb2YgdGhl
IHN5c3RlbSBmcm9tIHNvdXJjZXMuCgoKQ2hlZXJzLAoKCgpEYXZlwqAgSC4KCgoKT24gMi8xNi8y
MiAwNDo0MSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJcyBp
dCwgbGlrZSBEZWJpYW4sIG9ubHkgZnJlZSBzb2Z0d2FyZSwgb3IgZG8gdGhleSBhbHNvIHByb3Zp
ZGUgYSAKPiBub24tZnJlZSBJc28/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

