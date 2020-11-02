Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8188C2A2A25
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 12:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604318264;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P2qS4BwMflyN/R5O1NFd0BzGpopgKCYrn7alyRWpJjk=;
	b=dH2+JsbkFVsJwNrHqg1YXZ1MvS0/N5wxrubMAmkOfFzJQC4gZ50Nz7RPXWalGl09FFWH05
	UDe2e7GbGORKH8tSYQXLgLFSri9RNWCZmcDZ1mdVHTjs+zMjNU7LeZJHOxNeJT62Qwgl5r
	6jDct9dp3mhbhLCuWSPqlgQMNwzHTPU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-Tdldwu3YOSGlpCi5X8g5Og-1; Mon, 02 Nov 2020 06:57:42 -0500
X-MC-Unique: Tdldwu3YOSGlpCi5X8g5Og-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E570104D2FB;
	Mon,  2 Nov 2020 11:57:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 445745577F;
	Mon,  2 Nov 2020 11:57:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 030E88C7B3;
	Mon,  2 Nov 2020 11:57:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2BvCha019884 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Nov 2020 06:57:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A8578110FBFE; Mon,  2 Nov 2020 11:57:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A44DE110FBF3
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:57:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35217183124F
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:56:52 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
	[209.85.218.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-155-ak3pCV-EMYi3xVH6Yahp_g-1; Mon, 02 Nov 2020 06:56:50 -0500
X-MC-Unique: ak3pCV-EMYi3xVH6Yahp_g-1
Received: by mail-ej1-f46.google.com with SMTP id za3so18505839ejb.5
	for <blinux-list@redhat.com>; Mon, 02 Nov 2020 03:56:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=I+s43xcy/jEZCE/YFHh3sZGa034EW03j4vcI44jS7z4=;
	b=AfX7VAlZQB4j4kGjegnuoW7WKP659afcKHgwRR0/QqO05Kp8WQBrWnjXV9kSudTvXz
	gSlRBIvl0wyxHZIdS4woWLTV2e0lLrBuAOxGGRBtRZcNk9sAzWlCVVtg+EosvhxTsDdc
	WZHySxcwYo+WFRk2l+ecsc5CeZvt/mB1/jRaEgg3roAFtbP3nNe/hSDUbbZmLp1hJZPx
	T9pebrkSweJxC4G0xTu6wPz1LFa0ercWCDu+iJm8x0d8JbnnCWL1E1mubVdSGbmff7SS
	U4GXqxsC9TgrEHNDgUO0gMr3EjpNsmNghUk57vQO0KKNW2qbAubo9FBefalDQ4ai9Mwq
	7Ftw==
X-Gm-Message-State: AOAM533C9UsMl5X038eVTS4hzpuGFNXh3pwu4eaXBNPmPehhSVtUoTpg
	PA8AUE5rGHp0bnQZCmhdxCD/Y2mE7Dsi+lbUn7Y=
X-Google-Smtp-Source: ABdhPJwGLVR96G4GUjBcxLYFGeRJ8aIlLU5TapRutNtS6pluNbwui9QEeaDsIW9Sd6ZqNqryP6ee6w==
X-Received: by 2002:a17:906:4306:: with SMTP id
	j6mr15461177ejm.523.1604317409502; 
	Mon, 02 Nov 2020 03:43:29 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id m27sm4128774ejg.3.2020.11.02.03.43.28
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Nov 2020 03:43:28 -0800 (PST)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: Christian Schoepplein <chris@schoeppi.net>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
	<e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
	<28abae5f-a391-458a-fb64-44a90ad88b51@gmail.com>
	<54748060-3bae-cafe-6fde-16406afcf7ce@schoeppi.net>
Message-ID: <44cec558-13f3-ac4b-eb35-e46ee3a28365@gmail.com>
Date: Mon, 2 Nov 2020 14:43:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <54748060-3bae-cafe-6fde-16406afcf7ce@schoeppi.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MDIuMTEuMjAyMCAxNDoyNywgQ2hyaXN0aWFuIFNjaG9lcHBsZWluIHZpYSBvcmNhLWxpc3Qg0L/Q
uNGI0LXRgjoKPiBISSBBbGV4YW5kZXIsIApoZWxsbywgU2Nob2VwcC4KCj4gQW0gMDIuMTEuMjAy
MCB1bSAxMjowNyBzY2hyaWViIEFsZXhhbmRlciBFcGFuZXNobmlrb3Y6Cj4+IGluc3RhbGxhdGlv
biBpc28gaGFzbid0IHN1cHBvcnRlZCBub3Igc3BlZWNoIG5laXRoZXIgYnJhaWxsZSB0aWwgdGhp
cyAKPj4gZGF5Lgo+Cj4gVGhhbmtzLCB0aGVuIEkgd2FzIHdyb25nIGFuZCB1bmRlcnN0b29kIHRo
ZSBXaWtpIG5vdCBjb3JlY3RseSA6LSguCj4KPj4gaSB1bmRlcnN0YW5kIHRoYXQgYmVlcCB3b3Vs
ZCBiZSBoZWxwZnVsLiBidXQgdW5mb3J0dW5hdGVseSBpIGNhbid0IGRvIAo+PiB0aGF0LiB0aGUg
ZmFjdCBpcyB0aGF0IGFyY2ggSVNPIHVzZXMgdHdvIGJvb3Rsb2FkZXJzLiBzeXNsaW51eCBmb3Ig
Cj4+IGxlZ2FjeSBiaW9zIGFuZCBzeXN0ZW1kLWJvb3QgZm9yIGVmaS4gc3lzdGVtZC1ib290IGRv
ZXMgbm90IHN1cHBvcnQgCj4+IGJlZXBzLiBzbyBpIGRlY2lkZWQgdG8gbm90IGltcGxlbWVudCB0
aGlzIGZlYXR1cmUuCj4KPiBPSywgdGhhbmtzLCB1bmRlcnN0b29kLiBEYW1uIHN5c3RlbWQsIHRo
aXMgdGhpbmcgaXMgY2F1c2luZyB0cm91YmxlIAo+IHJlZ2FyZGluZyBhY2Nlc3NpYmlsaXR5IGFs
bCB0aGUgdGltZSA6LSguCj4KSSBkb24ndCB0aGluayBpdCdzIHdvcnRoIHNheWluZyB0aGF0LiBJ
IGRvIG5vdCBrbm93IG9mIGFueSBwcm9ibGVtIHdpdGggCnRoZSBhY2Nlc3NpYmlsaXR5IGNhdXNl
ZCBieSB0aGUgc3lzdGVtZC4gZXZlbiB0aGlzIGluY29udmVuaWVuY2UgaXMgCmNhdXNlZCByYXRo
ZXIgYnkgdGhlIG1pbmltYWxpc20gb2YgdGhlIGJvb3Rsb2FkZXIuCj4gQ2hlZXJzLAo+Cj4gwqAg
U2Nob2VwcAoKLS0gClNpbmNlcmVseSwgQWxleGFuZGVyLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

