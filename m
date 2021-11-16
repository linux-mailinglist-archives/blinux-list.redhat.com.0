Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D531B452867
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 04:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637032603;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ps3ZzzjIHqx784EyUg05o5wDtV0DHF9mR8Qcu75avZs=;
	b=VWL010cFNCH9Ft+icL7yaWyxx5KXi/P0UnjfF7MlLOcQgZ1MIG5WdKtSG6ADCz2rufzWW9
	TPCCtjGipeX1QjHfhN/B753h7ziQ4kGIAHW5GVB526BxM5Xl3H3spoCUWy+Ml2RbXFqWmB
	DzAwSkurUPESNGXpIg74r1LcVtGfRqY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-fjhErubLNpexPnIMB2x9dg-1; Mon, 15 Nov 2021 22:16:39 -0500
X-MC-Unique: fjhErubLNpexPnIMB2x9dg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5785102C8CB;
	Tue, 16 Nov 2021 03:16:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C7625C1A1;
	Tue, 16 Nov 2021 03:16:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC8294A703;
	Tue, 16 Nov 2021 03:16:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG3GSTl015282 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 22:16:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD6FA2026D2E; Tue, 16 Nov 2021 03:16:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D890F2026D65
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:16:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22D931066559
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:16:23 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-276-adS2-uD_MVy_9Mcr4co1Rw-1; Mon, 15 Nov 2021 22:16:21 -0500
X-MC-Unique: adS2-uD_MVy_9Mcr4co1Rw-1
Received: by mail-qk1-f169.google.com with SMTP id q64so8424677qkd.5
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 19:16:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=41V3pf1ExImpmFlupo6ZwpsE7Qw2GPvKA/I2TgeO53w=;
	b=19hcNc1NEVh0FtpLeIT6WUWXto6wRGMRn/QZYETm52wAIRQGS4wgL11IQcTAB5cRPZ
	7CzwsVXxtPPMetv5B7AnlRsMluHaij8Cdl2UfLQTOvJvFDK7BLKNUTqK5dAwMl8Rf8jF
	ZwTfdLMSlE2VobResYur6lYsC6JoTgWBuiuXnwJPMD6ha7G5vvHs1DhEYok40T1dZoB2
	DuiM8bqr47tWwwWm0rheMLSsbA7yypGKHZUy3922govkF2V+xBcuGnprpLOZYfa7A/5/
	6GngoA0ln1QRDQ70jIte554aS9lWgPOI9C/NMyIfOKjwdBYq1AZv9zB2GeWojPYP80/i
	nnIQ==
X-Gm-Message-State: AOAM532zbADA1hXYUv6r1NFK1Wk/HwfnhIWNeyt32PpfUeMkPYaXXEGg
	6K+xEFqq7vR+fr55v3hRLgSXclkRyrD0zcgiL4uB1NKN
X-Google-Smtp-Source: ABdhPJwNEgNPgCWlGW1KLsUWwjJRRtlLr8X1fua85LEkT/fNxfnGbMch3kKFnP7wrVmxsKwb3zu++Pd7IsnhfTqaHVI=
X-Received: by 2002:a37:620d:: with SMTP id w13mr3574576qkb.44.1637032580617; 
	Mon, 15 Nov 2021 19:16:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Mon, 15 Nov 2021 19:16:20
	-0800 (PST)
In-Reply-To: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
Date: Tue, 16 Nov 2021 03:16:20 +0000
Message-ID: <CAO2sX32xKHKBjW6vvwOsbHcae7QDkPU-B6e=rDL=07UodjyTaQ@mail.gmail.com>
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AG3GSTl015282
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

VGVzc2VyYWN0IGlzIHRoZSBkb21pbmFudCBDTEkgT0NSIHNvbHV0aW9uLCB3aXRoIGN1bmVpZm9y
bSBiZWluZwphbm90aGVyIGFuZCBMSU9TIHByb3ZpZGluZyBhIEdVSSBmcm9udGVuZCB0byBib3Ro
LgoKT24gMTEvMTYvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IE9rYXkgZnJpZW5kcywKPgo+IGFmdGVyIHRocmVl
IHdlZWtzIG9mIHVzaW5nIFNsaW50LCBJIGFtIG5vdyBmaW5kaW5nIG15c2VsZiB1c2luZyBsaW51
eAo+IG1vcmUgYW5kIG1vcmUuwqAgSSBwcmFjdGljYWxseSBjb25maWd1cmVkIGFsbCBvZiBteSBl
bWFpbCBib3hlcyB0byB3b3JrCj4gb24gbGludXguIEkgYWxzbyBhZGRlZCBteSBkcm9wYm94IHRv
IGxpbnV4IGFuZCBzZXR1cCBteSB3aGF0c2FwcCB3ZWIuCj4KPiBOb3cgSSBuZWVkIGEgZ29vZCBh
Y2Nlc3NpYmxlIG9jciBwYWNrYWdlLCBwcmVmZXJhYmx5IG11bHRpLWxpbmd1YWwgd2hpY2gKPiBj
YW4gZG8gQXJhYmljLCBIZWJyZXcgYW5kIEZyZW5jaCBiZXNpZGVzIEVuZ2xpc2guIEFtIEkgYmVp
bmcgdG9vCj4gZGVtYW5kaW5nPyBEb2VzIHN1Y2ggYSBMbGludXggcGFja2FnZSBleGlzdD8KPgo+
IEkgaGF2ZSBhIHRlbiB5ZWFycyBvbGQgRXBzb24gc2Nhbm5lciB3aGljaCBJIHJlYWxseSBsaWtl
LiBVbmZvcnR1bmF0ZWx5LAo+IHdpbmRvd3MgdGVuIG5vIGxvbmdlciBzdXBwb3J0cyB0aGlzIHNj
YW5uZXIuIEkgaG9wZSBpdCB3b3VsZCBydW4gZmluZQo+IHdpdGggTGludXguwqAgSSBjb3VsZCBu
b3QgdHJ5IGl0IGJlY2F1c2UgSSBoYXZlIG5vIE9DUiBwYWNrYWdlIHJ1bm5pbmcgb24KPiBteSBM
aW51eCBEZXNrdG9wLgo+Cj4gSWYgeW91IGd1eXMgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMsIHBsZWFz
ZSBoZWxwLgo+Cj4KPiBDaGVlcnMsCj4KPiBJYnJhaGltCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

